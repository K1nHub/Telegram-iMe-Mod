.class public final Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;
.super Ljava/lang/Object;
.source "ForkContentWalletConnectNewSessionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

.field public final imageTransactionsApproval:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageViewBalance:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textTransactionsApproval:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textViewBalance:Landroidx/appcompat/widget/AppCompatTextView;

.field public final viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

.field public final viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewWalletCell:Lcom/iMe/ui/custom/DetailsIconCellView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/BigActionButton;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 63
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    .line 64
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->imageTransactionsApproval:Landroidx/appcompat/widget/AppCompatImageView;

    .line 65
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->imageViewBalance:Landroidx/appcompat/widget/AppCompatImageView;

    .line 66
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->textTransactionsApproval:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->textViewBalance:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 69
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewNetworkCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 70
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->viewWalletCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;
    .locals 13

    .line 101
    sget v0, Lorg/telegram/messenger/R$id;->button_close:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 107
    sget v0, Lorg/telegram/messenger/R$id;->button_connect:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v5, :cond_0

    .line 113
    sget v0, Lorg/telegram/messenger/R$id;->image_transactions_approval:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    .line 119
    sget v0, Lorg/telegram/messenger/R$id;->image_view_balance:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    .line 125
    sget v0, Lorg/telegram/messenger/R$id;->text_transactions_approval:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 131
    sget v0, Lorg/telegram/messenger/R$id;->text_view_balance:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 137
    sget v0, Lorg/telegram/messenger/R$id;->view_header:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/iMe/ui/custom/ImageHeaderView;

    if-eqz v10, :cond_0

    .line 143
    sget v0, Lorg/telegram/messenger/R$id;->view_network_cell:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v11, :cond_0

    .line 149
    sget v0, Lorg/telegram/messenger/R$id;->view_wallet_cell:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v12, :cond_0

    .line 155
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/BigActionButton;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V

    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;
    .locals 2

    .line 88
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_wallet_connect_new_session:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
