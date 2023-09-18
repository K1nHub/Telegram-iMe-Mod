.class public abstract Lcom/iMe/ui/pager/TelegramViewPagerFragment;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/pager/TelegramViewPagerFragment$Companion;,
        Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;,
        Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramViewPagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/iMe/ui/pager/TelegramViewPagerFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,913:1\n13579#2,2:914\n13644#2,3:917\n13644#2,3:920\n1#3:916\n244#4,4:923\n262#5,2:927\n*S KotlinDebug\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/iMe/ui/pager/TelegramViewPagerFragment\n*L\n98#1:914,2\n332#1:917,3\n394#1:920,3\n414#1:923,4\n427#1:927,2\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private additionalPadding:I

.field private animatingForward:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final floatingActionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private final pagesData$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final scrollSlidingTextTabStrip$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final scrollY:Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;

.field private tabsAnimationInProgress:Z

.field private final viewPages$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;


# direct methods
.method public static synthetic $r8$lambda$X3dYSw71BeNNG29PlR7-Tjt_GeE(F)F
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->interpolator$lambda$13(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$n_ULBgBvn81lFDXL00PJPx7edEw(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->setupListeners$lambda$7(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "viewPages"

    const-string v4, "getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 74
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "pagesData"

    const-string v4, "getPagesData()[Lcom/iMe/ui/pager/ViewPageData;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 75
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "scrollSlidingTextTabStrip"

    const-string v4, "getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 77
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "floatingActionButton"

    const-string v4, "getFloatingActionButton()Lcom/iMe/fork/ui/view/FloatingActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 911
    sget-object v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda1;

    sput-object v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$viewPages$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$viewPages$2;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->viewPages$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 74
    new-instance v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$pagesData$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$pagesData$2;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->pagesData$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 75
    new-instance v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->scrollSlidingTextTabStrip$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 77
    new-instance v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->floatingActionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->backgroundPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->scrollY:Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;

    return-void
.end method

.method public static final synthetic access$checkScroll(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->checkScroll(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static final synthetic access$getAdditionalPadding$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->additionalPadding:I

    return p0
.end method

.method public static final synthetic access$getAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->animatingForward:Z

    return p0
.end method

.method public static final synthetic access$getBackgroundPaint$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Landroid/graphics/Paint;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getFragmentContextView$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/FragmentContextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-object p0
.end method

.method public static final synthetic access$getInterpolator$cp()Landroid/view/animation/Interpolator;
    .locals 1

    .line 49
    sget-object v0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getParentLayout$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method public static final synthetic access$getScrollSlidingTextTabStrip(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->tabsAnimationInProgress:Z

    return p0
.end method

.method public static final synthetic access$initPager(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->initPager()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTabLayout(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->initTabLayout()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAdditionalPadding$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->additionalPadding:I

    return-void
.end method

.method public static final synthetic access$setAnimatingForward$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->animatingForward:Z

    return-void
.end method

.method public static final synthetic access$setScrollY(Lcom/iMe/ui/pager/TelegramViewPagerFragment;F)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->setScrollY(F)V

    return-void
.end method

.method public static final synthetic access$setTabsAnimationInProgress$p(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->tabsAnimationInProgress:Z

    return-void
.end method

.method public static final synthetic access$switchToCurrentSelectedMode(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->switchToCurrentSelectedMode(Z)V

    return-void
.end method

.method public static final synthetic access$updateFab(Lcom/iMe/ui/pager/TelegramViewPagerFragment;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->updateFab(I)V

    return-void
.end method

.method private final checkScroll(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .line 244
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 416
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 417
    invoke-static {v5, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    if-ge v2, v0, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->resetScroll()V

    :cond_1
    return-void
.end method

.method private final createFragmentContextView(Lcom/iMe/ui/pager/FragmentContextViewParams;)Lorg/telegram/ui/Components/FragmentContextView;
    .locals 3

    .line 351
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 352
    invoke-virtual {p1}, Lcom/iMe/ui/pager/FragmentContextViewParams;->getSupportsCalls()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setSupportsCalls(Z)V

    .line 353
    invoke-virtual {p1}, Lcom/iMe/ui/pager/FragmentContextViewParams;->getSupportsVoices()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->setSupportsVoices(Z)V

    return-object v0
.end method

.method private final getFloatingActionButton()Lcom/iMe/fork/ui/view/FloatingActionButton;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->floatingActionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/FloatingActionButton;

    return-object v0
.end method

.method private final getPagesData()[Lcom/iMe/ui/pager/ViewPageData;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->pagesData$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/ui/pager/ViewPageData;

    return-object v0
.end method

.method private final getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->scrollSlidingTextTabStrip$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object v0
.end method

.method private final initPager()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    .line 289
    new-instance v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "parentActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 290
    new-instance v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v1, v0, v3

    return-object v0
.end method

.method private final initTabLayout()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 9

    .line 293
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getInitialTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 295
    new-instance v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 332
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getPagesData()[Lcom/iMe/ui/pager/ViewPageData;

    move-result-object v1

    .line 13645
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    add-int/lit8 v7, v5, 0x1

    .line 332
    invoke-virtual {v6}, Lcom/iMe/ui/pager/ViewPageData;->getTabTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->finishAddingTabs()V

    .line 334
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->setSelectedType(I)V

    .line 335
    invoke-direct {p0, v3}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->switchToCurrentSelectedMode(Z)V

    .line 336
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x1

    const/16 v3, 0x2c

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getAdditionalActionBarHeight()I

    move-result v8

    .line 338
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 336
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final interpolator$lambda$13(F)F
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    add-float/2addr p0, v0

    float-to-double v0, p0

    const/4 p0, 0x5

    int-to-double v2, p0

    .line 911
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    return p0
.end method

.method private final setScrollY(F)V
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 407
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->additionalPadding:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 408
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 5

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 358
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 359
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 360
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getToolbarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x42300000    # 44.0f

    .line 361
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getAdditionalActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setExtraHeight(I)V

    const/4 v1, 0x0

    .line 362
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 363
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 364
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setClipContent(Z)V

    .line 365
    new-instance v3, Lcom/iMe/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 371
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 372
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 377
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lcom/iMe/fork/ui/view/FloatingActionButton;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$7(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->onFabClick(I)V

    return-void
.end method

.method private final switchToCurrentSelectedMode(Z)V
    .locals 8

    .line 383
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 384
    invoke-virtual {v4}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object p1, v0, p1

    .line 387
    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    .line 390
    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListViewLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 393
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    .line 394
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getPagesData()[Lcom/iMe/ui/pager/ViewPageData;

    move-result-object v1

    .line 13645
    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v1, v2

    add-int/lit8 v6, v4, 0x1

    .line 395
    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v7

    if-ne v7, v4, :cond_3

    .line 396
    invoke-virtual {v5}, Lcom/iMe/ui/pager/ViewPageData;->getListAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    move-result-object v4

    if-eq v0, v4, :cond_3

    .line 397
    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v5}, Lcom/iMe/ui/pager/ViewPageData;->getListAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final updateFab(I)V
    .locals 3

    .line 425
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getPagesData()[Lcom/iMe/ui/pager/ViewPageData;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/iMe/ui/pager/ViewPageData;->getFabIconResId()I

    move-result p1

    .line 426
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lcom/iMe/fork/ui/view/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 262
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/view/FloatingActionButton;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getFirstTabId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getAdditionalActionBarHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getCurrentTabId()I
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method public abstract getFragmentContextViewParams()Lcom/iMe/ui/pager/FragmentContextViewParams;
.end method

.method public abstract getInitialTabId()I
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 130
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 131
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 132
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lcom/iMe/fork/ui/view/FloatingActionButton;

    move-result-object v2

    new-instance v8, Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/view/FloatingActionButton;)V

    .line 137
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    .line 130
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 139
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 140
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 141
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 146
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    .line 139
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 148
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 149
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 150
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 155
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    .line 148
    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 157
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 158
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 159
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 164
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v12, 0x0

    move-object v6, v3

    .line 157
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 166
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 167
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 168
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 173
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v6, v3

    .line 166
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 175
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    .line 178
    const-class v5, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    aput-object v5, v9, v2

    const-string v5, "selectorDrawable"

    .line 179
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    .line 183
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    .line 175
    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 185
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    .line 187
    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    .line 188
    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v2

    .line 192
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    const/4 v10, 0x0

    move-object v6, v3

    .line 185
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x6

    aput-object v3, v1, v5

    .line 194
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    .line 196
    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    .line 197
    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v2

    .line 201
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    move-object v6, v3

    .line 194
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 203
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    .line 205
    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    .line 206
    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v2

    .line 210
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    move-object v6, v3

    .line 203
    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 212
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 213
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 214
    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    .line 215
    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v9, v2

    const-string v5, "frameLayout"

    .line 216
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    .line 220
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    const/4 v13, 0x0

    move-object v6, v3

    .line 212
    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v6, 0x9

    aput-object v3, v1, v6

    .line 222
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 223
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 224
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    .line 225
    const-class v6, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v6, v10, v2

    const-string v6, "playButton"

    .line 226
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    .line 230
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPlayPause:I

    const/4 v14, 0x0

    move-object v7, v3

    .line 222
    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v6, 0xa

    aput-object v3, v1, v6

    .line 232
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 233
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 234
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v9, v6, v7

    new-array v10, v4, [Ljava/lang/Class;

    .line 235
    const-class v6, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v6, v10, v2

    const-string v6, "titleTextView"

    .line 236
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    .line 240
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    move-object v7, v3

    .line 232
    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0xb

    aput-object v3, v1, v7

    .line 242
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 243
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 244
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    or-int v10, v7, v8

    new-array v11, v4, [Ljava/lang/Class;

    .line 245
    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v11, v2

    .line 246
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    .line 250
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    const/4 v15, 0x0

    move-object v8, v3

    .line 242
    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0xc

    aput-object v3, v1, v7

    .line 252
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 253
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 254
    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    .line 255
    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v11, v2

    const-string v7, "closeButton"

    .line 256
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    .line 260
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    move-object v8, v3

    .line 252
    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v7, 0xd

    aput-object v3, v1, v7

    .line 262
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 263
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 264
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v10, v7, v8

    new-array v11, v4, [Ljava/lang/Class;

    .line 265
    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v11, v2

    .line 266
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    .line 270
    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallBackground:I

    move-object v8, v3

    .line 262
    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v5, 0xe

    aput-object v3, v1, v5

    .line 272
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 273
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 274
    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v9, v5, v7

    new-array v10, v4, [Ljava/lang/Class;

    .line 275
    const-class v4, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v4, v10, v2

    .line 276
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    .line 280
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    const/4 v12, 0x0

    move-object v7, v3

    .line 272
    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0xf

    aput-object v3, v1, v2

    .line 129
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public abstract getToolbarTitle()Ljava/lang/String;
.end method

.method protected final getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->viewPages$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    return-object v0
.end method

.method public abstract initPageData()[Lcom/iMe/ui/pager/ViewPageData;
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->canBeginSlide()Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->setupActionBar()V

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->setupListeners()V

    .line 96
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getInitialTabId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->updateFab(I)V

    .line 97
    new-instance p1, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ContentView;-><init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 99
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getFragmentContextViewParams()Lcom/iMe/ui/pager/FragmentContextViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/pager/FragmentContextViewParams;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getFragmentContextViewParams()Lcom/iMe/ui/pager/FragmentContextViewParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->createFragmentContextView(Lcom/iMe/ui/pager/FragmentContextViewParams;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v4, -0x1

    const/16 v5, 0x27

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/16 v8, -0x27

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 105
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-direct {p0}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lcom/iMe/fork/ui/view/FloatingActionButton;

    move-result-object v0

    const/16 v1, 0x38

    const/16 v2, 0x38

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/16 v7, 0xe

    .line 119
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public abstract onFabClick(I)V
.end method

.method public abstract onListItemClick(Landroid/view/View;IFF)V
.end method

.method public abstract onListItemLongClick(Landroid/view/View;IFF)Z
.end method

.method public abstract onMenuItemClick(I)V
.end method

.method protected final resetScroll()V
    .locals 6

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 441
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v2, [Landroid/animation/Animator;

    .line 442
    iget-object v5, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->scrollY:Lcom/iMe/ui/pager/TelegramViewPagerFragment$scrollY$1;

    new-array v2, v2, [F

    aput v1, v2, v3

    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 443
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xb4

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 445
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
