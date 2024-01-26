.class Lorg/telegram/ui/Components/ShareAlert$17;
.super Landroid/widget/FrameLayout;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$f0BRVSd7938srRcmLLTbU9tIW7c(Lorg/telegram/ui/Components/ShareAlert$17;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$17;->lambda$onDraw$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 0

    .line 1492
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1494
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDraw$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8702(Lorg/telegram/ui/Components/ShareAlert;F)F

    .line 1521
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1522
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1542
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$8700(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1544
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1545
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8500(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8500(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$8500(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_1

    .line 1514
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1517
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8500(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ShareAlert;->access$8700(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$8702(Lorg/telegram/ui/Components/ShareAlert;F)F

    .line 1518
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8700(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v4

    aput v4, v2, v3

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$8602(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1519
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$17$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$17$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$17;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1525
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1526
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$8600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1527
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$8502(Lorg/telegram/ui/Components/ShareAlert;F)F

    .line 1529
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    .line 1530
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4500(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v2, v0

    neg-int v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$8700(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$3600(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v2

    add-float/2addr v0, v2

    add-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1507
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1508
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1499
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 1501
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$17;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4500(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
