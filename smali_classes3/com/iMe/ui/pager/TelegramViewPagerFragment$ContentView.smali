.class final Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;
.super Landroid/widget/FrameLayout;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentView"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramViewPagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/iMe/ui/pager/TelegramViewPagerFragment$ContentView\n+ 2 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,913:1\n240#2,2:914\n243#2:917\n302#3:916\n260#3:918\n*S KotlinDebug\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/iMe/ui/pager/TelegramViewPagerFragment$ContentView\n*L\n564#1:914,2\n564#1:917\n565#1:916\n679#1:918\n*E\n"
.end annotation


# instance fields
.field private additionalOffset:F

.field private backAnimation:Z

.field private globalIgnoreLayout:Z

.field private final maximumVelocity$delegate:Lkotlin/Lazy;

.field private maybeStartTracking:Z

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private tabsAnimation:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 532
    new-instance p2, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$maximumVelocity$2;

    invoke-direct {p2, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$maximumVelocity$2;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maximumVelocity$delegate:Lkotlin/Lazy;

    const/4 p1, 0x0

    .line 545
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getBackAnimation$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;)Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->backAnimation:Z

    return p0
.end method

.method public static final synthetic access$setMaybeStartTracking$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maybeStartTracking:Z

    return-void
.end method

.method public static final synthetic access$setTabsAnimation$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final checkTabsAnimationInProgress()Z
    .locals 7

    .line 856
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 858
    iget-boolean v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->backAnimation:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 861
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    .line 862
    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v5

    :cond_0
    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 861
    invoke-virtual {v0, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    goto :goto_1

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    .line 867
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    int-to-float v2, v2

    mul-float/2addr v4, v2

    .line 866
    invoke-virtual {v0, v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 868
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-eqz v5, :cond_5

    .line 872
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 873
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 874
    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 876
    :cond_4
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0, v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    .line 878
    :cond_5
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v0

    return v0

    :cond_6
    return v1
.end method

.method private final getMaximumVelocity()I
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maximumVelocity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 884
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getNextPageId(Z)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 888
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 889
    iput-boolean v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maybeStartTracking:Z

    .line 890
    iput-boolean v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    .line 891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingX:I

    .line 892
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 893
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 894
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setSelectedType(I)V

    .line 895
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    const/4 v0, 0x0

    invoke-static {p1, v1, v3, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 896
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    .line 897
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$switchToCurrentSelectedMode(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    if-eqz p2, :cond_1

    .line 899
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    neg-float p2, p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    :goto_0
    return v3
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 596
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getParentLayout$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getParentLayout$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 597
    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getBackgroundPaint$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 621
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float v4, v0, v1

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    .line 624
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getBackgroundPaint$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    move-object v2, p1

    .line 619
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->isAnimatingIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 572
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 573
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getFragmentContextView$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    .line 574
    invoke-static {p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 575
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    move-result p5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 549
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 550
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 551
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 552
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 553
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x1

    .line 554
    iput-boolean v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->globalIgnoreLayout:Z

    .line 555
    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v2

    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 556
    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    .line 558
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAdditionalPadding$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)I

    move-result v7

    add-int/2addr v7, v0

    const/high16 v8, 0x40800000    # 4.0f

    .line 560
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 556
    invoke-virtual {v6, v4, v7, v4, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 563
    :cond_0
    iput-boolean v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->globalIgnoreLayout:Z

    .line 564
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_3

    .line 241
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const-string v5, "getChildAt(i)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v4

    :goto_2
    if-nez v5, :cond_2

    .line 565
    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    if-eq v6, v5, :cond_2

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    .line 566
    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 629
    iget-boolean v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 631
    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    .line 632
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 634
    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->checkTabsAnimationInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 637
    iput-boolean v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingPointerId:I

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingX:I

    .line 640
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 641
    iget v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingX:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 642
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    iput v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    goto/16 :goto_1

    .line 644
    :cond_4
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    .line 645
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    aput-object v6, v5, v0

    .line 646
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aput-object v4, v5, v3

    .line 647
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    .line 648
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    iput v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    .line 649
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v4

    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 650
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v4

    .line 651
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v5

    .line 652
    iget v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 650
    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 654
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$switchToCurrentSelectedMode(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    goto/16 :goto_1

    .line 657
    :cond_5
    iget v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingX:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 658
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    .line 659
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    aput-object v6, v5, v0

    .line 660
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aput-object v4, v5, v3

    .line 661
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    .line 662
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    iput v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    .line 663
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v4

    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 664
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v4

    .line 665
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v5

    .line 666
    iget v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 664
    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 668
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$switchToCurrentSelectedMode(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    goto :goto_1

    .line 670
    :cond_6
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    iput v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    .line 673
    :goto_1
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 674
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 675
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_8

    .line 677
    iput v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    :cond_8
    :goto_2
    if-eqz p1, :cond_a

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maybeStartTracking:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v4

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    move v4, v3

    goto :goto_3

    :cond_9
    move v4, v0

    :goto_3
    if-eqz v4, :cond_a

    .line 680
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingPointerId:I

    .line 681
    iput-boolean v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maybeStartTracking:Z

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingX:I

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingY:I

    .line 684
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_f

    :cond_a
    const/4 v4, 0x2

    if-eqz p1, :cond_13

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_13

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_13

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 688
    iget-boolean v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-gtz v1, :cond_c

    :cond_b
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v5

    if-nez v5, :cond_f

    if-gez v1, :cond_f

    :cond_c
    if-gez v1, :cond_d

    move v5, v3

    goto :goto_4

    :cond_d
    move v5, v0

    .line 689
    :goto_4
    invoke-direct {p0, p1, v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-nez v5, :cond_f

    .line 690
    iput-boolean v3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maybeStartTracking:Z

    .line 691
    iput-boolean v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    .line 692
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 693
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    .line 694
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    goto :goto_5

    :cond_e
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    neg-float v6, v6

    .line 693
    :goto_5
    invoke-virtual {v5, v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 695
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v5}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    .line 698
    :cond_f
    iget-boolean v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maybeStartTracking:Z

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    if-nez v2, :cond_11

    const v2, 0x3e99999a    # 0.3f

    .line 699
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    .line 700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 701
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_24

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_24

    if-gez v1, :cond_10

    move v0, v3

    .line 702
    :cond_10
    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_f

    .line 704
    :cond_11
    iget-boolean p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    if-eqz p1, :cond_24

    .line 705
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    int-to-float v2, v1

    invoke-virtual {p1, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 706
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 707
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    goto :goto_6

    .line 709
    :cond_12
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p1, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setTranslationX(F)V

    .line 711
    :goto_6
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 712
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v1

    .line 712
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    goto/16 :goto_f

    :cond_13
    const/4 v5, 0x3

    if-eqz p1, :cond_14

    .line 717
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v3, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_24

    .line 718
    :cond_14
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v7, 0x3e8

    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->getMaximumVelocity()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz p1, :cond_16

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_16

    .line 722
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 723
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 724
    iget-boolean v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    if-nez v7, :cond_17

    .line 725
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x453b8000    # 3000.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_17

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    cmpg-float v7, v5, v2

    if-gez v7, :cond_15

    move v7, v3

    goto :goto_7

    :cond_15
    move v7, v0

    .line 726
    :goto_7
    invoke-direct {p0, p1, v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_8

    :cond_16
    move v5, v2

    move v6, v5

    .line 733
    :cond_17
    :goto_8
    iget-boolean p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    if-eqz p1, :cond_23

    .line 734
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    .line 735
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    .line 736
    iget v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->additionalOffset:F

    cmpg-float v7, v7, v2

    if-nez v7, :cond_18

    move v7, v3

    goto :goto_9

    :cond_18
    move v7, v0

    :goto_9
    if-nez v7, :cond_1c

    .line 737
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x44bb8000    # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1a

    .line 738
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v6

    if-eqz v6, :cond_19

    cmpl-float v6, v5, v2

    if-lez v6, :cond_1e

    goto/16 :goto_a

    :cond_19
    cmpg-float v6, v5, v2

    if-gez v6, :cond_1e

    goto/16 :goto_a

    .line 740
    :cond_1a
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 741
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    shr-int/2addr v7, v3

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1e

    goto :goto_a

    .line 743
    :cond_1b
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    shr-int/2addr v7, v3

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1e

    goto :goto_a

    .line 747
    :cond_1c
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v8}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1e

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x455ac000    # 3500.0f

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1d

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 749
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v7, v6

    if-gez v6, :cond_1e

    :cond_1d
    :goto_a
    move v6, v3

    goto :goto_b

    :cond_1e
    move v6, v0

    .line 736
    :goto_b
    iput-boolean v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->backAnimation:Z

    if-eqz v6, :cond_20

    .line 753
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 754
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 755
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v4, v4, [Landroid/animation/Animator;

    .line 757
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    .line 758
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v2, v9, v0

    .line 756
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v0

    .line 762
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v3

    .line 763
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    .line 764
    iget-object v10, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v10}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v0

    .line 761
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v3

    .line 755
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_c

    .line 768
    :cond_1f
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v4, v4, [Landroid/animation/Animator;

    .line 770
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    .line 771
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v2, v9, v0

    .line 769
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v0

    .line 775
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v3

    .line 776
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    .line 777
    iget-object v10, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v10}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    neg-float v10, v10

    aput v10, v9, v0

    .line 774
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v3

    .line 768
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_c

    .line 782
    :cond_20
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v6, p1

    .line 783
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v6}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 784
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v4, v4, [Landroid/animation/Animator;

    .line 786
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    .line 787
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    .line 788
    iget-object v10, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v10}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v10

    aget-object v10, v10, v0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    neg-float v10, v10

    aput v10, v9, v0

    .line 785
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v0

    .line 789
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v3

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v2, v9, v0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v3

    .line 784
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_c

    .line 792
    :cond_21
    iget-object v6, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v4, v4, [Landroid/animation/Animator;

    .line 794
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v0

    .line 795
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    .line 796
    iget-object v10, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v10}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v10

    aget-object v10, v10, v0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v0

    .line 793
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v0

    .line 797
    iget-object v7, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v7}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v7

    aget-object v7, v7, v3

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v2, v9, v0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v3

    .line 792
    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 801
    :goto_c
    iget-object v4, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getInterpolator$cp()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 802
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    .line 803
    div-int/lit8 v6, v4, 0x2

    mul-float v7, p1, v1

    int-to-float v4, v4

    div-float/2addr v7, v4

    .line 804
    invoke-static {v1, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v4

    int-to-float v6, v6

    .line 806
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v6, v4

    .line 809
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_22

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v6, v4

    .line 811
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_d

    .line 813
    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    :goto_d
    const/16 v1, 0x96

    const/16 v2, 0x258

    .line 816
    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 817
    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 818
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;

    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-direct {v1, p0, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView$onTouchEvent$1;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 837
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 838
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V

    .line 839
    iput-boolean v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    goto :goto_e

    .line 841
    :cond_23
    iput-boolean v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->maybeStartTracking:Z

    .line 842
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 843
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    .line 845
    :goto_e
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_24

    .line 846
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 847
    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 850
    :cond_24
    :goto_f
    iget-boolean p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->startedTracking:Z

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 605
    iget-boolean v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->globalIgnoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 4

    .line 580
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setAdditionalPadding$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;I)V

    .line 581
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getFragmentContextView$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    iget-object p3, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 582
    :goto_0
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 583
    iget-object p2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    move v0, p4

    :goto_1
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    .line 584
    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    .line 586
    iget-object v2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getAdditionalPadding$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)I

    move-result v2

    add-int/2addr v2, p1

    const/high16 v3, 0x40800000    # 4.0f

    .line 588
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 584
    invoke-virtual {v1, p4, v2, p4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;->requestLayout()V

    return-void
.end method
