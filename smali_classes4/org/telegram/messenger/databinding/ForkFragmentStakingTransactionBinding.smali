.class public final Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;
.super Ljava/lang/Object;
.source "ForkFragmentStakingTransactionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

.field public final imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

.field public final inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

.field public final linearStakingSettings:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final stakingPercentageView:Lcom/iMe/ui/custom/StakingPercentageView;

.field public final stakingSafeWithdrawalView:Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

.field public final stakingWithdrawalFeeView:Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

.field public final textBalance:Landroid/widget/TextView;

.field public final textHeader:Landroid/widget/TextView;

.field public final viewFee:Lcom/iMe/ui/custom/FeeView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lorg/telegram/ui/Components/RLottieImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/StakingPercentageView;Lcom/iMe/ui/custom/StakingSafeWithdrawalView;Lcom/iMe/ui/custom/StakingWithdrawalFeeView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/FeeView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 68
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->buttonSend:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    .line 69
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    .line 70
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->inputAmount:Lcom/iMe/ui/custom/TitledInputFieldView;

    .line 71
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->linearStakingSettings:Landroid/widget/LinearLayout;

    .line 72
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingPercentageView:Lcom/iMe/ui/custom/StakingPercentageView;

    .line 73
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingSafeWithdrawalView:Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    .line 74
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->stakingWithdrawalFeeView:Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    .line 75
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->textBalance:Landroid/widget/TextView;

    .line 76
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->textHeader:Landroid/widget/TextView;

    .line 77
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->viewFee:Lcom/iMe/ui/custom/FeeView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;
    .locals 14

    .line 107
    sget v0, Lorg/telegram/messenger/R$id;->button_send:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    if-eqz v4, :cond_0

    .line 113
    sget v0, Lorg/telegram/messenger/R$id;->image_header:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v5, :cond_0

    .line 119
    sget v0, Lorg/telegram/messenger/R$id;->input_amount:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/TitledInputFieldView;

    if-eqz v6, :cond_0

    .line 125
    sget v0, Lorg/telegram/messenger/R$id;->linear_staking_settings:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 131
    sget v0, Lorg/telegram/messenger/R$id;->staking_percentage_view:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/ui/custom/StakingPercentageView;

    if-eqz v8, :cond_0

    .line 137
    sget v0, Lorg/telegram/messenger/R$id;->staking_safe_withdrawal_view:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    if-eqz v9, :cond_0

    .line 143
    sget v0, Lorg/telegram/messenger/R$id;->staking_withdrawal_fee_view:I

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    if-eqz v10, :cond_0

    .line 149
    sget v0, Lorg/telegram/messenger/R$id;->text_balance:I

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 155
    sget v0, Lorg/telegram/messenger/R$id;->text_header:I

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 161
    sget v0, Lorg/telegram/messenger/R$id;->view_fee:I

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/iMe/ui/custom/FeeView;

    if-eqz v13, :cond_0

    .line 167
    new-instance v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/TransactionActionButtonsView;Lorg/telegram/ui/Components/RLottieImageView;Lcom/iMe/ui/custom/TitledInputFieldView;Landroid/widget/LinearLayout;Lcom/iMe/ui/custom/StakingPercentageView;Lcom/iMe/ui/custom/StakingSafeWithdrawalView;Lcom/iMe/ui/custom/StakingWithdrawalFeeView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/iMe/ui/custom/FeeView;)V

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;
    .locals 2

    .line 94
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_staking_transaction:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
