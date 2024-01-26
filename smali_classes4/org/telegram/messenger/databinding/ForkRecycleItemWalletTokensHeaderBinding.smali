.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemWalletTokensHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageAddToken:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

.field public final linearAddToken:Landroid/widget/LinearLayout;

.field public final linearNetwork:Landroid/widget/LinearLayout;

.field public final networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textAddToken:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTitleDisplayedTokens:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 55
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->imageAddToken:Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    .line 57
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->linearAddToken:Landroid/widget/LinearLayout;

    .line 58
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->linearNetwork:Landroid/widget/LinearLayout;

    .line 59
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 60
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textAddToken:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->textTitleDisplayedTokens:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;
    .locals 12

    .line 92
    sget v0, Lorg/telegram/messenger/R$id;->image_add_token:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 98
    sget v0, Lorg/telegram/messenger/R$id;->image_network:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 104
    sget v0, Lorg/telegram/messenger/R$id;->linear_add_token:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 110
    sget v0, Lorg/telegram/messenger/R$id;->linear_network:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 116
    sget v0, Lorg/telegram/messenger/R$id;->network_type_view:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/ui/custom/NetworkTypeView;

    if-eqz v8, :cond_0

    .line 122
    sget v0, Lorg/telegram/messenger/R$id;->text_add_token:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    .line 128
    sget v0, Lorg/telegram/messenger/R$id;->text_network:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 134
    sget v0, Lorg/telegram/messenger/R$id;->text_title_displayed_tokens:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 140
    new-instance v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;)V

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;
    .locals 2

    .line 79
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_tokens_header:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokensHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
