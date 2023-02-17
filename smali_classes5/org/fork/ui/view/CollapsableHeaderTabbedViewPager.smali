.class public final Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;
.super Lorg/fork/ui/view/TabbedViewPager;
.source "CollapsableHeaderTabbedViewPager.kt"


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# direct methods
.method public static synthetic $r8$lambda$S298N9oY4kr8Acmx60Wwnr4s3TA(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->addSwipeToRefreshSupportIfNeeded$lambda-3(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fvAWKfDjW-Qo6cZ9klnc1ZBQ8qE(Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->init$lambda-2$lambda-1$lambda-0(Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lorg/fork/ui/view/TabbedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->binding:Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    .line 26
    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final addSwipeToRefreshSupportIfNeeded()V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/fork/ui/view/TabbedViewPager;->getDelegate()Lorg/fork/utils/TabbedViewPagerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/fork/utils/TabbedViewPagerDelegate;->getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 80
    new-instance v1, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager$$ExternalSyntheticLambda1;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 81
    iget-object v0, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->binding:Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 82
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    iput-object v1, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    :cond_2
    return-void
.end method

.method private static final addSwipeToRefreshSupportIfNeeded$lambda-3(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 79
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method private static final init$lambda-2$lambda-1$lambda-0(Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public init(Lorg/fork/utils/TabbedViewPagerDelegate;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fork/utils/AbstractTabbedViewPage;",
            ">(",
            "Lorg/fork/utils/TabbedViewPagerDelegate<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Lorg/fork/ui/view/TabbedViewPager;->setDelegate(Lorg/fork/utils/TabbedViewPagerDelegate;)V

    .line 33
    iget-object v0, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->binding:Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    .line 34
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->frameTabsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-interface {p1}, Lorg/fork/utils/TabbedViewPagerDelegate;->getScrollableHeaderView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->frameCollapsingContentContainer:Landroid/widget/FrameLayout;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->removeSelfFromParent(Landroid/view/View;)V

    :cond_0
    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/16 v9, 0x2c

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 43
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance p1, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->framePagesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :cond_1
    invoke-direct {p0}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->addSwipeToRefreshSupportIfNeeded()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 67
    invoke-direct {p0}, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->addSwipeToRefreshSupportIfNeeded()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->binding:Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkViewCollapsableHeaderPagerBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/fork/ui/view/CollapsableHeaderTabbedViewPager;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
