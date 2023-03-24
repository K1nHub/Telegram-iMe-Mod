.class public abstract Lcom/smedialink/ui/pager/TelegramViewPagerFragment;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/pager/TelegramViewPagerFragment$Companion;,
        Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ContentView;,
        Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramViewPagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/smedialink/ui/pager/TelegramViewPagerFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ViewExt.kt\ncom/smedialink/utils/extentions/common/ViewExtKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,655:1\n13579#2,2:656\n13644#2,3:659\n13644#2,3:662\n1#3:658\n191#4,4:665\n262#5,2:669\n*S KotlinDebug\n*F\n+ 1 TelegramViewPagerFragment.kt\ncom/smedialink/ui/pager/TelegramViewPagerFragment\n*L\n90#1:656,2\n171#1:659,3\n221#1:662,3\n241#1:665,4\n254#1:669,2\n*E\n"
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

.field private final floatingActionButton$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private final pagesData$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final scrollSlidingTextTabStrip$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final scrollY:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$scrollY$1;

.field private tabsAnimationInProgress:Z

.field private final viewPages$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;


# direct methods
.method public static synthetic $r8$lambda$mjTIP16kUi8DkpDGR5Ozq4Lz3JM(F)F
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->interpolator$lambda$13(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ytP8B4v5QuZtgxA6M94YZMGg7gM(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->setupListeners$lambda$7(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 59
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "viewPages"

    const-string v4, "getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 67
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "pagesData"

    const-string v4, "getPagesData()[Lcom/smedialink/ui/pager/ViewPageData;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 68
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "scrollSlidingTextTabStrip"

    const-string v4, "getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 70
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "floatingActionButton"

    const-string v4, "getFloatingActionButton()Lorg/fork/ui/view/FloatingActionButton;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 653
    sget-object v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda1;

    sput-object v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$viewPages$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$viewPages$2;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->viewPages$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 67
    new-instance v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$pagesData$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$pagesData$2;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->pagesData$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 68
    new-instance v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$scrollSlidingTextTabStrip$2;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->scrollSlidingTextTabStrip$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 70
    new-instance v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$floatingActionButton$2;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->floatingActionButton$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->backgroundPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$scrollY$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$scrollY$1;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    iput-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->scrollY:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$scrollY$1;

    return-void
.end method

.method public static final synthetic access$checkScroll(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->checkScroll(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic access$getActionBar$p$s1999807853(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static final synthetic access$getAdditionalPadding$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->additionalPadding:I

    return p0
.end method

.method public static final synthetic access$getAnimatingForward$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->animatingForward:Z

    return p0
.end method

.method public static final synthetic access$getBackgroundPaint$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Landroid/graphics/Paint;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getFragmentContextView$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/FragmentContextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-object p0
.end method

.method public static final synthetic access$getInterpolator$cp()Landroid/view/animation/Interpolator;
    .locals 1

    .line 42
    sget-object v0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getParentLayout$p$s1999807853(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method public static final synthetic access$getScrollSlidingTextTabStrip(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTabsAnimationInProgress$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->tabsAnimationInProgress:Z

    return p0
.end method

.method public static final synthetic access$initPager(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->initPager()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTabLayout(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->initTabLayout()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAdditionalPadding$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->additionalPadding:I

    return-void
.end method

.method public static final synthetic access$setAnimatingForward$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->animatingForward:Z

    return-void
.end method

.method public static final synthetic access$setScrollY(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;F)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->setScrollY(F)V

    return-void
.end method

.method public static final synthetic access$setTabsAnimationInProgress$p(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->tabsAnimationInProgress:Z

    return-void
.end method

.method public static final synthetic access$switchToCurrentSelectedMode(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->switchToCurrentSelectedMode(Z)V

    return-void
.end method

.method public static final synthetic access$updateFab(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->updateFab(I)V

    return-void
.end method

.method private final checkScroll(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .line 191
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 243
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 244
    invoke-static {v5, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    if-ge v2, v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->resetScroll()V

    :cond_1
    return-void
.end method

.method private final createFragmentContextView(Lcom/smedialink/ui/pager/FragmentContextViewParams;)Lorg/telegram/ui/Components/FragmentContextView;
    .locals 3

    .line 178
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 179
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/FragmentContextViewParams;->getSupportsCalls()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setSupportsCalls(Z)V

    .line 180
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/FragmentContextViewParams;->getSupportsVoices()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->setSupportsVoices(Z)V

    return-object v0
.end method

.method private final getFloatingActionButton()Lorg/fork/ui/view/FloatingActionButton;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->floatingActionButton$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/view/FloatingActionButton;

    return-object v0
.end method

.method private final getPagesData()[Lcom/smedialink/ui/pager/ViewPageData;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->pagesData$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/ui/pager/ViewPageData;

    return-object v0
.end method

.method private final getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->scrollSlidingTextTabStrip$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    return-object v0
.end method

.method private final initPager()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    .line 130
    new-instance v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "parentActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 131
    new-instance v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method private final initTabLayout()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;
    .locals 9

    .line 134
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getInitialTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setInitialTabId(I)V

    .line 136
    new-instance v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$initTabLayout$1$1;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 171
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getPagesData()[Lcom/smedialink/ui/pager/ViewPageData;

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

    .line 171
    invoke-virtual {v6}, Lcom/smedialink/ui/pager/ViewPageData;->getTabTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->finishAddingTabs()V

    .line 173
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->setSelectedType(I)V

    .line 174
    invoke-direct {p0, v3}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->switchToCurrentSelectedMode(Z)V

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x1

    const/16 v3, 0x2c

    const/16 v4, 0x53

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getAdditionalActionBarHeight()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

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

    .line 653
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    return p0
.end method

.method private final setScrollY(F)V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 234
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->additionalPadding:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 235
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 185
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 186
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 187
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getToolbarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x42300000    # 44.0f

    .line 188
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getAdditionalActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setExtraHeight(I)V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 190
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 191
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setClipContent(Z)V

    .line 192
    new-instance v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 198
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 199
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lorg/fork/ui/view/FloatingActionButton;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$7(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->onFabClick(I)V

    return-void
.end method

.method private final switchToCurrentSelectedMode(Z)V
    .locals 8

    .line 210
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 211
    invoke-virtual {v4}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    aget-object p1, v0, p1

    .line 214
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 217
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListViewLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    .line 221
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getPagesData()[Lcom/smedialink/ui/pager/ViewPageData;

    move-result-object v1

    .line 13645
    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v1, v2

    add-int/lit8 v6, v4, 0x1

    .line 222
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getSelectedType()I

    move-result v7

    if-ne v7, v4, :cond_3

    .line 223
    invoke-virtual {v5}, Lcom/smedialink/ui/pager/ViewPageData;->getListAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    move-result-object v4

    if-eq v0, v4, :cond_3

    .line 224
    invoke-virtual {p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v5}, Lcom/smedialink/ui/pager/ViewPageData;->getListAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

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

    .line 252
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getPagesData()[Lcom/smedialink/ui/pager/ViewPageData;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/smedialink/ui/pager/ViewPageData;->getFabIconResId()I

    move-result p1

    .line 253
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lorg/fork/ui/view/FloatingActionButton;

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

    .line 255
    invoke-virtual {v0, p1}, Lorg/fork/ui/view/FloatingActionButton;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

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

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getCurrentTabId()I

    move-result v0

    return v0
.end method

.method public abstract getFragmentContextViewParams()Lcom/smedialink/ui/pager/FragmentContextViewParams;
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

    .line 107
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lorg/fork/ui/view/FloatingActionButton;

    move-result-object v2

    new-instance v8, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/view/FloatingActionButton;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 108
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 109
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "actionBarDefaultIcon"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 110
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 111
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v13, "actionBarDefaultSelector"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 112
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    aput-object v5, v9, v2

    const-string v5, "selectorDrawable"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v13, 0x0

    const-string v14, "actionBarTabLine"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 113
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const-string v13, "actionBarTabActiveText"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x6

    aput-object v3, v1, v5

    .line 114
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v2

    const-string v13, "actionBarTabUnactiveText"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 115
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getScrollSlidingTextTabStrip()Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getTabsContainer()Landroid/view/ViewGroup;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/TextView;

    aput-object v5, v9, v2

    const-string v13, "actionBarTabSelector"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 116
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v9, v2

    const-string v5, "frameLayout"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string v14, "inappPlayerBackground"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x9

    aput-object v3, v1, v6

    .line 117
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v6, v10, v2

    const-string v6, "playButton"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string v15, "inappPlayerPlayPause"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xa

    aput-object v3, v1, v6

    .line 118
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v9, v6, v7

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v6, v10, v2

    const-string v6, "titleTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "inappPlayerTitle"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xb

    aput-object v3, v1, v7

    .line 119
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    or-int v10, v7, v8

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    const-string v16, "inappPlayerPerformer"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xc

    aput-object v3, v1, v7

    .line 120
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v11, v2

    const-string v7, "closeButton"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "inappPlayerClose"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v1, v7

    .line 121
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v10, v7, v8

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "returnToCallBackground"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xe

    aput-object v3, v1, v5

    .line 122
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v9, v5, v7

    new-array v10, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v4, v10, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v15, "returnToCallText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v3, v1, v2

    .line 106
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public abstract getToolbarTitle()Ljava/lang/String;
.end method

.method protected final getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->viewPages$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    return-object v0
.end method

.method public abstract initPageData()[Lcom/smedialink/ui/pager/ViewPageData;
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->canBeginSlide()Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->setupActionBar()V

    .line 87
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->setupListeners()V

    .line 88
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getInitialTabId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->updateFab(I)V

    .line 89
    new-instance p1, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ContentView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ContentView;-><init>(Lcom/smedialink/ui/pager/TelegramViewPagerFragment;Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/smedialink/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 91
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getFragmentContextViewParams()Lcom/smedialink/ui/pager/FragmentContextViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/pager/FragmentContextViewParams;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getFragmentContextViewParams()Lcom/smedialink/ui/pager/FragmentContextViewParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->createFragmentContextView(Lcom/smedialink/ui/pager/FragmentContextViewParams;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v4, -0x1

    const/16 v5, 0x27

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/16 v8, -0x27

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 95
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-direct {p0}, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->getFloatingActionButton()Lorg/fork/ui/view/FloatingActionButton;

    move-result-object v0

    const/16 v1, 0x38

    const/16 v2, 0x38

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/16 v7, 0xe

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

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

    .line 266
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

    .line 268
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v2, [Landroid/animation/Animator;

    .line 269
    iget-object v5, p0, Lcom/smedialink/ui/pager/TelegramViewPagerFragment;->scrollY:Lcom/smedialink/ui/pager/TelegramViewPagerFragment$scrollY$1;

    new-array v2, v2, [F

    aput v1, v2, v3

    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 270
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xb4

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 272
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
