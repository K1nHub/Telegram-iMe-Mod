.class public final Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;
.super Ljava/lang/Object;
.source "ForkContentBlockchainsWalletDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonBackup:Lcom/iMe/ui/custom/BigActionButton;

.field public final buttonReset:Lcom/iMe/ui/custom/BigActionButton;

.field public final itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final viewAddressCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewConnectedCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/BigActionButton;Lcom/iMe/ui/custom/BigActionButton;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->rootView:Landroid/widget/FrameLayout;

    .line 52
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonBackup:Lcom/iMe/ui/custom/BigActionButton;

    .line 53
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->buttonReset:Lcom/iMe/ui/custom/BigActionButton;

    .line 55
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 56
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewAddressCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 57
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewConnectedCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 58
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;
    .locals 11

    .line 89
    sget v0, Lorg/telegram/messenger/R$id;->button_backup:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v4, :cond_0

    .line 95
    sget v0, Lorg/telegram/messenger/R$id;->button_reset:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v5, :cond_0

    .line 101
    move-object v6, p0

    check-cast v6, Landroid/widget/FrameLayout;

    .line 103
    sget v0, Lorg/telegram/messenger/R$id;->item_more_options:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_0

    .line 109
    sget v0, Lorg/telegram/messenger/R$id;->view_address_cell:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v8, :cond_0

    .line 115
    sget v0, Lorg/telegram/messenger/R$id;->view_connected_cell:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v9, :cond_0

    .line 121
    sget v0, Lorg/telegram/messenger/R$id;->view_header:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/iMe/ui/custom/ImageHeaderView;

    if-eqz v10, :cond_0

    .line 127
    new-instance p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;-><init>(Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/BigActionButton;Lcom/iMe/ui/custom/BigActionButton;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;)V

    return-object p0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;
    .locals 2

    .line 76
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_blockchains_wallet_details:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
