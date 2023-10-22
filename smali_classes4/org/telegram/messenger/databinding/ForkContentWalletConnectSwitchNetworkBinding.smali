.class public final Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;
.super Ljava/lang/Object;
.source "ForkContentWalletConnectSwitchNetworkBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonChangeNetwork:Lcom/iMe/ui/custom/BigActionButton;

.field public final buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

.field public final viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/iMe/ui/custom/BigActionButton;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonChangeNetwork:Lcom/iMe/ui/custom/BigActionButton;

    .line 42
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 43
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 44
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;
    .locals 8

    .line 75
    sget v0, Lorg/telegram/messenger/R$id;->button_change_network:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v4, :cond_0

    .line 81
    sget v0, Lorg/telegram/messenger/R$id;->button_close:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v5, :cond_0

    .line 87
    sget v0, Lorg/telegram/messenger/R$id;->view_header:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/ImageHeaderView;

    if-eqz v6, :cond_0

    .line 93
    sget v0, Lorg/telegram/messenger/R$id;->view_network_cell:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v7, :cond_0

    .line 99
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/iMe/ui/custom/BigActionButton;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;
    .locals 2

    .line 62
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_wallet_connect_switch_network:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
