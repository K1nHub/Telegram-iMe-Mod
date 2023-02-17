.class Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;
.super Ljava/lang/Object;
.source "BotWebViewMenuContainer.java"

# interfaces
.implements Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BotWebViewMenuContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

.field final synthetic val$actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field final synthetic val$parentEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$3CbeWAShUPHj8pmS99pN9JUB9vM(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->lambda$onWebAppOpenInvoice$2(Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdsn4887fBmOtPyhUe0N9g6tJJU(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->lambda$onSetupMainButton$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xDb5zXQ9_LCTro6UyA-ZA7HaPKo(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->lambda$onWebAppSetActionBarColor$0(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdwFoJ2w4OMgJLcCdf_nfzOzzjE(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->lambda$onWebAppSetBackgroundColor$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/BotWebViewMenuContainer;Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->val$parentEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->val$actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSetupMainButton$3(Landroid/view/View;)V
    .locals 0

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$1000(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BotWebViewContainer;->onMainButtonPressed()V

    return-void
.end method

.method private synthetic lambda$onWebAppOpenInvoice$2(Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$1000(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Lorg/telegram/ui/Components/BotWebViewContainer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onWebAppSetActionBarColor$0(IILandroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$102(Lorg/telegram/ui/Components/BotWebViewMenuContainer;I)I

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$1102(Lorg/telegram/ui/Components/BotWebViewMenuContainer;F)F

    .line 167
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$1200(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$100(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$1300(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)V

    return-void
.end method

.method private synthetic lambda$onWebAppSetBackgroundColor$1(IILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$400(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

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

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onSendWebViewData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BotWebViewContainer$Delegate$-CC;->$default$onSendWebViewData(Lorg/telegram/ui/Components/BotWebViewContainer$Delegate;Ljava/lang/String;)V

    return-void
.end method

.method public onSetBackButtonVisible(Z)V
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$900(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->val$actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->val$actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->val$actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetupMainButton(ZZLjava/lang/String;IIZ)V
    .locals 7

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->val$parentEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBotWebViewButton()Lorg/telegram/ui/Components/ChatActivityBotWebViewButton;

    move-result-object v0

    move-object v1, v0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 216
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityBotWebViewButton;->setupButtonParams(ZLjava/lang/String;IIZ)V

    .line 217
    new-instance p2, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {p2}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$700(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 219
    iget-object p2, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$800(Lorg/telegram/ui/Components/BotWebViewMenuContainer;Z)V

    :cond_0
    return-void
.end method

.method public onWebAppExpand()V
    .locals 3

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$500(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$500(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$500(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v2}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$500(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    return-void
.end method

.method public onWebAppOpenInvoice(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->val$parentEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getParentFragment()Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    .line 199
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v1, :cond_0

    .line 200
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 201
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$600(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 202
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {v1, p2, p1, v0}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 203
    :cond_0
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v1, :cond_1

    .line 204
    new-instance v1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    invoke-direct {v1, p2}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 208
    new-instance p2, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    .line 209
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

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

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$100(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$200(Lorg/telegram/ui/Components/BotWebViewMenuContainer;Ljava/lang/String;)I

    move-result p1

    if-nez v0, :cond_0

    .line 156
    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$102(Lorg/telegram/ui/Components/BotWebViewMenuContainer;I)I

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 159
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 160
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onWebAppSetBackgroundColor(I)V
    .locals 4

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$302(Lorg/telegram/ui/Components/BotWebViewMenuContainer;Z)Z

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$400(Lorg/telegram/ui/Components/BotWebViewMenuContainer;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 178
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 179
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    new-instance v2, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
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

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewMenuContainer$1;->this$0:Lorg/telegram/ui/Components/BotWebViewMenuContainer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BotWebViewMenuContainer;->access$002(Lorg/telegram/ui/Components/BotWebViewMenuContainer;Z)Z

    return-void
.end method
