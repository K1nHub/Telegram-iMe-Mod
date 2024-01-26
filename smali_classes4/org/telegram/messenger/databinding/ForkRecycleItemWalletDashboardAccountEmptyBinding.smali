.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemWalletDashboardAccountEmptyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/HorizontalActionButtonsView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;
    .locals 4

    .line 69
    sget v0, Lorg/telegram/messenger/R$id;->card_empty_account:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_1

    .line 75
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 77
    sget v2, Lorg/telegram/messenger/R$id;->horizontal_action_buttons:I

    .line 78
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    if-eqz v3, :cond_0

    .line 83
    new-instance p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/HorizontalActionButtonsView;)V

    return-object p0

    :cond_0
    move v0, v2

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;
    .locals 2

    .line 56
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_empty:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardAccountEmptyBinding;

    move-result-object p0

    return-object p0
.end method
