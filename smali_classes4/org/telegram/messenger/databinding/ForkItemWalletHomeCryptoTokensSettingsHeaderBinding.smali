.class public final Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;
.super Ljava/lang/Object;
.source "ForkItemWalletHomeCryptoTokensSettingsHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/CheckBoxSquare;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;->rootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;
    .locals 9

    .line 81
    sget v0, Lorg/telegram/messenger/R$id;->network_type_view:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/NetworkTypeView;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Lorg/telegram/messenger/R$id;->network_type_view_container:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 93
    sget v0, Lorg/telegram/messenger/R$id;->only_positive_checkbox:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v6, :cond_0

    .line 99
    sget v0, Lorg/telegram/messenger/R$id;->only_positive_checkbox_container:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 105
    sget v0, Lorg/telegram/messenger/R$id;->only_positive_checkbox_text:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 111
    new-instance v0, Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;-><init>(Landroid/widget/FrameLayout;Lcom/iMe/ui/custom/NetworkTypeView;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/CheckBoxSquare;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;
    .locals 2

    .line 68
    sget v0, Lorg/telegram/messenger/R$layout;->fork_item_wallet_home_crypto_tokens_settings_header:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
