.class public final Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;
.super Ljava/lang/Object;
.source "ForkFragmentWalletEthAddressMismatchBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonBackup:Lcom/smedialink/ui/custom/ActionButton;

.field public final buttonDelete:Landroidx/appcompat/widget/AppCompatButton;

.field public final imageLogo:Lorg/telegram/ui/Components/RLottieImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final textDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/smedialink/ui/custom/ActionButton;Landroidx/appcompat/widget/AppCompatButton;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonBackup:Lcom/smedialink/ui/custom/ActionButton;

    .line 46
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->buttonDelete:Landroidx/appcompat/widget/AppCompatButton;

    .line 47
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->imageLogo:Lorg/telegram/ui/Components/RLottieImageView;

    .line 48
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;
    .locals 9

    .line 80
    sget v0, Lorg/telegram/messenger/R$id;->button_backup:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/smedialink/ui/custom/ActionButton;

    if-eqz v4, :cond_0

    .line 86
    sget v0, Lorg/telegram/messenger/R$id;->button_delete:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v5, :cond_0

    .line 92
    sget v0, Lorg/telegram/messenger/R$id;->image_logo:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v6, :cond_0

    .line 98
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    .line 104
    sget v0, Lorg/telegram/messenger/R$id;->text_title:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 110
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/smedialink/ui/custom/ActionButton;Landroidx/appcompat/widget/AppCompatButton;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;
    .locals 2

    .line 67
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_wallet_eth_address_mismatch:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthAddressMismatchBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
