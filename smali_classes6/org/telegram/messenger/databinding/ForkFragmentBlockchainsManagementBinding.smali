.class public final Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;
.super Ljava/lang/Object;
.source "ForkFragmentBlockchainsManagementBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

.field public final imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

.field public final linearAddSession:Landroid/widget/LinearLayout;

.field public final linearWallets:Landroid/widget/LinearLayout;

.field public final recycleWallets:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/ui/Components/RLottieImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 56
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->buttonResetAll:Lorg/telegram/ui/Cells/TextCell;

    .line 57
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 58
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearAddSession:Landroid/widget/LinearLayout;

    .line 60
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->linearWallets:Landroid/widget/LinearLayout;

    .line 61
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->recycleWallets:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->textWalletsTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;
    .locals 12

    .line 93
    sget v0, Lorg/telegram/messenger/R$id;->button_reset_all:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_0

    .line 99
    sget v0, Lorg/telegram/messenger/R$id;->image_header:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v5, :cond_0

    .line 105
    sget v0, Lorg/telegram/messenger/R$id;->linear_add_session:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 111
    sget v0, Lorg/telegram/messenger/R$id;->linear_root:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 117
    sget v0, Lorg/telegram/messenger/R$id;->linear_wallets:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 123
    sget v0, Lorg/telegram/messenger/R$id;->recycle_wallets:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 129
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 135
    sget v0, Lorg/telegram/messenger/R$id;->text_wallets_title:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 141
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/ui/Components/RLottieImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;
    .locals 2

    .line 80
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_blockchains_management:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
