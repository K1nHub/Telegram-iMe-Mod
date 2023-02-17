.class public Lorg/telegram/ui/Components/ViewPagerFixed;
.super Landroid/widget/FrameLayout;
.source "ViewPagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;,
        Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
    }
.end annotation


# static fields
.field private static final interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

.field private additionalOffset:F

.field private allowDisallowInterceptTouch:Z

.field private animatingForward:Z

.field private backAnimation:Z

.field private backProgress:F

.field currentPosition:I

.field private maximumVelocity:I

.field private maybeStartTracking:Z

.field nextPosition:I

.field private rect:Landroid/graphics/Rect;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private tabsAnimation:Landroid/animation/AnimatorSet;

.field private tabsAnimationInProgress:Z

.field tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field private final touchSlop:F

.field updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field protected viewPages:[Landroid/view/View;

.field private viewTypes:[I

.field protected viewsByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CDYE2JO4m1pkV4dj-1SdgA0TG-E(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$onTouchEvent$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XLAQsAjZ9AxaWvlzrqOTDGVplF4(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$rebuild$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mWct406_sj9__iff3gN92HXHIkk(F)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$static$0(F)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 96
    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda2;

    sput-object v0, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    .line 126
    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const p2, 0x3e99999a    # 0.3f

    .line 128
    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->touchSlop:F

    .line 129
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maximumVelocity:I

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 131
    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    new-array p1, p1, [Landroid/view/View;

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    return p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ViewPagerFixed;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ViewPagerFixed;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ViewPagerFixed;)[I
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public static distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const v0, 0x3ef1463b

    mul-float p0, p0, v0

    float-to-double v0, p0

    .line 622
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 1846
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1847
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1848
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1849
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1850
    instance-of v2, v1, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_0

    .line 1851
    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v1

    .line 1852
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1853
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 6

    .line 1805
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1807
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1808
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1811
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1812
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    .line 1813
    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 1815
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1816
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {p0, v2, v4, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onTouchEvent$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 504
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    return-void
.end method

.method private synthetic lambda$rebuild$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1302(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    .line 740
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 741
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$static$0(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float v1, v1, p0

    mul-float v1, v1, p0

    mul-float v1, v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 301
    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_2

    :cond_1
    return v0

    .line 305
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 306
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 307
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 313
    :cond_3
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    .line 314
    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_0
    add-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    .line 315
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    .line 318
    aget-object p2, p1, v1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 320
    :cond_5
    aget-object p2, p1, v1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_6
    :goto_1
    return v1
.end method

.method private swapViews()V
    .locals 8

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 571
    aget-object v4, v0, v3

    aput-object v4, v0, v1

    .line 572
    aput-object v2, v0, v3

    .line 573
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 574
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 575
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    .line 576
    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v6, v5, v1

    .line 577
    aget v7, v5, v3

    aput v7, v5, v1

    .line 578
    aput v6, v5, v3

    .line 580
    aget-object v1, v0, v1

    aget-object v0, v0, v3

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->onItemSelected(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method private updateViewForIndex(I)V
    .locals 5

    if-nez p1, :cond_0

    .line 231
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    :goto_0
    if-ltz v0, :cond_7

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto/16 :goto_3

    .line 235
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    aput v3, v1, p1

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 241
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 243
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 245
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, v3, p1

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v1, v3, v0, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 252
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v1, v1, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 253
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v1, v3, v0, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 256
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    aput v3, v1, p1

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_6

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 264
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 266
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 267
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, v3, p1

    .line 268
    aget-object v1, v3, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v2, p1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 806
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 810
    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_5

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public checkTabsAnimationInProgress()Z
    .locals 7

    .line 589
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 591
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v0, v5

    if-eqz v3, :cond_4

    .line 595
    aget-object v3, v0, v5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    mul-int v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 599
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    mul-int v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v0, v5

    if-eqz v2, :cond_4

    .line 602
    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_1
    if-eqz v5, :cond_6

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 609
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 612
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    .line 614
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return v0

    :cond_7
    return v1
.end method

.method public createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 1

    .line 67
    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZILorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    return-object p1
.end method

.method public createTabsView(ZILorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 7

    .line 155
    new-instance v6, Lorg/telegram/ui/Components/ViewPagerFixed$2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ViewPagerFixed$2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 162
    invoke-virtual {v6, p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setTabType(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->tabMarginDp()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$3;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setDelegate(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;)V

    const/4 p1, 0x0

    .line 221
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p1
.end method

.method public drawForBlur(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1827
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1828
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1829
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 1831
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1832
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1833
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    const/16 v6, 0xcb

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/16 v7, 0x64

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 1834
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1835
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1836
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1837
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected fillTabs(Z)V
    .locals 5

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->removeTabs()V

    const/4 v0, 0x0

    .line 286
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE_WITH_ICON:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    if-ne v1, v2, :cond_0

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemId(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemIcon(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->addTabWithIcon(ILjava/lang/String;I)V

    goto :goto_1

    .line 291
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemId(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->addTab(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/Components/TransitionExt;->createSimpleTransition()Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 296
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->finishAddingTabs()V

    :cond_3
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 821
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 2

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getViewPages()[Landroid/view/View;
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    return-object v0
.end method

.method protected invalidateBlur()V
    .locals 0

    return-void
.end method

.method public isCurrentTabFirst()Z
    .locals 1

    .line 656
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBack()V
    .locals 0

    return-void
.end method

.method protected onBackProgress(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isAnimatingIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 330
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->checkTabsAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 334
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    return p1
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method protected onTabPageSelected(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 352
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->checkTabsAnimationInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 357
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    .line 358
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    .line 360
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_4

    int-to-float v3, v3

    .line 361
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 362
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    goto :goto_0

    .line 364
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    .line 365
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    .line 366
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    goto :goto_0

    .line 368
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v4, v2

    if-eqz v5, :cond_6

    int-to-float v3, v3

    .line 369
    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 370
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    .line 371
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    .line 372
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    goto :goto_0

    .line 374
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    .line 377
    :cond_6
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 378
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 379
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 381
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    .line 384
    :cond_8
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    const/4 v4, -0x1

    if-nez v3, :cond_a

    if-eqz p1, :cond_a

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, p0, v3, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 386
    invoke-virtual {v3, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v3, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    return v1

    :cond_a
    if-eqz p1, :cond_b

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-nez v3, :cond_b

    .line 391
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    .line 392
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingY:I

    goto/16 :goto_12

    :cond_b
    const/4 v3, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_17

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v3, :cond_17

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_17

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 398
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v7, :cond_c

    if-gtz v3, :cond_d

    :cond_c
    if-nez v7, :cond_11

    if-gez v3, :cond_11

    :cond_d
    if-gez v3, :cond_e

    const/4 v7, 0x1

    goto :goto_2

    :cond_e
    const/4 v7, 0x0

    .line 399
    :goto_2
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v7

    if-nez v7, :cond_11

    .line 400
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 401
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    .line 402
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v1

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 403
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v7, v2

    if-eqz v8, :cond_10

    .line 404
    aget-object v8, v7, v2

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v9, :cond_f

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    goto :goto_3

    :cond_f
    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    neg-int v7, v7

    :goto_3
    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 406
    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v7, :cond_11

    .line 407
    iget v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v7, v8, v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    .line 411
    :cond_11
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v0, :cond_13

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 413
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->touchSlop:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_31

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_31

    if-gez v3, :cond_12

    const/4 v0, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    .line 414
    :goto_4
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_12

    .line 416
    :cond_13
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz p1, :cond_31

    .line 417
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 418
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ne v0, v4, :cond_14

    .line 419
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    goto :goto_5

    .line 421
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    int-to-float v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v0, v2

    if-eqz v4, :cond_16

    .line 423
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_15

    .line 424
    aget-object v4, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    .line 426
    :cond_15
    aget-object v4, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 430
    :cond_16
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_31

    .line 431
    iget v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    sub-float/2addr v5, p1

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    goto/16 :goto_12

    :cond_17
    const/4 v4, 0x3

    if-eqz p1, :cond_18

    .line 434
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_31

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v4, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v2, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_31

    .line 435
    :cond_18
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_19

    const/16 v7, 0x3e8

    .line 436
    iget v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_19
    if-eqz p1, :cond_1b

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v4, :cond_1b

    .line 441
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 442
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 443
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v7, :cond_1c

    .line 444
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x453b8000    # 3000.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1c

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1c

    cmpg-float v7, v4, v0

    if-gez v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_6

    :cond_1a
    const/4 v7, 0x0

    .line 445
    :goto_6
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_7

    :cond_1b
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 452
    :cond_1c
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz p1, :cond_2f

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    .line 454
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 455
    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    cmpl-float v7, v7, v0

    if-eqz v7, :cond_24

    .line 456
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x44bb8000    # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1f

    .line 457
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_1d

    cmpl-float v6, v4, v0

    if-lez v6, :cond_1e

    goto :goto_8

    :cond_1d
    cmpg-float v6, v4, v0

    if-gez v6, :cond_1e

    :goto_8
    const/4 v6, 0x1

    goto :goto_9

    :cond_1e
    const/4 v6, 0x0

    :goto_9
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto/16 :goto_d

    .line 459
    :cond_1f
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_22

    .line 460
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_21

    .line 461
    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    shr-int/2addr v7, v2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_20

    const/4 v6, 0x1

    goto :goto_a

    :cond_20
    const/4 v6, 0x0

    :goto_a
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_d

    .line 463
    :cond_21
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_d

    .line 466
    :cond_22
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    shr-int/2addr v7, v2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_23

    const/4 v6, 0x1

    goto :goto_b

    :cond_23
    const/4 v6, 0x0

    :goto_b
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_d

    .line 470
    :cond_24
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_26

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x455ac000    # 3500.0f

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_25

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v7, v6

    if-gez v6, :cond_26

    :cond_25
    const/4 v6, 0x1

    goto :goto_c

    :cond_26
    const/4 v6, 0x0

    :goto_c
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    .line 474
    :goto_d
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v6, :cond_28

    .line 475
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 476
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_27

    .line 477
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v0, v10, v1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 478
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2b

    .line 479
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aget-object v9, v6, v2

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    aput v6, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_e

    .line 482
    :cond_27
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v8, v1

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v0, v10, v1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 483
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2b

    .line 484
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aget-object v9, v6, v2

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_e

    .line 487
    :cond_28
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ltz v6, :cond_2a

    .line 488
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v6, p1

    .line 489
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_29

    .line 490
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v9, v8, v1

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 491
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2b

    .line 492
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aget-object v6, v6, v2

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v0, v10, v1

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e

    .line 495
    :cond_29
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v9, v8, v1

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v2, [F

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 496
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2b

    .line 497
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aget-object v6, v6, v2

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v0, v10, v1

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e

    :cond_2a
    const/4 p1, 0x0

    .line 501
    :cond_2b
    :goto_e
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-gez v6, :cond_2d

    new-array v6, v3, [F

    .line 502
    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    aput v7, v6, v1

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v7, :cond_2c

    const/4 v7, 0x0

    goto :goto_f

    :cond_2c
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_f
    aput v7, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 503
    new-instance v7, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 506
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2d
    new-array v3, v3, [F

    .line 508
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 509
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 510
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v3, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 511
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v6, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 514
    div-int/lit8 v6, v3, 0x2

    mul-float v7, p1, v5

    int-to-float v3, v3

    div-float/2addr v7, v3

    .line 515
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v6, v6

    .line 516
    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float v3, v3, v6

    add-float/2addr v6, v3

    .line 517
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2e

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v6, v3

    .line 520
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_10

    .line 522
    :cond_2e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v5

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    :goto_10
    const/16 v0, 0x96

    const/16 v3, 0x258

    .line 525
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$4;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 553
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    .line 554
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    goto :goto_11

    .line 556
    :cond_2f
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 557
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_30

    .line 558
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 561
    :cond_30
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_31

    .line 562
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 563
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    .line 566
    :cond_31
    :goto_12
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez p1, :cond_32

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz p1, :cond_33

    :cond_32
    const/4 v1, 0x1

    :cond_33
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public rebuild(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->hasStableId()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 664
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 666
    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 668
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 669
    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 670
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, v1, v3

    .line 672
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v1, v2

    aput-object v4, v1, v3

    .line 674
    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 676
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, p1, v3

    if-eqz v1, :cond_5

    .line 678
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, p1, v3

    .line 681
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, p1, v2

    if-eqz v1, :cond_6

    .line 682
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, p1, v2

    :cond_6
    return-void

    .line 687
    :cond_7
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_8

    .line 688
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 690
    :cond_8
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-gez v4, :cond_9

    .line 691
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 693
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v5

    aput v5, v4, v2

    .line 694
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v2

    .line 695
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v5, v2

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v7, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 696
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 697
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    if-ne v4, v1, :cond_b

    const/4 p1, 0x0

    :cond_b
    if-eqz p1, :cond_c

    .line 706
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    .line 708
    :cond_c
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    if-eqz p1, :cond_11

    .line 710
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 711
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v3

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 712
    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 722
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v2

    if-eqz v0, :cond_e

    .line 723
    aget-object p1, p1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 725
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v3

    if-eqz v0, :cond_f

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    aget-object p1, p1, v3

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v3, [F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v2

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 729
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v2

    if-eqz v0, :cond_10

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    aget-object p1, p1, v2

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v3, [F

    aput v1, v6, v2

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 733
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1302(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    .line 734
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 735
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 736
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 737
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 745
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 746
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$5;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 765
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    .line 766
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 769
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, p1, v3

    if-eqz v1, :cond_12

    .line 770
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, p1, v3

    :cond_12
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 339
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 342
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V
    .locals 4

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    return-void
.end method

.method public setAllowDisallowInterceptTouch(Z)V
    .locals 0

    .line 1862
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 5

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 629
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 630
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 634
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eq v0, p1, :cond_2

    .line 636
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 637
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 638
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    .line 639
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v2

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p0, v3, v1, v4, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onItemSelected(Landroid/view/View;Landroid/view/View;II)V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 642
    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    :cond_2
    return-void
.end method

.method protected tabMarginDp()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method
