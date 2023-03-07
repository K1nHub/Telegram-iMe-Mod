.class Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PaymentFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomFrameLayout"
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field progress:F

.field springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method public static synthetic $r8$lambda$JE3uq-n0Nko7SaIOHnTrkS2ri_I(Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->lambda$setChecked$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMEInGR7YMHORF3htLClYaLBlQc(Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->lambda$setChecked$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;)V
    .locals 1

    .line 4466
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    .line 4467
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4462
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->paint:Landroid/graphics/Paint;

    .line 4469
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_invoice;->recurring:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$4900(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->progress:F

    const/4 p1, 0x0

    .line 4470
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$setChecked$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p2, p1

    .line 4495
    iput p2, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->progress:F

    .line 4496
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$4800(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4497
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$4800(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x3f4ccccd    # 0.8f

    const p3, 0x3e4ccccd    # 0.2f

    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->progress:F

    mul-float v0, v0, p3

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4499
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setChecked$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 4502
    iget-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 4503
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 4475
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4477
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string v1, "switchTrackBlue"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4478
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string v2, "contacts_inviteBackground"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4479
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x1c

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->progress:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 6

    .line 4483
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 4484
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4487
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->progress:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    return-void

    .line 4490
    :cond_2
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v4, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->progress:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    mul-float v1, v1, v5

    invoke-direct {v3, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    if-eqz p1, :cond_3

    const/high16 p1, 0x43fa0000    # 500.0f

    goto :goto_1

    :cond_3
    const p1, 0x44228000    # 650.0f

    .line 4492
    :goto_1
    invoke-virtual {v3, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 4493
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 4491
    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4494
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 4501
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 4506
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$BottomFrameLayout;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
