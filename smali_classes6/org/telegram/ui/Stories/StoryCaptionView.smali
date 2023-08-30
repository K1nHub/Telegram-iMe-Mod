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

.field private lastMotionX:F

.field private lastMotionY:F

.field private nestedScrollStarted:Z

.field private overScrollY:F

.field private final paint:Landroid/graphics/Paint;

.field private pendingTopMargin:I

.field private prevHeight:I

.field private scroller:Landroid/widget/OverScroller;

.field private final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private startMotionX:F

.field private startMotionY:F

.field private textHash:I

.field textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

.field touched:Z

.field private velocitySign:F

.field private velocityY:F


# direct methods
.method public static synthetic $r8$lambda$BpZomns8nNjKOtCRcgMy7joZ9q8(Lorg/telegram/ui/Stories/StoryCaptionView;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoryCaptionView;->lambda$expand$1(FFFLandroid/animation/ValueAnimator;)V

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

    .line 113
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 101
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    const/high16 v3, -0x1000000

    const/16 v4, 0x33

    .line 109
    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->gradientColor:I

    .line 110
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v8, v7, v8

    iget v9, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->gradientColor:I

    aput v9, v7, v1

    invoke-direct {v4, v5, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 114
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    .line 115
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 116
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 118
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 120
    new-instance p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, p0, v4, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    .line 121
    new-instance v4, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-direct {v4, p1, p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;-><init>(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    .line 122
    iput-boolean v8, v4, Lorg/telegram/ui/Cells/TextSelectionHelper;->useMovingOffset:Z

    .line 123
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v4, -0x2

    invoke-virtual {p1, p2, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 124
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xc

    .line 127
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFadingEdgeLength(I)V

    .line 128
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 129
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 131
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 132
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 134
    new-instance v0, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 138
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p1, 0x0

    .line 141
    :try_start_0
    const-class p2, Landroidx/core/widget/NestedScrollView;

    const-string v0, "abortAnimatedScroll"

    new-array v2, v8, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 142
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 145
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 149
    :goto_0
    :try_start_1
    const-class p2, Landroidx/core/widget/NestedScrollView;

    const-string v0, "mScroller"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 150
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 151
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/OverScroller;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    .line 154
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/StoryCaptionView;F)F
    .locals 0

    .line 73
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionY:F

    return p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/Stories/StoryCaptionView;F)F
    .locals 0

    .line 73
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionX:F

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Stories/StoryCaptionView;F)F
    .locals 0

    .line 73
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionY:F

    return p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/Stories/StoryCaptionView;F)F
    .locals 0

    .line 73
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionX:F

    return p1
.end method

.method private synthetic lambda$collapse$2(FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 513
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 514
    invoke-static {p1, p2, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 515
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p3, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 516
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$expand$1(FFFLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 490
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 491
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    sub-int/2addr v0, v1

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 492
    invoke-static {p1, v0, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 135
    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 136
    iput p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    return-void
.end method

.method private startSpringAnimationIfNotRunning(F)V
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    :cond_1
    return-void
.end method

.method private updateTopMargin(II)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView;->calculateNewContainerMarginTop(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 238
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->dontChangeTopMargin:Z

    if-eqz p2, :cond_0

    .line 239
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    goto :goto_0

    .line 241
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, -0x1

    .line 242
    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public allowInterceptTouchEvent(FF)Z
    .locals 1

    .line 448
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

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    .line 253
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->state:[Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView$TextState;->text:Ljava/lang/CharSequence;

    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 256
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v5, v4, :cond_1

    const/4 v3, 0x1

    .line 258
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textHash:I

    if-ne v4, v2, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->isLandscape:Z

    if-ne v4, v3, :cond_2

    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    if-ne v4, p2, :cond_2

    iget-boolean v4, v1, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->updating:Z

    if-nez v4, :cond_2

    return v0

    .line 262
    :cond_2
    iput v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textHash:I

    .line 263
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->isLandscape:Z

    .line 264
    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 266
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 268
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->collapsedTextHeight(I)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public cancelTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    return-void
.end method

.method public checkCancelTextSelection()V
    .locals 4

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionX:F

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->startMotionY:F

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionX:F

    iget v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->lastMotionY:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkCancel(FFZ)V

    :cond_0
    return-void
.end method

.method public collapse()V
    .locals 8

    .line 503
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 507
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v5, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 511
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 512
    new-instance v7, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;FFFF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xfa

    .line 518
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 519
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 520
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

    .line 384
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->computeScroll()V

    .line 385
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

    .line 386
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    :cond_0
    return-void
.end method

.method public disableDraw(Z)V
    .locals 1

    .line 524
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    if-eq v0, p1, :cond_0

    .line 525
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    .line 526
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_0
    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 2

    const/4 p1, 0x1

    const/4 p4, 0x0

    .line 297
    aput p4, p3, p1

    .line 299
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

    .line 304
    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 305
    aget p2, p3, p1

    int-to-float p2, p2

    add-float/2addr p4, v1

    add-float/2addr p2, p4

    float-to-int p2, p2

    aput p2, p3, p1

    goto :goto_0

    .line 307
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 308
    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    goto :goto_0

    :cond_3
    cmpl-float p5, v1, v0

    if-lez p5, :cond_4

    .line 312
    iput v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 313
    aget p2, p3, p1

    int-to-float p2, p2

    add-float/2addr p4, v1

    add-float/2addr p2, p4

    float-to-int p2, p2

    aput p2, p3, p1

    goto :goto_0

    .line 315
    :cond_4
    iput v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 316
    aget p4, p3, p1

    add-int/2addr p4, p2

    aput p4, p3, p1

    .line 320
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget p3, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    .line 321
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return p1

    :cond_5
    return p4
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 0

    if-eqz p4, :cond_5

    int-to-float p1, p4

    const/high16 p2, 0x3f800000    # 1.0f

    .line 332
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

    .line 335
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-nez p2, :cond_4

    .line 336
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_5

    .line 338
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 339
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_2

    .line 340
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

    .line 342
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocitySign:F

    neg-float p2, p2

    mul-float/2addr p3, p2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 348
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    .line 351
    :cond_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    goto :goto_3

    .line 354
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setTranslationY(F)V

    .line 359
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 413
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw:Z

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 420
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 421
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    add-int/2addr v1, v2

    .line 424
    iget v4, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v0, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 434
    invoke-virtual {p1, v5, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 435
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 436
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public expand()V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand(Z)V

    return-void
.end method

.method public expand(Z)V
    .locals 4

    .line 481
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 484
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 485
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 488
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 489
    new-instance v3, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryCaptionView;FFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xfa

    .line 496
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 497
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 498
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

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

    .line 290
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    int-to-float p1, p1

    .line 291
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocitySign:F

    const/4 p1, 0x0

    .line 292
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

    .line 444
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

    .line 224
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->pendingTopMargin:I

    if-ltz v0, :cond_0

    .line 225
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

    .line 471
    iget v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->prevHeight:I

    const/16 v1, 0x28

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 472
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

    .line 440
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

    .line 542
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

    .line 463
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 464
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->invalidate()V

    return-void
.end method

.method public isTouched()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    return v0
.end method

.method public onEmojiClick(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 172
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

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 180
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    goto :goto_0

    .line 182
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

    .line 183
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    .line 186
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 173
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz p1, :cond_5

    .line 174
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 175
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

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->updateTopMargin(II)V

    .line 211
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 191
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

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 199
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    goto :goto_0

    .line 201
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

    .line 202
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    .line 205
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 192
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    if-eqz p1, :cond_5

    .line 193
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->touched:Z

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    :cond_5
    return v1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 273
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->progressToExpand:F

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 0

    .line 456
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 457
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryCaptionView;->invalidate()V

    return-void
.end method

.method public startNestedScroll(II)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 375
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 376
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    .line 377
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    :cond_0
    return p1
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 392
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 393
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->nestedScrollStarted:Z

    .line 394
    iget p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->overScrollY:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->scroller:Landroid/widget/OverScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    iget p1, p0, Lorg/telegram/ui/Stories/StoryCaptionView;->velocityY:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->startSpringAnimationIfNotRunning(F)V

    :cond_0
    return-void
.end method
