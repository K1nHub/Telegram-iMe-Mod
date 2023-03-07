.class public final Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;
.super Ljava/lang/Object;
.source "ForkContentWalletConnectTransactionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final buttonProcess:Lcom/smedialink/ui/custom/BigActionButton;

.field public final feeView:Lcom/smedialink/ui/custom/FeeView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textFrom:Lorg/telegram/ui/Cells/TextDetailCell;

.field public final textNetwork:Lorg/telegram/ui/Cells/TextDetailCell;

.field public final textPeerUrl:Lorg/telegram/ui/Cells/TextDetailCell;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTo:Lorg/telegram/ui/Cells/TextDetailCell;

.field public final textTransactionAmount:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/custom/BigActionButton;Lcom/smedialink/ui/custom/FeeView;Landroid/widget/LinearLayout;Lorg/telegram/ui/Cells/TextDetailCell;Lorg/telegram/ui/Cells/TextDetailCell;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->rootView:Landroid/widget/LinearLayout;

    .line 63
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 64
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->buttonProcess:Lcom/smedialink/ui/custom/BigActionButton;

    .line 65
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->feeView:Lcom/smedialink/ui/custom/FeeView;

    .line 67
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textFrom:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 68
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textNetwork:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 69
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textPeerUrl:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 70
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTo:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 72
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->textTransactionAmount:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;
    .locals 14

    .line 103
    sget v0, Lorg/telegram/messenger/R$id;->button_close:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 109
    sget v0, Lorg/telegram/messenger/R$id;->button_process:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/smedialink/ui/custom/BigActionButton;

    if-eqz v5, :cond_0

    .line 115
    sget v0, Lorg/telegram/messenger/R$id;->fee_view:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/smedialink/ui/custom/FeeView;

    if-eqz v6, :cond_0

    .line 121
    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 123
    sget v0, Lorg/telegram/messenger/R$id;->text_from:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v8, :cond_0

    .line 129
    sget v0, Lorg/telegram/messenger/R$id;->text_network:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v9, :cond_0

    .line 135
    sget v0, Lorg/telegram/messenger/R$id;->text_peer_url:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v10, :cond_0

    .line 141
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 147
    sget v0, Lorg/telegram/messenger/R$id;->text_to:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v12, :cond_0

    .line 153
    sget v0, Lorg/telegram/messenger/R$id;->text_transaction_amount:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    .line 159
    new-instance p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;-><init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/custom/BigActionButton;Lcom/smedialink/ui/custom/FeeView;Landroid/widget/LinearLayout;Lorg/telegram/ui/Cells/TextDetailCell;Lorg/telegram/ui/Cells/TextDetailCell;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;
    .locals 2

    .line 90
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_wallet_connect_transaction:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
