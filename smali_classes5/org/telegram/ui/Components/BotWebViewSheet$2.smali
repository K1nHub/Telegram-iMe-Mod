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

.method constructor <init>(Lorg/telegram/ui/Components/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSendWebViewData$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 223
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 224
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 226
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    new-instance p2, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onWebAppOpenInvoice$3(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    .line 282
    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p3, v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 286
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1900(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/BotWebViewContainer;

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

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$902(Lorg/telegram/ui/Components/BotWebViewSheet;I)I

    .line 239
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onWebAppSetBackgroundColor$2(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 252
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

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
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

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendWebViewData(Ljava/lang/String;)V
    .locals 5

    .line 212
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

    .line 215
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->sentWebViewData:Z

    .line 217
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;-><init>()V

    .line 218
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

    .line 219
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->random_id:J

    .line 220
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$800(Lorg/telegram/ui/Components/BotWebViewSheet;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->button_text:Ljava/lang/String;

    .line 221
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendWebViewData;->data:Ljava/lang/String;

    .line 222
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

    .line 260
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

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 304
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p4}, Lorg/telegram/ui/Components/BotWebViewContainer;->getMainButtonRippleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$200(Lorg/telegram/ui/Components/BotWebViewSheet;)Z

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    .line 308
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$202(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    .line 309
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 311
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 312
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$300(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
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

    .line 322
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 324
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1800(Lorg/telegram/ui/Components/BotWebViewSheet;)Z

    move-result p1

    if-eq p6, p1, :cond_7

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1, p6}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1802(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p6, :cond_3

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1700(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 332
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

    .line 333
    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_6

    goto :goto_2

    :cond_6
    const p4, 0x3dcccccd    # 0.1f

    .line 334
    :goto_2
    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 335
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BotWebViewSheet$2$2;

    invoke-direct {p2, p0, p6}, Lorg/telegram/ui/Components/BotWebViewSheet$2$2;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;Z)V

    .line 336
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void
.end method

.method public onWebAppExpand()V
    .locals 3

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1500(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 298
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

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1400(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 267
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v1, :cond_0

    .line 268
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$700(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 270
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {v1, p2, p1, v0}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 271
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_1

    .line 272
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    invoke-direct {v1, p2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 276
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

    .line 278
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1600(Lorg/telegram/ui/Components/BotWebViewSheet;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 279
    new-instance p2, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 280
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 281
    new-instance v0, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/PaymentFormActivity;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 289
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

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$900(Lorg/telegram/ui/Components/BotWebViewSheet;)I

    move-result v0

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1000(Lorg/telegram/ui/Components/BotWebViewSheet;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 235
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 236
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
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

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1102(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$1200(Lorg/telegram/ui/Components/BotWebViewSheet;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 249
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 250
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotWebViewSheet$2;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
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

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewSheet$2;->this$0:Lorg/telegram/ui/Components/BotWebViewSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BotWebViewSheet;->access$402(Lorg/telegram/ui/Components/BotWebViewSheet;Z)Z

    return-void
.end method
