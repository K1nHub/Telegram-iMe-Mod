.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletConnectBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

.field public final buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

.field public final imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

.field public final linearAddSession:Landroid/widget/LinearLayout;

.field public final linearSessions:Landroid/widget/LinearLayout;

.field public final recycleSessions:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/BigActionButton;Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/ui/Components/RLottieImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 61
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonConnect:Lcom/iMe/ui/custom/BigActionButton;

    .line 62
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->buttonDisconnectAll:Lorg/telegram/ui/Cells/TextCell;

    .line 63
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 64
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearAddSession:Landroid/widget/LinearLayout;

    .line 66
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->linearSessions:Landroid/widget/LinearLayout;

    .line 67
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->recycleSessions:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->textSessionsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;
    .locals 13

    .line 99
    sget v0, Lorg/telegram/messenger/R$id;->button_connect:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v4, :cond_0

    .line 105
    sget v0, Lorg/telegram/messenger/R$id;->button_disconnect_all:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_0

    .line 111
    sget v0, Lorg/telegram/messenger/R$id;->image_header:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v6, :cond_0

    .line 117
    sget v0, Lorg/telegram/messenger/R$id;->linear_add_session:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 123
    sget v0, Lorg/telegram/messenger/R$id;->linear_root:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 129
    sget v0, Lorg/telegram/messenger/R$id;->linear_sessions:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 135
    sget v0, Lorg/telegram/messenger/R$id;->recycle_sessions:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    .line 141
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 147
    sget v0, Lorg/telegram/messenger/R$id;->text_sessions_title:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v12, :cond_0

    .line 153
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/BigActionButton;Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/ui/Components/RLottieImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;
    .locals 2

    .line 86
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_connect:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
