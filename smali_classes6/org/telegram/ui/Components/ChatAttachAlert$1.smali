.class Lorg/telegram/ui/Components/ChatAttachAlert$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private botButtonAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$startCommand:Ljava/lang/String;

.field final synthetic val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;


# direct methods
.method public static synthetic $r8$lambda$-BAvSto-9gT3kO-ZUkaxjXxEz9E(Lorg/telegram/ui/Components/ChatAttachAlert$1;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppSwitchInlineQuery$3(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1_6X4phzPMvT2pCX-_VVxPFIKgA(Lorg/telegram/ui/Components/ChatAttachAlert$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onSetupMainButton$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTIvLniTaCe3p_2yrPc-VKG9QMo(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppOpenInvoice$2(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lGleu6mWbuiyR4dI3yQL-Ih8EEk(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onCloseRequested$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wsvANjNzXFND_wb72TMB5FrTQoY(Lorg/telegram/ui/Components/ChatAttachAlert$1;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppSetActionBarColor$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$startCommand:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlert$1;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 352
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ChatAttachAlert$1;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 352
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private static synthetic lambda$onCloseRequested$0(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 371
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSetupMainButton$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 503
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/16 v1, 0x24

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1102(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method

.method private static synthetic lambda$onWebAppOpenInvoice$2(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    .line 411
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p3, v0, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 415
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->getWebViewContainer()Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onWebAppSetActionBarColor$1(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    return-void
.end method

.method private synthetic lambda$onWebAppSwitchInlineQuery$3(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 0

    const/4 p4, 0x1

    if-eqz p9, :cond_0

    const/4 p1, 0x0

    .line 455
    invoke-interface {p9, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return p4

    :cond_0
    const/4 p6, 0x0

    .line 459
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide p5, p5, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 461
    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    const-string p8, "scrollToTopOnResume"

    .line 462
    invoke-virtual {p7, p8, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    invoke-static {p5, p6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p8

    if-eqz p8, :cond_1

    .line 464
    invoke-static {p5, p6}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p5

    const-string p6, "enc_id"

    invoke-virtual {p7, p6, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {p5, p6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p8

    if-eqz p8, :cond_2

    const-string p8, "user_id"

    .line 466
    invoke-virtual {p7, p8, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    neg-long p5, p5

    const-string p8, "chat_id"

    .line 468
    invoke-virtual {p7, p8, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 470
    :goto_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "@"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "inline_query_input"

    invoke-virtual {p7, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 473
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p7, p2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 474
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 475
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    .line 477
    new-instance p1, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    :cond_3
    return p4
.end method


# virtual methods
.method public isClipboardAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCloseRequested(Ljava/lang/Runnable;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-eq v0, v1, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    .line 369
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic onSendWebViewData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate$-CC;->$default$onSendWebViewData(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;Ljava/lang/String;)V

    return-void
.end method

.method public onSetBackButtonVisible(Z)V
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public onSetupMainButton(ZZLjava/lang/String;IIZ)V
    .locals 5

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-ne v0, v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$startCommand:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 492
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->getMainButtonRippleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p2

    const-wide/16 p3, 0xfa

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p2, p1, :cond_4

    .line 496
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$602(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    .line 498
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 499
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    aput v3, p2, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    aput v4, p2, v3

    .line 501
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    .line 502
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;Z)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 547
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p1

    if-eq p1, p6, :cond_9

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p6, :cond_5

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    if-eqz p6, :cond_7

    move p5, v2

    goto :goto_2

    :cond_7
    move p5, p2

    .line 555
    :goto_2
    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_8

    goto :goto_3

    :cond_8
    move v2, p2

    .line 556
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 557
    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$1$2;

    invoke-direct {p2, p0, p6}, Lorg/telegram/ui/Components/ChatAttachAlert$1$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;Z)V

    .line 558
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    :goto_4
    return-void
.end method

.method public onWebAppExpand()V
    .locals 2

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    if-eq v0, v1, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->canExpandByRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->scrollToTop()V

    :cond_1
    return-void
.end method

.method public onWebAppOpenInvoice(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 396
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v2, :cond_0

    .line 397
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 398
    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 399
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {v0, p2, p1, v1}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 400
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_1

    .line 401
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    invoke-direct {v0, p2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 405
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->scrollToTop()V

    .line 407
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 408
    new-instance p2, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 409
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 410
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 418
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_2
    return-void
.end method

.method public synthetic onWebAppReady()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate$-CC;->$default$onWebAppReady(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public onWebAppSetActionBarColor(I)V
    .locals 4

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 379
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$100(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 381
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 382
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onWebAppSetBackgroundColor(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setCustomBackground(I)V

    return-void
.end method

.method public onWebAppSetupClosingBehavior(Z)V
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout;->setNeedCloseConfirmation(Z)V

    return-void
.end method

.method public onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 435
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 436
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 437
    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto :goto_0

    .line 441
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xe

    const-string v3, "dialogsType"

    .line 442
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "onlySelect"

    .line 443
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "groups"

    .line 445
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowGroups"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "users"

    .line 446
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowUsers"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "channels"

    .line 447
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowChannels"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "bots"

    .line 448
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "allowBots"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    new-instance p3, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p3, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 451
    new-instance v0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 452
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V

    invoke-virtual {p3, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 481
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 482
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_0
    return-void
.end method
