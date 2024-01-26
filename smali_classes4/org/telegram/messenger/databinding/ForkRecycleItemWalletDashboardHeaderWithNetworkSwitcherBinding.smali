.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;
    .locals 4

    .line 70
    move-object v0, p0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 72
    sget v1, Lorg/telegram/messenger/R$id;->network_type_view:I

    .line 73
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/custom/NetworkTypeView;

    if-eqz v2, :cond_0

    .line 78
    sget v1, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    .line 79
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_0

    .line 84
    new-instance p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;

    invoke-direct {p0, v0, v0, v2, v3}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;
    .locals 2

    .line 56
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_header_with_network_switcher:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderWithNetworkSwitcherBinding;

    move-result-object p0

    return-object p0
.end method
