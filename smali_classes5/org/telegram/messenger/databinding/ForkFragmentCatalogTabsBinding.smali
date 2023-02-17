.class public final Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;
.super Ljava/lang/Object;
.source "ForkFragmentCatalogTabsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final catalogPager:Lorg/fork/ui/view/TabbedViewPager;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lorg/fork/ui/view/TabbedViewPager;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 28
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->catalogPager:Lorg/fork/ui/view/TabbedViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;
    .locals 2

    .line 58
    sget v0, Lorg/telegram/messenger/R$id;->catalog_pager:I

    .line 59
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/fork/ui/view/TabbedViewPager;

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;-><init>(Landroid/widget/FrameLayout;Lorg/fork/ui/view/TabbedViewPager;)V

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;
    .locals 2

    .line 45
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_catalog_tabs:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
