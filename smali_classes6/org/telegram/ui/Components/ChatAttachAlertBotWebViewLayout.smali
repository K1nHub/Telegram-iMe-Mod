.class public Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertBotWebViewLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;,
        Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    }
.end annotation


# instance fields
.field private botId:J

.field private currentAccount:I

.field private customBackground:I

.field private destroyed:Z

.field private hasCustomBackground:Z

.field private ignoreLayout:Z

.field private ignoreMeasure:Z

.field private isBotButtonAvailable:Z

.field private measureOffsetY:I

.field private needCloseConfirmation:Z

.field private needReload:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private peerId:J

.field private pollRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

.field private queryId:J

.field private replyToMsgId:I

.field private settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private silent:Z

.field private startCommand:Ljava/lang/String;

.field private swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

.field private webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

.field private webViewScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$2DwPsXmlM6TagboR4OKgNC3HH0o(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4hmK9r-pqUc3t9joRY8hx2uoDcY(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$requestWebView$12(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9qJK9Ol2cn1HLzwPYpi4Mn4pYd8(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$onPanTransitionStart$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DifkSy1yhePA7TAGB_GOM8iLSwQ(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$J_nhjWz33Hc-TogKNo8BuvTh2Ow(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$MaEciWFTn3RmzR1cv7scfxNR0E4(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sr1ZGac3eQaz7dSfqORiPxQPnHQ(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$6(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dZfIj9ZPQlwlPRs-P5cczkGSujk(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$onCheckDismissByUser$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdBIpL9Z531M0q7itG0DNgsmLys(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gXuuo-Yr-__pUelAXabRaKRxIEA(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$requestWebView$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$isAgd_SrR5FRsS68_xjPO2ZbiNU(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$onShown$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$j20tdQ-x-gvQqC99MPlir4GGgl4(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n5_uDwuQBD8umKGORROi3iMGMQg(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$oj7adQj60Ej6-5oO9cR4xqlmtTs(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$8(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxTTDAWdx4OxYpHQIVXeExtXqdo(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->lambda$new$4()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 87
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    .line 127
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 128
    sget v0, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_settings:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewSettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewReloadPage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_delete_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewDeleteBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 170
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$2;

    const-string v0, "dialogBackground"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, p0, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    .line 182
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollListener(Ljava/lang/Runnable;)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollEndListener(Ljava/lang/Runnable;)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x54

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->setWebViewProgressListener(Landroidx/core/util/Consumer;)V

    .line 223
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/BotWebViewContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->botId:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)I
    .locals 0

    .line 52
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)I
    .locals 0

    .line 52
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->measureOffsetY:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 110
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 6

    .line 88
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;-><init>()V

    .line 90
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 91
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->peerId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 92
    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->queryId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->query_id:J

    .line 93
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->silent:Z

    .line 94
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    if-eqz v1, :cond_0

    .line 95
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to_msg_id:I

    .line 96
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    .line 99
    :cond_0
    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->peerId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 100
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->peerId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_1

    .line 104
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 105
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    .line 110
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight()V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$6(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

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

.method private synthetic lambda$new$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

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

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgressAnimated(F)V

    .line 207
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 208
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 209
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 219
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$onCheckDismissByUser$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onPanTransitionStart$10(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 328
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setScrollY(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onShown$11()V
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->restoreButtonData()V

    return-void
.end method

.method private synthetic lambda$requestWebView$12(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 481
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v0, :cond_0

    .line 482
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    .line 483
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->queryId:J

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setWebView(Landroid/webkit/WebView;)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 480
    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestEnableKeyboard()V
    .locals 3

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 387
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/16 v2, 0x14

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 389
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 395
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public canExpandByRequest()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 622
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 623
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 625
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->queryId:J

    cmp-long p3, v0, p1

    if-nez p3, :cond_1

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->destroyWebView()V

    const/4 p1, 0x1

    .line 627
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->needReload:Z

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_0

    .line 630
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    const-string p2, "dialogBackground"

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->updateFlickerBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disallowSwipeOffsetAnimation()V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 2

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCustomBackground()I
    .locals 1

    .line 271
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->customBackground:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 544
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->getListTopPadding()I

    move-result v0

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getStartCommand()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->startCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewContainer()Lorg/telegram/ui/Components/BotWebViewContainer;
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    return-object v0
.end method

.method hasCustomBackground()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->hasCustomBackground:Z

    return v0
.end method

.method public isBotButtonAvailable()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return v0
.end method

.method public needReload()Z
    .locals 2

    .line 528
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->needReload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 529
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->needReload:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onBackPressed()Z
    .locals 2

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 579
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    return v1
.end method

.method public onCheckDismissByUser()Z
    .locals 4

    .line 237
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->needCloseConfirmation:Z

    if-eqz v0, :cond_1

    .line 239
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 243
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    .line 245
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    .line 246
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 247
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 250
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "dialogTextRed"

    .line 251
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 497
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 498
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 502
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->destroyWebView()V

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onDismissWithTouchOutside()Z
    .locals 1

    .line 232
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    const/4 v0, 0x0

    return v0
.end method

.method onHidden()V
    .locals 2

    .line 400
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onHide()V
    .locals 2

    .line 513
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "windowBackgroundWhite"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->hasUserPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->destroyWebView()V

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->needReload:Z

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onPanTransitionEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    .line 352
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setViewPortByMeasureSuppressed(Z)V

    .line 354
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->requestLayout()V

    return-void
.end method

.method public onPanTransitionStart(ZI)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->setViewPortByMeasureSuppressed(Z)V

    .line 305
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v1

    add-float/2addr p1, v1

    .line 306
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 311
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 312
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 313
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    if-nez p1, :cond_3

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    .line 322
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p2

    add-int/2addr v1, p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p1, p2, v2

    aput v1, p2, v0

    .line 325
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    .line 326
    sget-object p2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$5;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 2

    .line 551
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 554
    :cond_0
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    .line 556
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    const/4 p2, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 561
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 562
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setOffsetY(F)V

    .line 564
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    :cond_2
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 365
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->setParentActivity(Landroid/app/Activity;)V

    .line 368
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->isBackButtonVisible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    :cond_2
    return-void
.end method

.method onShown()V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotWebViewContainer;->isPageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 382
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 585
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 588
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public requestWebView(IJJZILjava/lang/String;)V
    .locals 3

    .line 427
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    .line 428
    iput-wide p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->peerId:J

    .line 429
    iput-wide p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->botId:J

    .line 430
    iput-boolean p6, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->silent:Z

    .line 431
    iput p7, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    .line 432
    iput-object p8, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->startCommand:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1, p4, p5, v1}, Lorg/telegram/ui/Components/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 437
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 438
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 439
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 440
    iput-boolean p6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->silent:Z

    const-string p4, "android"

    .line 441
    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    const-wide/16 p4, 0x0

    cmp-long p6, p2, p4

    if-gez p6, :cond_0

    .line 444
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    neg-long p2, p2

    invoke-virtual {p4, p2, p3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 446
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p2, :cond_0

    .line 448
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 449
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit16 p2, p2, 0x2000

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_0
    if-eqz p8, :cond_1

    .line 454
    iput-object p8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->start_param:Ljava/lang/String;

    .line 455
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_1
    if-eqz p7, :cond_2

    .line 459
    iput p7, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to_msg_id:I

    .line 460
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 464
    :cond_2
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "bg_color"

    const-string p4, "dialogBackground"

    .line 465
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "secondary_bg_color"

    const-string p4, "windowBackgroundGray"

    .line 466
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "text_color"

    const-string p4, "windowBackgroundWhiteBlackText"

    .line 467
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "hint_color"

    const-string p4, "windowBackgroundWhiteHintText"

    .line 468
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "link_color"

    const-string p4, "windowBackgroundWhiteLinkText"

    .line 469
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "button_color"

    const-string p4, "featuredStickers_addButton"

    .line 470
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "button_text_color"

    const-string p4, "featuredStickers_buttonText"

    .line 471
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 474
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 475
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 477
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 480
    :goto_0
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;I)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 491
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public scrollToTop()V
    .locals 3

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    return-void
.end method

.method public setCustomBackground(I)V
    .locals 0

    .line 260
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->customBackground:I

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->hasCustomBackground:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V
    .locals 1

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/Components/BotWebViewContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->setDelegate(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public setMeasureOffsetY(I)V
    .locals 0

    .line 279
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->measureOffsetY:I

    .line 280
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setNeedCloseConfirmation(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->needCloseConfirmation:Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 414
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method shouldHideBottomButtons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
