.class public final Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;
.super Ljava/lang/Object;
.source "ForkContentWalletConnectMessageSignBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final buttonProcess:Lcom/smedialink/ui/custom/BigActionButton;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textFrom:Lorg/telegram/ui/Cells/TextDetailCell;

.field public final textMessage:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textPeerUrl:Lorg/telegram/ui/Cells/TextDetailCell;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/custom/BigActionButton;Landroid/widget/LinearLayout;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->rootView:Landroid/widget/LinearLayout;

    .line 52
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 53
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonProcess:Lcom/smedialink/ui/custom/BigActionButton;

    .line 55
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textFrom:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 56
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textPeerUrl:Lorg/telegram/ui/Cells/TextDetailCell;

    .line 58
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;
    .locals 11

    .line 89
    sget v0, Lorg/telegram/messenger/R$id;->button_close:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 95
    sget v0, Lorg/telegram/messenger/R$id;->button_process:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/smedialink/ui/custom/BigActionButton;

    if-eqz v5, :cond_0

    .line 101
    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 103
    sget v0, Lorg/telegram/messenger/R$id;->text_from:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v7, :cond_0

    .line 109
    sget v0, Lorg/telegram/messenger/R$id;->text_message:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 115
    sget v0, Lorg/telegram/messenger/R$id;->text_peer_url:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/ui/Cells/TextDetailCell;

    if-eqz v9, :cond_0

    .line 121
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 127
    new-instance p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;-><init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/smedialink/ui/custom/BigActionButton;Landroid/widget/LinearLayout;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;Lorg/telegram/ui/Cells/TextDetailCell;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;
    .locals 2

    .line 76
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_wallet_connect_message_sign:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
