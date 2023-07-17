.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletHomeInternalPointsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;


# direct methods
.method private constructor <init>(Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;->rootView:Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;
    .locals 2

    .line 59
    sget v0, Lorg/telegram/messenger/R$id;->recycle_wallet_home_services_dashboard:I

    .line 60
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;

    check-cast p0, Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;-><init>(Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;
    .locals 2

    .line 46
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_home_internal_points:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeInternalPointsBinding;->rootView:Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    return-object v0
.end method
