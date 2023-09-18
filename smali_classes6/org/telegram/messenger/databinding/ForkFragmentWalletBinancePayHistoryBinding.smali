.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletBinancePayHistoryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

.field public final recycleHistory:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/iMe/ui/custom/state/GlobalStateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 32
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 33
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;->recycleHistory:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;
    .locals 3

    .line 64
    sget v0, Lorg/telegram/messenger/R$id;->global_state_layout:I

    .line 65
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/custom/state/GlobalStateLayout;

    if-eqz v1, :cond_0

    .line 70
    sget v0, Lorg/telegram/messenger/R$id;->recycle_history:I

    .line 71
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 76
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;

    check-cast p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/iMe/ui/custom/state/GlobalStateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;
    .locals 2

    .line 51
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_binance_pay_history:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletBinancePayHistoryBinding;->rootView:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method
