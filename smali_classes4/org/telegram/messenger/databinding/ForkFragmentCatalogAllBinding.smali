.class public final Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;
.super Ljava/lang/Object;
.source "ForkFragmentCatalogAllBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

.field public final recycleCategories:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/iMe/ui/custom/state/GlobalStateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 32
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 33
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->recycleCategories:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;
    .locals 3

    .line 63
    sget v0, Lorg/telegram/messenger/R$id;->global_state_layout:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/custom/state/GlobalStateLayout;

    if-eqz v1, :cond_0

    .line 69
    sget v0, Lorg/telegram/messenger/R$id;->recycle_categories:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    check-cast p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/iMe/ui/custom/state/GlobalStateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;
    .locals 2

    .line 50
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_catalog_all:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method
