.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemWalletDashboardHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;
    .locals 3

    .line 63
    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 65
    sget v1, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    .line 66
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_0

    .line 71
    new-instance p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;

    invoke-direct {p0, v0, v0, v2}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;
    .locals 2

    .line 50
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_header:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDashboardHeaderBinding;

    move-result-object p0

    return-object p0
.end method
