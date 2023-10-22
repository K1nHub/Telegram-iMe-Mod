.class public final Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;
.super Ljava/lang/Object;
.source "ForkContentStakingDashboardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardStakingDashboard:Landroidx/cardview/widget/CardView;

.field public final divider:Lcom/iMe/ui/custom/DividerView;

.field public final horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textHeader:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textProfitTitle:Landroid/widget/TextView;

.field public final textProfitValue:Landroid/widget/TextView;

.field public final textStakedTitle:Landroid/widget/TextView;

.field public final textStakedValue:Landroid/widget/TextView;

.field public final viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

.field public final viewProfitDot:Landroid/view/View;

.field public final viewStakedDot:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Lcom/iMe/ui/custom/DividerView;Lcom/iMe/ui/custom/HorizontalActionButtonsView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/Components/StorageDiagramView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->rootView:Landroid/widget/LinearLayout;

    .line 75
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->cardStakingDashboard:Landroidx/cardview/widget/CardView;

    .line 76
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    .line 77
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    .line 80
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textHeader:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitTitle:Landroid/widget/TextView;

    .line 82
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitValue:Landroid/widget/TextView;

    .line 83
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedTitle:Landroid/widget/TextView;

    .line 84
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedValue:Landroid/widget/TextView;

    .line 85
    iput-object p12, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    .line 86
    iput-object p13, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewProfitDot:Landroid/view/View;

    .line 87
    iput-object p14, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewStakedDot:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;
    .locals 18

    move-object/from16 v0, p0

    .line 117
    sget v1, Lorg/telegram/messenger/R$id;->card_staking_dashboard:I

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/cardview/widget/CardView;

    if-eqz v5, :cond_0

    .line 123
    sget v1, Lorg/telegram/messenger/R$id;->divider:I

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/custom/DividerView;

    if-eqz v6, :cond_0

    .line 129
    sget v1, Lorg/telegram/messenger/R$id;->horizontal_action_buttons:I

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    if-eqz v7, :cond_0

    .line 135
    sget v1, Lorg/telegram/messenger/R$id;->linear_profit:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 141
    sget v1, Lorg/telegram/messenger/R$id;->linear_staked:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 147
    sget v1, Lorg/telegram/messenger/R$id;->text_header:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    .line 153
    sget v1, Lorg/telegram/messenger/R$id;->text_profit_title:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 159
    sget v1, Lorg/telegram/messenger/R$id;->text_profit_value:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 165
    sget v1, Lorg/telegram/messenger/R$id;->text_staked_title:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 171
    sget v1, Lorg/telegram/messenger/R$id;->text_staked_value:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 177
    sget v1, Lorg/telegram/messenger/R$id;->view_diagram:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/telegram/ui/Components/StorageDiagramView;

    if-eqz v15, :cond_0

    .line 183
    sget v1, Lorg/telegram/messenger/R$id;->view_profit_dot:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 189
    sget v1, Lorg/telegram/messenger/R$id;->view_staked_dot:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 195
    new-instance v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Lcom/iMe/ui/custom/DividerView;Lcom/iMe/ui/custom/HorizontalActionButtonsView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/telegram/ui/Components/StorageDiagramView;Landroid/view/View;Landroid/view/View;)V

    return-object v1

    .line 200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;
    .locals 2

    .line 104
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_staking_dashboard:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
