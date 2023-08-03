.class public Lorg/telegram/ui/Stories/StoryCaptionView;
.super Landroidx/core/widget/NestedScrollView;
.source "StoryCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;
    }
.end annotation


# instance fields
.field private abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

.field public blackoutBottomOffset:I

.field captionContainer:Landroid/widget/FrameLayout;

.field public captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

.field private disableDraw:Z

.field public disableTouches:Z

.field private dontChangeTopMargin:Z

.field expanded:Z

.field gradientColor:I

.field private isLandscape:Z

.field private nestedScrollStarted:Z

.field private overScrollY:F

.field private final paint:Landroid/graphics/Paint;

.field private pendingTopMargin:I

.field private prevHeight:I

.field private scroller:Landroid/widget/OverScroller;

.field private final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private textHash:I

.field touched:Z

.field private velocitySign:F

.field private velocityY:F


# direct methods
.method public static synthetic $r8$lambda$KEzWL46nheiiSK95mWPWqTWHALQ(Lorg/telegram/ui/Stories/StoryCaptionView;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoryCaptionView;->lambda$expand$1(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lT1VfFSsBGGZWP3jQzlOCwCWpiY(Lorg/telegram/ui/Stories/StoryCaptionView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView;->lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$yZwsxAu5M6Lnb_gyd_1_i3B3Ny4(Lorg/telegram/ui/Stories/StoryCaptionView;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoryCaptionView;->lambda$collapse$2(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 104
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 92
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    const/high16 v3, -0x1000000

    const/16 v4, 0x33

    .line 100
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->gradientColor:I

    .line 101
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v8, v7, v8

    iget v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->gradientColor:I

    aput v9, v7, v1

    invoke-direct {v4, v5, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 105
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    .line 106
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 107
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 109
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 111
    new-instance p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, p0, v4, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    .line 117
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x2

    invoke-virtual {p2, p1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xc

    .line 121
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFadingEdgeLength(I)V

    .line 122
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 123
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 125
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 126
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 127
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 128
    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 132
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p1, 0x0

    .line 135
    :try_start_0
    const-class p2, Landroidx/core/widget/NestedScrollView;

    const-string v0, "abortAnimatedScroll"

    new-array v2, v8, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 136
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 138
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 139
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 143
    :goto_0
    :try_start_1
    const-class p2, Landroidx/core/widget/NestedScrollView;

    const-string v0, "mScroller"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/OverScroller;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 147
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    .line 148
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$collapse$2(FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 510
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 511
    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p3, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$expand$1(FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 488
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 489
    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p3, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 129
    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 130
    iput p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    return-void
.end method

.method private startSpringAnimationIfNotRunning(F)V
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    :cond_1
    return-void
.end method

.method private updateTopMargin(II)V
    .locals 0

    .line 230
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView;->calculateNewContainerMarginTop(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 232
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->dontChangeTopMargin:Z

    if-eqz p2, :cond_0

    .line 233
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    goto :goto_0

    .line 235
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, -0x1

    .line 236
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public allowInterceptTouchEvent(FF)Z
    .locals 1

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public calculateNewContainerMarginTop(II)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    .line 247
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->text:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 250
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v5, 0x1

    if-le v4, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 252
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textHash:I

    if-ne v4, v2, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->isLandscape:Z

    if-ne v4, v3, :cond_2

    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    if-ne v4, p2, :cond_2

    return v0

    .line 256
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textHash:I

    .line 257
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->isLandscape:Z

    .line 258
    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 260
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 262
    iget-object p1, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->fullLayout:Landroid/text/StaticLayout;

    .line 263
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_3

    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    .line 269
    :cond_3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 271
    iget-object v0, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    add-int/2addr p1, v5

    mul-int/2addr v0, p1

    sub-int/2addr p2, v0

    return p2

    :cond_4
    :goto_1
    return v0
.end method

.method public cancelTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    return-void
.end method

.method public collapse()V
    .locals 8

    .line 500
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 504
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 508
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 509
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;FFFF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xfa

    .line 515
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 516
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 517
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public computeScroll()V
    .locals 2

    .line 386
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->computeScroll()V

    .line 387
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    :cond_0
    return-void
.end method

.method public disableDraw(Z)V
    .locals 1

    .line 521
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    if-eq v0, p1, :cond_0

    .line 522
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    .line 523
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_0
    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 2

    const/4 p1, 0x1

    const/4 p4, 0x0

    .line 301
    aput p4, p3, p1

    .line 303
    iget-boolean p5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-eqz p5, :cond_5

    iget p5, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-lez v1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    cmpg-float v1, p5, v0

    if-gez v1, :cond_5

    if-gez p2, :cond_5

    :cond_1
    int-to-float p4, p2

    sub-float v1, p5, p4

    cmpl-float p5, p5, v0

    if-lez p5, :cond_3

    cmpg-float p5, v1, v0

    if-gez p5, :cond_2

    .line 308
    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 309
    aget p2, p3, p1

    int-to-float p2, p2

    add-float/2addr p4, v1

    add-float/2addr p2, p4

    float-to-int p2, p2

    aput p2, p3, p1

    goto :goto_0

    .line 311
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 312
    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    goto :goto_0

    :cond_3
    cmpl-float p5, v1, v0

    if-lez p5, :cond_4

    .line 316
    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 317
    aget p2, p3, p1

    int-to-float p2, p2

    add-float/2addr p4, v1

    add-float/2addr p2, p4

    float-to-int p2, p2

    aput p2, p3, p1

    goto :goto_0

    .line 319
    :cond_4
    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 320
    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    .line 324
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    return p1

    :cond_5
    return p4
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 0

    if-eqz p4, :cond_5

    int-to-float p1, p4

    const/high16 p2, 0x3f800000    # 1.0f

    .line 335
    iget p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    neg-float p3, p3

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTop()I

    move-result p4

    add-int/lit8 p4, p4, 0x0

    int-to-float p4, p4

    div-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_5

    .line 338
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-nez p2, :cond_4

    .line 339
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_5

    .line 341
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 342
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_2

    .line 343
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-le p4, p3, :cond_1

    const p3, 0x453b8000    # 3000.0f

    goto :goto_1

    :cond_1
    const p3, 0x459c4000    # 5000.0f

    :goto_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    int-to-float p1, p1

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 345
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocitySign:F

    neg-float p2, p2

    mul-float/2addr p3, p2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 351
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    .line 354
    :cond_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    goto :goto_3

    .line 357
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    :cond_5
    :goto_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 415
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 422
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 423
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    add-int/2addr v1, v2

    .line 426
    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v0, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 436
    invoke-virtual {p1, v5, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 437
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public expand()V
    .locals 8

    .line 478
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 482
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    int-to-float v3, v0

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 486
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 487
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;FFFF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xfa

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 495
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public fling(I)V
    .locals 0

    .line 294
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    int-to-float p1, p1

    .line 295
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocitySign:F

    const/4 p1, 0x0

    .line 296
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxTop()F
    .locals 3

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getPendingMarginTopDiff()I
    .locals 2

    .line 218
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    if-ltz v0, :cond_0

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProgressToBlackout()F
    .locals 3

    .line 472
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    const/16 v1, 0x28

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 473
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getTextTop()F
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasScroll()Z
    .locals 2

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 465
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 466
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isTouched()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    return v0
.end method

.method public onEmojiClick(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 174
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    goto :goto_0

    .line 176
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 177
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    .line 180
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 167
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz p1, :cond_5

    .line 168
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_5
    return v1
.end method

.method public onLinkClick(Landroid/text/style/CharacterStyle;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLinkLongPress(Landroid/text/style/URLSpan;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 204
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->updateTopMargin(II)V

    .line 205
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableTouches:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 193
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    goto :goto_0

    .line 195
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 196
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    .line 199
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 186
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz p1, :cond_5

    .line 187
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 188
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_5
    return v1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 277
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 0

    .line 458
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    return-void
.end method

.method public startNestedScroll(II)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 377
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 378
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    .line 379
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    :cond_0
    return p1
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 394
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 395
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    .line 396
    iget p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    iget p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    :cond_0
    return-void
.end method
