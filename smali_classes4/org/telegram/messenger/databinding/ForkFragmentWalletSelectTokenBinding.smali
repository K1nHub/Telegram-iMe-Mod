.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletSelectTokenBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

.field public final recycleTokens:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Lcom/iMe/ui/custom/state/GlobalStateLayout;


# direct methods
.method private constructor <init>(Lcom/iMe/ui/custom/state/GlobalStateLayout;Lcom/iMe/ui/custom/state/GlobalStateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->rootView:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 31
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 32
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->recycleTokens:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;
    .locals 3

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 64
    sget v1, Lorg/telegram/messenger/R$id;->recycle_tokens:I

    .line 65
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 70
    new-instance p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    invoke-direct {p0, v0, v0, v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;-><init>(Lcom/iMe/ui/custom/state/GlobalStateLayout;Lcom/iMe/ui/custom/state/GlobalStateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;
    .locals 2

    .line 49
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_select_token:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Lcom/iMe/ui/custom/state/GlobalStateLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSelectTokenBinding;->rootView:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    return-object v0
.end method
