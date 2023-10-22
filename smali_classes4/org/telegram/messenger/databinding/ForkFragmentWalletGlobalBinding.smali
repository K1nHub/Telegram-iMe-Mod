.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletGlobalBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

.field public final cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

.field public final frameFragmentContainer:Landroid/widget/FrameLayout;

.field public final realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/fxn/BubbleTabBar;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Lcom/github/mmin18/widget/RealtimeBlurView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    .line 42
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

    .line 43
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->frameFragmentContainer:Landroid/widget/FrameLayout;

    .line 44
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;
    .locals 8

    .line 74
    sget v0, Lorg/telegram/messenger/R$id;->bottom_navigation_wallet:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/fxn/BubbleTabBar;

    if-eqz v4, :cond_0

    .line 80
    sget v0, Lorg/telegram/messenger/R$id;->card_bottom_navigation_wrapper:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_0

    .line 86
    sget v0, Lorg/telegram/messenger/R$id;->frame_fragment_container:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 92
    sget v0, Lorg/telegram/messenger/R$id;->realtime_blur:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v7, :cond_0

    .line 98
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/fxn/BubbleTabBar;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Lcom/github/mmin18/widget/RealtimeBlurView;)V

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;
    .locals 2

    .line 61
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_global:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
