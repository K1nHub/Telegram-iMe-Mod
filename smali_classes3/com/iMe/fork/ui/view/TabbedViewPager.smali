.class public Lcom/iMe/fork/ui/view/TabbedViewPager;
.super Landroid/widget/FrameLayout;
.source "TabbedViewPager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/TabbedViewPager$Companion;
    }
.end annotation


# instance fields
.field private delegate:Lcom/iMe/fork/utils/TabbedViewPagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
            "Lcom/iMe/fork/utils/AbstractTabbedViewPage;",
            ">;"
        }
    .end annotation
.end field

.field private final pager$delegate:Lkotlin/Lazy;

.field private tabsType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

.field private final tabsView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$JCX8wVlHIzyotwzJOlkCf8XPbx0(Lcom/iMe/fork/ui/view/TabbedViewPager;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription$lambda$0(Lcom/iMe/fork/ui/view/TabbedViewPager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/TabbedViewPager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/TabbedViewPager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/ui/view/TabbedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Lcom/iMe/fork/ui/view/TabbedViewPager$tabsView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TabbedViewPager$tabsView$2;-><init>(Lcom/iMe/fork/ui/view/TabbedViewPager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->tabsView$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lcom/iMe/fork/ui/view/TabbedViewPager$pager$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TabbedViewPager$pager$2;-><init>(Lcom/iMe/fork/ui/view/TabbedViewPager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->pager$delegate:Lkotlin/Lazy;

    .line 30
    sget-object p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE_WITH_ICON:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->tabsType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

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

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/fork/ui/view/TabbedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$initPager(Lcom/iMe/fork/ui/view/TabbedViewPager;)Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->initPager()Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTabsView(Lcom/iMe/fork/ui/view/TabbedViewPager;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->initTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p0

    return-object p0
.end method

.method private static final getThemeDescription$lambda$0(Lcom/iMe/fork/ui/view/TabbedViewPager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->updateColors()V

    return-void
.end method

.method private final initPager()Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;-><init>(Lcom/iMe/fork/ui/view/TabbedViewPager;Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;-><init>(Lcom/iMe/fork/ui/view/TabbedViewPager;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    return-object v1
.end method

.method private final initTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->tabsType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZILorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
            "Lcom/iMe/fork/utils/AbstractTabbedViewPage;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->delegate:Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    return-object v0
.end method

.method public final getPager()Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->pager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object v0
.end method

.method public final getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->tabsView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tabsView>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object v0
.end method

.method public final getThemeDescription()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->delegate:Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    .line 42
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v10, v0, v1

    const/4 v1, 0x1

    .line 43
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 41
    new-instance v8, Lcom/iMe/fork/ui/view/TabbedViewPager$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/iMe/fork/ui/view/TabbedViewPager$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/TabbedViewPager;)V

    .line 43
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getBackgroundColorKey()I

    move-result v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v10, v0, v1

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/iMe/fork/utils/AbstractTabbedViewPage;",
            ">(",
            "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->delegate:Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 79
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object p1

    const/4 v0, -0x1

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/iMe/fork/utils/AbstractTabbedViewPage;",
            ">(",
            "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
            "TT;>;",
            "Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabsType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->tabsType:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    .line 36
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)V

    return-void
.end method

.method public final isSwipeBackEnabled()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->delegate:Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentTabId()I

    move-result v0

    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getFirstTabId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final setDelegate(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
            "Lcom/iMe/fork/utils/AbstractTabbedViewPage;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager;->delegate:Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    return-void
.end method
