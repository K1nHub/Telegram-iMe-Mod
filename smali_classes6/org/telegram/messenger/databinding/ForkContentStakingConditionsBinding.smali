.class public final Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;
.super Ljava/lang/Object;
.source "ForkContentStakingConditionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonOk:Lcom/iMe/ui/custom/BigActionButton;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final viewAnnualPercentageCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewCompletionDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewFinishedFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

.field public final viewImmediateWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewPlannedWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewThresholdCell:Lcom/iMe/ui/custom/DetailsIconCellView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/BigActionButton;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 60
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    .line 61
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewAnnualPercentageCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 62
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewCompletionDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 63
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewFinishedFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 64
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 65
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewImmediateWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 66
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewPlannedWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 67
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 68
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewThresholdCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;
    .locals 13

    .line 98
    sget v0, Lorg/telegram/messenger/R$id;->button_ok:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v4, :cond_0

    .line 104
    sget v0, Lorg/telegram/messenger/R$id;->view_annual_percentage_cell:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v5, :cond_0

    .line 110
    sget v0, Lorg/telegram/messenger/R$id;->view_completion_date_cell:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v6, :cond_0

    .line 116
    sget v0, Lorg/telegram/messenger/R$id;->view_finished_fee_cell:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v7, :cond_0

    .line 122
    sget v0, Lorg/telegram/messenger/R$id;->view_header:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/iMe/ui/custom/ImageHeaderView;

    if-eqz v8, :cond_0

    .line 128
    sget v0, Lorg/telegram/messenger/R$id;->view_immediate_withdrawal_fee_cell:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v9, :cond_0

    .line 134
    sget v0, Lorg/telegram/messenger/R$id;->view_planned_withdrawal_fee_cell:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v10, :cond_0

    .line 140
    sget v0, Lorg/telegram/messenger/R$id;->view_start_date_cell:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v11, :cond_0

    .line 146
    sget v0, Lorg/telegram/messenger/R$id;->view_threshold_cell:I

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v12, :cond_0

    .line 152
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/iMe/ui/custom/BigActionButton;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;
    .locals 2

    .line 85
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_staking_conditions:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
