.class Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "EmojiTabsStrip.java"


# instance fields
.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field protected scrollingAnimation:Z

.field private scrollingTo:I


# direct methods
.method public static synthetic $r8$lambda$emV_6sM_lSZb6C-3cAu-Sv4OgUE(Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->lambda$scrollTo$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1157
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 1183
    iput p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    return-void
.end method

.method private synthetic lambda$scrollTo$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1197
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
.method public resetScrollTo()V
    .locals 1

    const/4 v0, -0x1

    .line 1218
    iput v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    return-void
.end method

.method public scrollTo(I)V
    .locals 3

    .line 1186
    iget v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1189
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingTo:I

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1191
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1193
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1196
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

    .line 1197
    new-instance v0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView$1;-><init>(Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1214
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public scrollToVisible(II)Z
    .locals 3

    .line 1166
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x32

    .line 1169
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1171
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1173
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr p1, v2

    if-le p2, p1, :cond_2

    .line 1174
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    add-int p1, p2, v0

    .line 1179
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
