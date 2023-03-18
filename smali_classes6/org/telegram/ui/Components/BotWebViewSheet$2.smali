.class Lorg/telegram/ui/Components/BotWebViewSheet$2;
.super Ljava/lang/Object;
.source "BotWebViewSheet.java"

# interfaces
.implements Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sentWebViewData:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$4X_7LeGGbhJcC3fITLNB1lOyNvg(Lorg/telegram/ui/Components/BotWebViewSheet$2;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet$2;->lambda$onWebAppOpenInvoice$3(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-YOQ3_lReMoTHksIocZhYnXw1A(Lorg/telegram/ui/Components/BotWebViewSheet$2;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet$2;->lambda$onWebAppSetActionBarColor$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A50YtCFtCCGPNsUB8swvhRRFBsw(Lorg/telegram/ui/Components/BotWebViewSheet$2;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewSheet$2;->lambda$onWebAppSetBackgroundColor$2(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwS6QxvT-PM1YgaUmQQQvwEeb4g(Lorg/telegram/ui/Components/BotWebViewSheet$2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewSheet$2;->lambda$onSendWebViewData$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o2Q8TDLAYilS4YmXnMM82hV8--I(Lorg/telegram/ui/Components/BotWebViewSheet$2;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/BotWebViewSheet$2;->lambda$onWebAppSwitchInlineQuery$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSendWebViewData$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 231
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 232
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 234
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    new-instance p2, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onWebAppOpenInvoice$3(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    .line 290
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p3, v0, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 294
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$2000(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onWebAppSetActionBarColor$1(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$902(Lorg/telegram/ui/Components/BotWebViewSheet;I)I

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onWebAppSetBackgroundColor$2(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onWebAppSwitchInlineQuery$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    const/4 p4, 0x0

    .line 333
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide p4, p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 335
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    const-string p7, "scrollToTopOnResume"

    const/4 p8, 0x1

    .line 336
    invoke-virtual {p6, p7, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 338
    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p4

    const-string p5, "enc_id"

    invoke-virtual {p6, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p7

    if-eqz p7, :cond_1

    const-string p7, "user_id"

    .line 340
    invoke-virtual {p6, p7, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    neg-long p4, p4

    const-string p7, "chat_id"

    .line 342
    invoke-virtual {p6, p7, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 344
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "@"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "inline_query_input"

    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 348
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p6, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 349
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 351
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2, p8}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$002(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    .line 352
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1900(Lorg/telegram/ui/Components/BotWebViewSheet;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 354
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$2000(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->destroyWebView()V

    .line 355
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    sget p4, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    sget p4, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 357
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$2101(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    .line 359
    new-instance p2, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, p8}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    :cond_2
    return p8
.end method


# virtual methods
.method public synthetic isClipboardAvailable()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate$-CC;->$default$isClipboardAvailable(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)Z

    move-result v0

    return v0
.end method

.method public onCloseRequested(Ljava/lang/Runnable;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendWebViewData(Ljava/lang/String;)V
    .locals 5

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$500(Lorg/telegram/ui/Components/BotWebViewSheet;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->sentWebViewData:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->sentWebViewData:Z

    .line 225
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;-><init>()V

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$600(Lorg/telegram/ui/Components/BotWebViewSheet;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 227
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->random_id:J

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$800(Lorg/telegram/ui/Components/BotWebViewSheet;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->button_text:Ljava/lang/String;

    .line 229
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->data:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetBackButtonVisible(Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1300(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

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
    .locals 3

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 372
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->getMainButtonRippleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$200(Lorg/telegram/ui/Components/BotWebViewSheet;)Z

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    .line 376
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$202(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    .line 377
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 379
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 380
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x96

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$2$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$1;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;Z)V

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 392
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1800(Lorg/telegram/ui/Components/BotWebViewSheet;)Z

    move-result p1

    if-eq p6, p1, :cond_7

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1, p6}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1802(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p6, :cond_3

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    if-eqz p6, :cond_5

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const p3, 0x3dcccccd    # 0.1f

    .line 401
    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_6

    goto :goto_2

    :cond_6
    const p4, 0x3dcccccd    # 0.1f

    .line 402
    :goto_2
    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 403
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BotWebViewSheet$2$2;

    invoke-direct {p2, p0, p6}, Lorg/telegram/ui/Components/BotWebViewSheet$2$2;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;Z)V

    .line 404
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method

.method public onWebAppExpand()V
    .locals 3

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    return-void
.end method

.method public onWebAppOpenInvoice(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 275
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v1, :cond_0

    .line 276
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 278
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {v1, p2, p1, v0}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 279
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_1

    .line 280
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    invoke-direct {v1, p2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    neg-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    .line 286
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 287
    new-instance p2, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 288
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 289
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/PaymentFormActivity;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 297
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_2
    return-void
.end method

.method public synthetic onWebAppReady()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate$-CC;->$default$onWebAppReady(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public onWebAppSetActionBarColor(Ljava/lang/String;)V
    .locals 4

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$900(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result v0

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1000(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 243
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 244
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
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
    .locals 4

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1102(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 257
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 258
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onWebAppSetupClosingBehavior(Z)V
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$402(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    return-void
.end method

.method public onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    .line 311
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/LaunchActivity;

    if-eqz p3, :cond_1

    .line 313
    iget-object p3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p3}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    .line 314
    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    .line 315
    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss()V

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0xe

    const-string v2, "dialogsType"

    .line 321
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string v2, "onlySelect"

    .line 322
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "groups"

    .line 324
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowGroups"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "users"

    .line 325
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowUsers"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "channels"

    .line 326
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowChannels"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "bots"

    .line 327
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "allowBots"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    new-instance p3, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p3, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 331
    new-instance v0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 332
    new-instance v1, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V

    invoke-virtual {p3, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 364
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 365
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
