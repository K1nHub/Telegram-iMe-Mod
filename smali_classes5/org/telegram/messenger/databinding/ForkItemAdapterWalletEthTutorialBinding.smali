.class public final Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;
.super Ljava/lang/Object;
.source "ForkItemAdapterWalletEthTutorialBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageLogo:Lorg/telegram/ui/Components/RLottieImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;->rootView:Landroid/widget/LinearLayout;

    .line 36
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;->imageLogo:Lorg/telegram/ui/Components/RLottieImageView;

    .line 37
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;
    .locals 4

    .line 68
    sget v0, Lorg/telegram/messenger/R$id;->image_logo:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;-><init>(Landroid/widget/LinearLayout;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;
    .locals 2

    .line 55
    sget v0, Lorg/telegram/messenger/R$layout;->fork_item_adapter_wallet_eth_tutorial:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkItemAdapterWalletEthTutorialBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
