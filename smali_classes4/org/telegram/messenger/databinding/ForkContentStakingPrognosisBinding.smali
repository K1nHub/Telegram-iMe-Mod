.class public final Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;
.super Ljava/lang/Object;
.source "ForkContentStakingPrognosisBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonDeposit:Lcom/smedialink/ui/custom/BigActionButton;

.field public final constraintStatistics:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final linearDeposit:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textDates:Landroid/widget/TextView;

.field public final textDepositDescription:Landroid/widget/TextView;

.field public final textDepositTitle:Landroid/widget/TextView;

.field public final textModeTitle:Landroid/widget/TextView;

.field public final textModeValue:Landroid/widget/TextView;

.field public final textPercentageValue:Landroid/widget/TextView;

.field public final textProfitTitle:Landroid/widget/TextView;

.field public final textProfitTokenValue:Landroid/widget/TextView;

.field public final textProfitUsdValue:Landroid/widget/TextView;

.field public final textStatistics:Landroid/widget/TextView;

.field public final viewChart:Lcom/smedialink/ui/custom/ChartCellView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/smedialink/ui/custom/BigActionButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/smedialink/ui/custom/ChartCellView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->rootView:Landroid/widget/LinearLayout;

    .line 76
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->buttonDeposit:Lcom/smedialink/ui/custom/BigActionButton;

    .line 77
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->constraintStatistics:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->linearDeposit:Landroid/widget/LinearLayout;

    .line 79
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDates:Landroid/widget/TextView;

    .line 80
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositDescription:Landroid/widget/TextView;

    .line 81
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositTitle:Landroid/widget/TextView;

    .line 82
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeTitle:Landroid/widget/TextView;

    .line 83
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeValue:Landroid/widget/TextView;

    .line 84
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textPercentageValue:Landroid/widget/TextView;

    .line 85
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTitle:Landroid/widget/TextView;

    .line 86
    iput-object p12, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTokenValue:Landroid/widget/TextView;

    .line 87
    iput-object p13, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitUsdValue:Landroid/widget/TextView;

    .line 88
    iput-object p14, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textStatistics:Landroid/widget/TextView;

    .line 89
    iput-object p15, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->viewChart:Lcom/smedialink/ui/custom/ChartCellView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 119
    sget v1, Lorg/telegram/messenger/R$id;->button_deposit:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/ui/custom/BigActionButton;

    if-eqz v5, :cond_0

    .line 125
    sget v1, Lorg/telegram/messenger/R$id;->constraint_statistics:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 131
    sget v1, Lorg/telegram/messenger/R$id;->linear_deposit:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 137
    sget v1, Lorg/telegram/messenger/R$id;->text_dates:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 143
    sget v1, Lorg/telegram/messenger/R$id;->text_deposit_description:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 149
    sget v1, Lorg/telegram/messenger/R$id;->text_deposit_title:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 155
    sget v1, Lorg/telegram/messenger/R$id;->text_mode_title:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 161
    sget v1, Lorg/telegram/messenger/R$id;->text_mode_value:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 167
    sget v1, Lorg/telegram/messenger/R$id;->text_percentage_value:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 173
    sget v1, Lorg/telegram/messenger/R$id;->text_profit_title:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 179
    sget v1, Lorg/telegram/messenger/R$id;->text_profit_token_value:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 185
    sget v1, Lorg/telegram/messenger/R$id;->text_profit_usd_value:I

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 191
    sget v1, Lorg/telegram/messenger/R$id;->text_statistics:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 197
    sget v1, Lorg/telegram/messenger/R$id;->view_chart:I

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/smedialink/ui/custom/ChartCellView;

    if-eqz v18, :cond_0

    .line 203
    new-instance v1, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;-><init>(Landroid/widget/LinearLayout;Lcom/smedialink/ui/custom/BigActionButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/smedialink/ui/custom/ChartCellView;)V

    return-object v1

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;
    .locals 2

    .line 106
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_staking_prognosis:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
