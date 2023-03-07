.class public Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollSlidingTextTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;
    }
.end annotation


# instance fields
.field private activeTextColorKey:Ljava/lang/String;

.field private allTextWidth:I

.field private animateFromIndicatorWidth:I

.field private animateFromIndicaxtorX:I

.field private animateIndicatorStartWidth:I

.field private animateIndicatorStartX:I

.field private animateIndicatorToWidth:I

.field private animateIndicatorToX:I

.field private animatingIndicator:Z

.field private animationIdicatorProgress:F

.field private animationRunnable:Ljava/lang/Runnable;

.field private animationTime:F

.field private currentPosition:I

.field private delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

.field private idToPosition:Landroid/util/SparseIntArray;

.field private indicatorWidth:I

.field private indicatorWidthAnimationDx:F

.field private indicatorX:I

.field private indicatorXAnimationDx:F

.field private interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private lastAnimationTime:J

.field private positionToId:Landroid/util/SparseIntArray;

.field private positionToWidth:Landroid/util/SparseIntArray;

.field private prevLayoutWidth:I

.field private previousPosition:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollingToChild:I

.field private selectedTabId:I

.field private selectorColorKey:Ljava/lang/String;

.field private selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private tabCount:I

.field private tabLineColorKey:Ljava/lang/String;

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private unactiveTextColorKey:Ljava/lang/String;

.field private useSameWidth:Z


# direct methods
.method public static synthetic $r8$lambda$Wk9NCbV7Teyp5zUsTh3cp0eB82E(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->lambda$onLayout$1(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z_sjt57LNSeKAHKfmdjvaNwp4jo(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->lambda$addTextTab$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    .line 83
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollingToChild:I

    const-string v1, "actionBarTabLine"

    .line 87
    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabLineColorKey:Ljava/lang/String;

    const-string v1, "actionBarTabActiveText"

    .line 88
    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->activeTextColorKey:Ljava/lang/String;

    const-string v1, "actionBarTabUnactiveText"

    .line 89
    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->unactiveTextColorKey:Ljava/lang/String;

    const-string v1, "actionBarTabSelector"

    .line 90
    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorColorKey:Ljava/lang/String;

    .line 92
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 94
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToId:Landroid/util/SparseIntArray;

    .line 95
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->idToPosition:Landroid/util/SparseIntArray;

    .line 96
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToWidth:Landroid/util/SparseIntArray;

    .line 109
    new-instance v1, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationRunnable:Ljava/lang/Runnable;

    .line 143
    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 145
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x40400000    # 3.0f

    .line 146
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    .line 147
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    const/4 v7, 0x2

    aput v1, v4, v7

    const/4 v7, 0x3

    aput v1, v4, v7

    const/4 v1, 0x4

    const/4 v7, 0x0

    aput v7, v4, v1

    aput v7, v4, v2

    const/4 v1, 0x6

    aput v7, v4, v1

    const/4 v1, 0x7

    aput v7, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 148
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabLineColorKey:Ljava/lang/String;

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 150
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 151
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 153
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 154
    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 161
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, p2, v5, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->lastAnimationTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)F
    .locals 0

    .line 35
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationTime:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;F)F
    .locals 0

    .line 35
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationTime:F

    return p1
.end method

.method static synthetic access$216(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;F)F
    .locals 1

    .line 35
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationTime:F

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Lorg/telegram/ui/Components/CubicBezierInterpolator;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;)I
    .locals 0

    .line 35
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    return p0
.end method

.method private getChildWidth(Landroid/widget/TextView;)I
    .locals 2

    .line 547
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 549
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 551
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method private synthetic lambda$addTextTab$0(ILandroid/view/View;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;->onSamePageSelected()V

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    .line 309
    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollingToChild:I

    .line 310
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->previousPosition:I

    .line 311
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    .line 312
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    .line 314
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 316
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    :cond_3
    const/4 v1, 0x0

    .line 319
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationTime:F

    .line 320
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    .line 321
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorX:I

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorStartX:I

    .line 322
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidth:I

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorStartWidth:I

    .line 324
    check-cast p2, Landroid/widget/TextView;

    .line 325
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getChildWidth(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToWidth:I

    .line 326
    invoke-virtual {p2}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToWidth:I

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToX:I

    .line 327
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 329
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    if-eqz p2, :cond_4

    .line 332
    invoke-interface {p2, p1, v4}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(IZ)V

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;->onTabSelected(I)V

    .line 335
    :cond_4
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollToChild(I)V

    return-void
.end method

.method private synthetic lambda$onLayout$1(IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 480
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    int-to-float p1, p1

    mul-float p1, p1, p3

    .line 481
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorXAnimationDx:F

    int-to-float p1, p2

    mul-float p1, p1, p3

    .line 482
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidthAnimationDx:F

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 484
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method private scrollToChild(I)V
    .locals 5

    .line 436
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabCount:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollingToChild:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollingToChild:I

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 445
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    .line 446
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    const/16 v2, 0x32

    .line 447
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v1, v3

    const/4 v4, 0x0

    if-ge v3, v0, :cond_2

    .line 448
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    add-int/2addr v1, p1

    const/16 p1, 0x15

    .line 449
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-le p1, v0, :cond_3

    .line 450
    invoke-virtual {p0, v1, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setAnimationProgressInernal(Landroid/widget/TextView;Landroid/widget/TextView;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 179
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->activeTextColorKey:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 180
    iget-object v4, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->unactiveTextColorKey:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    .line 182
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 183
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 184
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 185
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 186
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 187
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 188
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    .line 189
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v11, v3

    sub-int v12, v4, v3

    int-to-float v12, v12

    mul-float v12, v12, p3

    add-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v12, v5

    sub-int v13, v8, v5

    int-to-float v13, v13

    mul-float v13, v13, p3

    add-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v13, v6

    sub-int v14, v9, v6

    int-to-float v14, v14

    mul-float v14, v14, p3

    add-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v14, v7

    sub-int v15, v10, v7

    int-to-float v15, v15

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    float-to-int v14, v14

    .line 191
    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v2, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v8

    sub-int/2addr v5, v8

    int-to-float v4, v5

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v9

    sub-int/2addr v6, v9

    int-to-float v5, v6

    mul-float v5, v5, p3

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v10

    sub-int/2addr v7, v10

    int-to-float v6, v7

    mul-float v6, v6, p3

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 192
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorStartX:I

    int-to-float v2, v1

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToX:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p3

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorX:I

    .line 195
    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorStartWidth:I

    int-to-float v2, v1

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToWidth:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p3

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidth:I

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addTextTab(ILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V

    return-void
.end method

.method public addTextTab(ILjava/lang/CharSequence;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 270
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    if-ne v2, v1, :cond_0

    .line 271
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    .line 273
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    if-ne v2, p1, :cond_1

    .line 276
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    .line 277
    iput v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->prevLayoutWidth:I

    :cond_1
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 281
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 282
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_2
    if-nez v2, :cond_3

    .line 285
    new-instance v2, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$3;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v2, p0, p3, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;Landroid/content/Context;I)V

    .line 292
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWillNotDraw(Z)V

    const/16 p3, 0x11

    .line 293
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 294
    iget-object p3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorColorKey:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    const/4 v4, 0x3

    invoke-static {p3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    .line 295
    invoke-virtual {v2, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string p3, "fonts/rmedium.ttf"

    .line 297
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p3, 0x10

    .line 298
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {v2, v4, v3, p3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    new-instance p3, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;I)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_3
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p1, p2, v3, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->allTextWidth:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->allTextWidth:I

    .line 342
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 391
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 392
    iget-object p4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    if-ne p2, p4, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p2

    .line 394
    iget-object p4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x437f0000    # 255.0f

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 395
    iget p4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorX:I

    int-to-float p4, p4

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorXAnimationDx:F

    add-float/2addr p4, v0

    .line 396
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidthAnimationDx:F

    add-float/2addr v0, v1

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    float-to-int p4, p4

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpr(F)I

    move-result v2

    sub-int v2, p2, v2

    float-to-int v0, v0

    invoke-virtual {v1, p4, v2, v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return p3
.end method

.method public finishAddingTabs()V
    .locals 6

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 348
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 349
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->activeTextColorKey:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->unactiveTextColorKey:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 350
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    if-ne v4, v2, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->activeTextColorKey:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->unactiveTextColorKey:Ljava/lang/String;

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v2, :cond_3

    .line 352
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const/4 v4, -0x2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getAnimationIdicatorProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 234
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationIdicatorProgress:F

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 498
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    return v0
.end method

.method public getCurrentTabId()I
    .locals 1

    .line 366
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    return v0
.end method

.method public getFirstTabId()I
    .locals 2

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToId:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getNextPageId(Z)I
    .locals 3

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToId:Landroid/util/SparseIntArray;

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public getNextPageIdByPosition(Z)I
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToId:Landroid/util/SparseIntArray;

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getTabsContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTabsCount()I
    .locals 1

    .line 258
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabCount:I

    return v0
.end method

.method public hasTab(I)Z
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAnimatingIndicator()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 456
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 458
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->prevLayoutWidth:I

    sub-int/2addr p4, p2

    if-eq p1, p4, :cond_3

    .line 459
    iput p4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->prevLayoutWidth:I

    const/4 p1, -0x1

    .line 460
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollingToChild:I

    .line 461
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 463
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animatingIndicator:Z

    const/4 p1, 0x1

    .line 464
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    if-eqz p1, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 466
    invoke-interface {p1, p3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;->onPageScrolled(F)V

    .line 469
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget p3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 471
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getChildWidth(Landroid/widget/TextView;)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidth:I

    .line 472
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget p4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidth:I

    sub-int/2addr p1, p4

    const/4 p5, 0x2

    div-int/2addr p1, p5

    add-int/2addr p3, p1

    iput p3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorX:I

    .line 474
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateFromIndicaxtorX:I

    if-lez p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateFromIndicatorWidth:I

    if-lez v0, :cond_3

    if-ne p1, p3, :cond_1

    if-eq v0, p4, :cond_2

    :cond_1
    sub-int/2addr p1, p3

    sub-int/2addr v0, p4

    new-array p3, p5, [F

    .line 478
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 479
    new-instance p4, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;II)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p4, 0xc8

    .line 486
    invoke-virtual {p3, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 487
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 490
    :cond_2
    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateFromIndicaxtorX:I

    .line 491
    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateFromIndicatorWidth:I

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 405
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x16

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    .line 408
    iget-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 409
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 410
    iget v8, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->allTextWidth:I

    const/4 v9, -0x2

    if-le v8, v0, :cond_0

    .line 411
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 412
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    .line 413
    :cond_0
    iget-boolean v10, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->useSameWidth:Z

    if-eqz v10, :cond_1

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 414
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 415
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    if-ne v1, v6, :cond_2

    .line 418
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 419
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    int-to-float v5, v8

    div-float/2addr v4, v5

    .line 421
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 422
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eq v1, v6, :cond_5

    .line 426
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->allTextWidth:I

    if-le v1, v0, :cond_4

    goto :goto_2

    .line 429
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    goto :goto_3

    .line 427
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 432
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public recordIndicatorParams()V
    .locals 1

    .line 575
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorX:I

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateFromIndicaxtorX:I

    .line 576
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->indicatorWidth:I

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateFromIndicatorWidth:I

    return-void
.end method

.method public removeTabs()Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 243
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 244
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 245
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToId:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 248
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 249
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->positionToWidth:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 250
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->allTextWidth:I

    .line 252
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabCount:I

    return-object v0
.end method

.method public resetTab()V
    .locals 1

    const/4 v0, -0x1

    .line 382
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    return-void
.end method

.method public selectTabWithId(IF)V
    .locals 7

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->idToPosition:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gez v3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 521
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 522
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 524
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getChildWidth(Landroid/widget/TextView;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorStartWidth:I

    .line 525
    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorStartWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorStartX:I

    .line 526
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getChildWidth(Landroid/widget/TextView;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToWidth:I

    .line 527
    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animateIndicatorToX:I

    .line 528
    invoke-direct {p0, v3, v1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setAnimationProgressInernal(Landroid/widget/TextView;Landroid/widget/TextView;F)V

    cmpl-float v4, p2, v2

    if-ltz v4, :cond_3

    .line 530
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->unactiveTextColorKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 531
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->activeTextColorKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 533
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->scrollToChild(I)V

    :cond_4
    cmpl-float p2, p2, v2

    if-ltz p2, :cond_6

    .line 536
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    .line 538
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    if-eq p2, p1, :cond_5

    .line 539
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;->onTabSelected(I)V

    .line 542
    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    :cond_6
    return-void
.end method

.method public setAnimationIdicatorProgress(F)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 201
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->animationIdicatorProgress:F

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->previousPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setAnimationProgressInernal(Landroid/widget/TextView;Landroid/widget/TextView;F)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->unactiveTextColorKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->activeTextColorKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    if-eqz v0, :cond_2

    .line 216
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;->onPageScrolled(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabLineColorKey:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->activeTextColorKey:Ljava/lang/String;

    .line 360
    iput-object p3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->unactiveTextColorKey:Ljava/lang/String;

    .line 361
    iput-object p4, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorColorKey:Ljava/lang/String;

    .line 362
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 503
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 506
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 507
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInitialTabId(I)V
    .locals 1

    .line 370
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectedTabId:I

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->idToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 374
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->currentPosition:I

    const/4 p1, 0x0

    .line 375
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->prevLayoutWidth:I

    .line 376
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->finishAddingTabs()V

    .line 377
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setUseSameWidth(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->useSameWidth:Z

    return-void
.end method
