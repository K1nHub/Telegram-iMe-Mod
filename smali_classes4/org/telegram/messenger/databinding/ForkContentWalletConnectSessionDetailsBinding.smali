.class public final Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;
.super Ljava/lang/Object;
.source "ForkContentWalletConnectSessionDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonDisconnect:Lcom/iMe/ui/custom/BigActionButton;

.field private final rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final viewAddressCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewConnectedCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

.field public final viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/iMe/ui/custom/BigActionButton;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 47
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->buttonDisconnect:Lcom/iMe/ui/custom/BigActionButton;

    .line 49
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewAddressCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 50
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewConnectedCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 51
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 52
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;
    .locals 10

    .line 83
    sget v0, Lorg/telegram/messenger/R$id;->button_disconnect:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v4, :cond_0

    .line 89
    move-object v5, p0

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 91
    sget v0, Lorg/telegram/messenger/R$id;->view_address_cell:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v6, :cond_0

    .line 97
    sget v0, Lorg/telegram/messenger/R$id;->view_connected_cell:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v7, :cond_0

    .line 103
    sget v0, Lorg/telegram/messenger/R$id;->view_header:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/ui/custom/ImageHeaderView;

    if-eqz v8, :cond_0

    .line 109
    sget v0, Lorg/telegram/messenger/R$id;->view_network_cell:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v9, :cond_0

    .line 115
    new-instance p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/iMe/ui/custom/BigActionButton;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;)V

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;
    .locals 2

    .line 70
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_wallet_connect_session_details:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;->rootView:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object v0
.end method
