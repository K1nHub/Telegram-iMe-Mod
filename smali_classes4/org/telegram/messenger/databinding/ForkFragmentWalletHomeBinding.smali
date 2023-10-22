.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/iMe/fork/ui/view/TabbedViewPager;

.field public final walletHomeViewPager:Lcom/iMe/fork/ui/view/TabbedViewPager;


# direct methods
.method private constructor <init>(Lcom/iMe/fork/ui/view/TabbedViewPager;Lcom/iMe/fork/ui/view/TabbedViewPager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->rootView:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 25
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;
    .locals 1

    const-string/jumbo v0, "rootView"

    .line 52
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    check-cast p0, Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 57
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    invoke-direct {v0, p0, p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;-><init>(Lcom/iMe/fork/ui/view/TabbedViewPager;Lcom/iMe/fork/ui/view/TabbedViewPager;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;
    .locals 2

    .line 42
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_home:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Lcom/iMe/fork/ui/view/TabbedViewPager;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->rootView:Lcom/iMe/fork/ui/view/TabbedViewPager;

    return-object v0
.end method
