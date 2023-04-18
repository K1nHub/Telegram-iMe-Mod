.class Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "EmojiTabsStrip.java"


# instance fields
.field public contentView:Landroid/widget/LinearLayout;

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field protected scrollingAnimation:Z

.field private scrollingTo:I

.field showAnimator:Landroid/animation/ValueAnimator;

.field touching:Z


# direct methods
.method public static synthetic $r8$lambda$emV_6sM_lSZb6C-3cAu-Sv4OgUE(Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->lambda$scrollTo$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1418
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 1445
    iput p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    return-void
.end method

.method private synthetic lambda$scrollTo$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1460
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1486
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 1487
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->updateButtonsVisibility()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    sub-int p1, p2, p4

    .line 1493
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p3, 0x2

    if-lt p1, p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p1

    if-ge p2, p1, :cond_0

    if-nez p2, :cond_1

    .line 1494
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->touching:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1495
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1498
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->updateButtonsVisibility()V

    return-void
.end method

.method public resetScrollTo()V
    .locals 1

    const/4 v0, -0x1

    .line 1481
    iput v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    return-void
.end method

.method public scrollTo(I)V
    .locals 3

    .line 1449
    iget v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1452
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1454
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1456
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1459
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float p1, p1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1460
    new-instance v0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1461
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1463
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;-><init>(Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1477
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public scrollToVisible(II)Z
    .locals 3

    .line 1428
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x32

    .line 1431
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1433
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1435
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr p1, v2

    if-le p2, p1, :cond_2

    .line 1436
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    add-int p1, p2, v0

    .line 1441
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, v1, p2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollTo(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method updateButtonsVisibility()V
    .locals 7

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1504
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1505
    instance-of v4, v3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v4, :cond_3

    .line 1506
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    if-lez v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v5

    if-ge v3, v5, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingAnimation:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    :cond_2
    :goto_2
    invoke-virtual {v4, v3, v6}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->updateVisibilityInbounds(ZZ)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
