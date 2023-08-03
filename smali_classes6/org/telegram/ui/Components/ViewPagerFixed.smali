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

.field private manualScrolling:Landroid/animation/ValueAnimator;

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
.method public static synthetic $r8$lambda$WrnG8ME09S4aagN_Wvs49PvnkhA(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$onTouchEvent$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mWct406_sj9__iff3gN92HXHIkk(F)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$static$0(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rxHCTUBaMib9Fa46MN_MuBfn9Js(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$rebuild$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sn0KLSQkVL4ywvSR95juFtR7p90(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$scrollToPosition$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 98
    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda3;

    sput-object v0, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 151
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    .line 152
    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const p2, 0x3e99999a    # 0.3f

    .line 154
    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->touchSlop:F

    .line 155
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maximumVelocity:I

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 157
    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    new-array p1, p1, [Landroid/view/View;

    .line 158
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ViewPagerFixed;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    return-void
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ViewPagerFixed;)[I
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ViewPagerFixed;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    return p0
.end method

.method public static distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const v0, 0x3ef1463b

    mul-float/2addr p0, v0

    float-to-double v0, p0

    .line 718
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 1942
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1943
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1944
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1945
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1946
    instance-of v2, v1, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_0

    .line 1947
    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v1

    .line 1948
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1949
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

    .line 1901
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1903
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1904
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1907
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1908
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    .line 1909
    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 1911
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1912
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

.method private synthetic lambda$onTouchEvent$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 595
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    return-void
.end method

.method private synthetic lambda$rebuild$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1402(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    .line 836
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$scrollToPosition$1(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 206
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    .line 210
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 211
    aget-object v1, v0, v1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v0, v4

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 214
    :cond_1
    aget-object v1, v0, v1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v0, v4

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 217
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate()V

    return-void
.end method

.method private static synthetic lambda$static$0(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 386
    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    :cond_2
    return v0

    .line 389
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->canScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 393
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 394
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 395
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_5

    .line 398
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 401
    :cond_5
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    .line 402
    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eqz p2, :cond_6

    move v2, v1

    goto :goto_0

    :cond_6
    const/4 v2, -0x1

    :goto_0
    add-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    .line 403
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, p1, v1

    if-eqz v2, :cond_8

    if-eqz p2, :cond_7

    .line 406
    aget-object p2, p1, v1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 408
    :cond_7
    aget-object p2, p1, v1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 411
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate()V

    return v1
.end method

.method private swapViews()V
    .locals 8

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 667
    aget-object v4, v0, v3

    aput-object v4, v0, v1

    .line 668
    aput-object v2, v0, v3

    .line 669
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 670
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 671
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    .line 672
    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v6, v5, v1

    .line 673
    aget v7, v5, v3

    aput v7, v5, v1

    .line 674
    aput v6, v5, v3

    .line 676
    aget-object v1, v0, v1

    aget-object v0, v0, v3

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->onItemSelected(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method private updateViewForIndex(I)V
    .locals 5

    if-nez p1, :cond_0

    .line 316
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    :goto_0
    if-ltz v0, :cond_7

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto/16 :goto_3

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 321
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    aput v3, v1, p1

    .line 322
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 326
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 328
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 329
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 330
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, v3, p1

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v1, v3, v0, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 337
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v1, v1, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v1, v3, v0, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 341
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 344
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    aput v3, v1, p1

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_6

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 349
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 351
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, v3, p1

    .line 353
    aget-object v1, v3, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
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
.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canScrollHorizontally(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 902
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    .line 906
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

    .line 685
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 687
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v0, v5

    if-eqz v3, :cond_4

    .line 691
    aget-object v3, v0, v5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_0

    move v2, v5

    :cond_0
    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 695
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v0, v5

    if-eqz v2, :cond_4

    .line 698
    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    move v5, v1

    :cond_4
    :goto_1
    if-eqz v5, :cond_6

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 705
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 706
    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 708
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    .line 710
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return v0

    :cond_7
    return v1
.end method

.method public createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 1

    .line 69
    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZILorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    return-object p1
.end method

.method public createTabsView(ZILorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 7

    .line 239
    new-instance v6, Lorg/telegram/ui/Components/ViewPagerFixed$3;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ViewPagerFixed$3;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 246
    invoke-virtual {v6, p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setTabType(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->tabMarginDp()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$4;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setDelegate(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;)V

    const/4 p1, 0x0

    .line 303
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p1
.end method

.method public drawForBlur(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 1923
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1924
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1925
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eqz v2, :cond_1

    move v3, v0

    .line 1927
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1928
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1929
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

    .line 1930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1931
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

    .line 1932
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1933
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

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->removeTabs()V

    const/4 v0, 0x0

    .line 371
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE_WITH_ICON:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    if-ne v1, v2, :cond_0

    .line 374
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

    .line 376
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

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/Components/TransitionExt;->createSimpleTransition()Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 381
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->finishAddingTabs()V

    :cond_3
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 917
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 2

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionAnimated()F
    .locals 6

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v4, v0

    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 131
    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v3

    .line 133
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x1

    aget-object v5, v0, v2

    if-eqz v5, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v4, v0

    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 135
    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    :cond_1
    return v1
.end method

.method public getViewPages()[Landroid/view/View;
    .locals 1

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    return-object v0
.end method

.method protected invalidateBlur()V
    .locals 0

    return-void
.end method

.method public isCurrentTabFirst()Z
    .locals 1

    .line 752
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManualScrolling()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

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

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isAnimatingIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 419
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->checkTabsAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 422
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 423
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    return p1
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method protected onScrollEnd()V
    .locals 0

    return-void
.end method

.method protected onTabAnimationUpdate()V
    .locals 0

    return-void
.end method

.method protected onTabPageSelected(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 441
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    .line 443
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->checkTabsAnimationInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 446
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    .line 447
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    .line 449
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_4

    int-to-float v3, v3

    .line 450
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

    .line 451
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    goto :goto_0

    .line 453
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    .line 454
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    .line 455
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    goto :goto_0

    .line 457
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v4, v2

    if-eqz v5, :cond_6

    int-to-float v3, v3

    .line 458
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

    .line 459
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    .line 460
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    .line 461
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    goto :goto_0

    .line 463
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    .line 466
    :cond_6
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 467
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 468
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 470
    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    .line 473
    :cond_8
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    const/4 v4, -0x1

    if-nez v3, :cond_a

    if-eqz p1, :cond_a

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, p0, v3, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 475
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

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-nez v3, :cond_b

    .line 480
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    .line 481
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingY:I

    goto/16 :goto_12

    :cond_b
    const/4 v3, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_19

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v3, :cond_19

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_19

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 487
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v7, :cond_c

    if-gtz v3, :cond_d

    :cond_c
    if-nez v7, :cond_12

    if-gez v3, :cond_12

    :cond_d
    if-gez v3, :cond_e

    move v7, v2

    goto :goto_2

    :cond_e
    move v7, v1

    .line 488
    :goto_2
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v7

    if-nez v7, :cond_12

    .line 489
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 490
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    .line 491
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v1

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 492
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v7, v2

    if-eqz v8, :cond_10

    .line 493
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

    .line 495
    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v7, :cond_11

    .line 496
    iget v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v7, v8, v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    .line 498
    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate()V

    .line 501
    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v0, :cond_14

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 503
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->touchSlop:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_33

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_33

    if-gez v3, :cond_13

    move v0, v2

    goto :goto_4

    :cond_13
    move v0, v1

    .line 504
    :goto_4
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_12

    .line 506
    :cond_14
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz p1, :cond_33

    .line 507
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 508
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ne v0, v4, :cond_15

    .line 509
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    goto :goto_5

    .line 511
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    int-to-float v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v0, v2

    if-eqz v4, :cond_17

    .line 513
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_16

    .line 514
    aget-object v4, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    .line 516
    :cond_16
    aget-object v4, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 520
    :cond_17
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_18

    .line 521
    iget v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    sub-float/2addr v5, p1

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    .line 523
    :cond_18
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate()V

    goto/16 :goto_12

    :cond_19
    const/4 v4, 0x3

    if-eqz p1, :cond_1a

    .line 525
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v4, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v2, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_33

    .line 526
    :cond_1a
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_1b

    const/16 v7, 0x3e8

    .line 527
    iget v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_1b
    if-eqz p1, :cond_1d

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v4, :cond_1d

    .line 532
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 533
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 534
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v7, :cond_1e

    .line 535
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x453b8000    # 3000.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1e

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1e

    cmpg-float v7, v4, v0

    if-gez v7, :cond_1c

    move v7, v2

    goto :goto_6

    :cond_1c
    move v7, v1

    .line 536
    :goto_6
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_7

    :cond_1d
    move v4, v0

    move v6, v4

    .line 543
    :cond_1e
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz p1, :cond_31

    .line 544
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    .line 545
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 546
    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    cmpl-float v7, v7, v0

    if-eqz v7, :cond_26

    .line 547
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x44bb8000    # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_21

    .line 548
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_1f

    cmpl-float v6, v4, v0

    if-lez v6, :cond_20

    goto :goto_8

    :cond_1f
    cmpg-float v6, v4, v0

    if-gez v6, :cond_20

    :goto_8
    move v6, v2

    goto :goto_9

    :cond_20
    move v6, v1

    :goto_9
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto/16 :goto_d

    .line 550
    :cond_21
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_24

    .line 551
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_23

    .line 552
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

    if-lez v6, :cond_22

    move v6, v2

    goto :goto_a

    :cond_22
    move v6, v1

    :goto_a
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_d

    .line 554
    :cond_23
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_d

    .line 557
    :cond_24
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

    if-gez v6, :cond_25

    move v6, v2

    goto :goto_b

    :cond_25
    move v6, v1

    :goto_b
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_d

    .line 561
    :cond_26
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

    if-gez v7, :cond_28

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x455ac000    # 3500.0f

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_27

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v7, v6

    if-gez v6, :cond_28

    :cond_27
    move v6, v2

    goto :goto_c

    :cond_28
    move v6, v1

    :goto_c
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    .line 565
    :goto_d
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v6, :cond_2a

    .line 566
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 567
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_29

    .line 568
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

    .line 569
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2d

    .line 570
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

    .line 573
    :cond_29
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

    .line 574
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2d

    .line 575
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

    .line 578
    :cond_2a
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ltz v6, :cond_2c

    .line 579
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v6, p1

    .line 580
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_2b

    .line 581
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

    .line 582
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2d

    .line 583
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

    .line 586
    :cond_2b
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

    .line 587
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v6, v2

    if-eqz v7, :cond_2d

    .line 588
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

    :cond_2c
    move p1, v0

    .line 592
    :cond_2d
    :goto_e
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-gez v6, :cond_2f

    new-array v6, v3, [F

    .line 593
    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    aput v7, v6, v1

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v7, :cond_2e

    move v7, v0

    goto :goto_f

    :cond_2e
    move v7, v5

    :goto_f
    aput v7, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 594
    new-instance v7, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 597
    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aput-object v6, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2f
    new-array v3, v3, [F

    .line 599
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 600
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 601
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v3, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 602
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v6, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 605
    div-int/lit8 v6, v3, 0x2

    mul-float v7, p1, v5

    int-to-float v3, v3

    div-float/2addr v7, v3

    .line 606
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v6, v6

    .line 607
    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v6, v3

    .line 608
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v3, v0

    if-lez v0, :cond_30

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v6, v3

    .line 611
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_10

    .line 613
    :cond_30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v5

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_10
    const/16 v0, 0x96

    const/16 v3, 0x258

    .line 616
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$5;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 647
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    .line 648
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    .line 650
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate()V

    goto :goto_11

    .line 652
    :cond_31
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_32

    .line 654
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 657
    :cond_32
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_33

    .line 658
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 659
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    .line 662
    :cond_33
    :goto_12
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez p1, :cond_34

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz p1, :cond_35

    :cond_34
    move v1, v2

    :cond_35
    return v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public rebuild(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 756
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 757
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->hasStableId()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move p1, v2

    .line 760
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 761
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 762
    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 764
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 765
    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 766
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, v1, v3

    .line 768
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v1, v2

    aput-object v4, v1, v3

    .line 770
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
    move v1, v2

    .line 772
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, p1, v3

    if-eqz v1, :cond_5

    .line 774
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, p1, v3

    .line 777
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, p1, v2

    if-eqz v1, :cond_6

    .line 778
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 779
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, p1, v2

    :cond_6
    return-void

    .line 783
    :cond_7
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_8

    .line 784
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 786
    :cond_8
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-gez v4, :cond_9

    .line 787
    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 789
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v5

    aput v5, v4, v2

    .line 790
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v2

    .line 791
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v5, v2

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v7, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 792
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 793
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 796
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

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

    move p1, v2

    :cond_b
    if-eqz p1, :cond_c

    .line 802
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    .line 804
    :cond_c
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    if-eqz p1, :cond_11

    .line 806
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 807
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v3

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 808
    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 818
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v2

    if-eqz v0, :cond_e

    .line 819
    aget-object p1, p1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 821
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v3

    if-eqz v0, :cond_f

    .line 822
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

    .line 825
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, p1, v2

    if-eqz v0, :cond_10

    .line 826
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

    .line 829
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1402(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 832
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 833
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$6;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 860
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 861
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    .line 862
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 865
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, p1, v3

    if-eqz v1, :cond_12

    .line 866
    aget-object p1, p1, v3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 867
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

    .line 428
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 431
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4

    .line 186
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 187
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    .line 188
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    .line 189
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    .line 191
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabPageSelected(I)V

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :cond_1
    if-eqz v0, :cond_2

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v1

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 196
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v1

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 199
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 200
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 204
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    .line 205
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x21c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V
    .locals 4

    .line 163
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    return-void
.end method

.method public setAllowDisallowInterceptTouch(Z)V
    .locals 0

    .line 1958
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 5

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 725
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 726
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 730
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eq v0, p1, :cond_2

    .line 732
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 733
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 734
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    .line 735
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v2

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p0, v3, v1, v4, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onItemSelected(Landroid/view/View;Landroid/view/View;II)V

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 738
    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    :cond_2
    return-void
.end method

.method protected tabMarginDp()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method
