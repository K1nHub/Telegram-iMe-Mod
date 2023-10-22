.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemWalletCryptoTotalBalanceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;
    .locals 7

    .line 80
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 82
    sget v0, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_0

    .line 88
    sget v0, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    .line 94
    sget v0, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 100
    sget v0, Lorg/telegram/messenger/R$id;->text_wallet_crypto_total_balance:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    .line 106
    new-instance p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;
    .locals 2

    .line 67
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_crypto_total_balance:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletCryptoTotalBalanceBinding;

    move-result-object p0

    return-object p0
.end method
