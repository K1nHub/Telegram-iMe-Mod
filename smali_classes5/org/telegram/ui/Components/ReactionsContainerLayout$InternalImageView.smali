.class Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;
.super Landroid/widget/ImageView;
.source "ReactionsContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$069xBPI5IhoZZPHOKIs6S2oFKn4(Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->lambda$play$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 1596
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$play$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1610
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1611
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1612
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1613
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public play(I)V
    .locals 3

    .line 1601
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1604
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1607
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 1608
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->durationScale:F

    mul-float p1, p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1617
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public resetAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1622
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1623
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1625
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
