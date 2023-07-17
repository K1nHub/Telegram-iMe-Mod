.class public final Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;
.super Ljava/lang/Object;
.source "ForkRecycleItemWalletDonationTransactionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textAmount:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textCoinTicker:Lcom/iMe/ui/custom/TickerView;

.field public final textDate:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textUserFullName:Landroidx/appcompat/widget/AppCompatTextView;

.field public final viewDivider:Lcom/iMe/ui/custom/DividerView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/TickerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/DividerView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->rootView:Landroid/widget/LinearLayout;

    .line 63
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    .line 65
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textAmount:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textCoinTicker:Lcom/iMe/ui/custom/TickerView;

    .line 67
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textDate:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textUserFullName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->viewDivider:Lcom/iMe/ui/custom/DividerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;
    .locals 13

    .line 100
    sget v0, Lorg/telegram/messenger/R$id;->barrier_amount_end:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v4, :cond_0

    .line 106
    sget v0, Lorg/telegram/messenger/R$id;->constraint_layout_transaction_root:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 112
    sget v0, Lorg/telegram/messenger/R$id;->image_user_avatar:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v6, :cond_0

    .line 118
    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 120
    sget v0, Lorg/telegram/messenger/R$id;->text_amount:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    .line 126
    sget v0, Lorg/telegram/messenger/R$id;->text_coin_ticker:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/custom/TickerView;

    if-eqz v9, :cond_0

    .line 132
    sget v0, Lorg/telegram/messenger/R$id;->text_date:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 138
    sget v0, Lorg/telegram/messenger/R$id;->text_user_full_name:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v11, :cond_0

    .line 144
    sget v0, Lorg/telegram/messenger/R$id;->view_divider:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/iMe/ui/custom/DividerView;

    if-eqz v12, :cond_0

    .line 150
    new-instance p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/Components/BackupImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/TickerView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/custom/DividerView;)V

    return-object p0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;
    .locals 2

    .line 87
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_donation_transaction:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
