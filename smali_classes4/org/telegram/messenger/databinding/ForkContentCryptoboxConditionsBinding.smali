.class public final Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;
.super Ljava/lang/Object;
.source "ForkContentCryptoboxConditionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final frameButtonContainer:Landroid/widget/FrameLayout;

.field public final imageActionDescription:Landroidx/appcompat/widget/AppCompatImageView;

.field public final itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final linearActionDescription:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textActionDescription:Landroid/widget/TextView;

.field public final viewBalanceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

.field public final viewMembersCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewRewardPerUserCell:Lcom/iMe/ui/custom/DetailsIconCellView;

.field public final viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 66
    iput-object p2, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->frameButtonContainer:Landroid/widget/FrameLayout;

    .line 67
    iput-object p3, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->imageActionDescription:Landroidx/appcompat/widget/AppCompatImageView;

    .line 68
    iput-object p4, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 69
    iput-object p5, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->linearActionDescription:Landroid/widget/LinearLayout;

    .line 70
    iput-object p6, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->textActionDescription:Landroid/widget/TextView;

    .line 71
    iput-object p7, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewBalanceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 72
    iput-object p8, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 73
    iput-object p9, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewMembersCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 74
    iput-object p10, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewRewardPerUserCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 75
    iput-object p11, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;
    .locals 14

    .line 105
    sget v0, Lorg/telegram/messenger/R$id;->frame_button_container:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 111
    sget v0, Lorg/telegram/messenger/R$id;->image_action_description:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v5, :cond_0

    .line 117
    sget v0, Lorg/telegram/messenger/R$id;->item_more_options:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v6, :cond_0

    .line 123
    sget v0, Lorg/telegram/messenger/R$id;->linear_action_description:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 129
    sget v0, Lorg/telegram/messenger/R$id;->text_action_description:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 135
    sget v0, Lorg/telegram/messenger/R$id;->view_balance_cell:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v9, :cond_0

    .line 141
    sget v0, Lorg/telegram/messenger/R$id;->view_header:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/iMe/ui/custom/ImageHeaderView;

    if-eqz v10, :cond_0

    .line 147
    sget v0, Lorg/telegram/messenger/R$id;->view_members_cell:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v11, :cond_0

    .line 153
    sget v0, Lorg/telegram/messenger/R$id;->view_reward_per_user_cell:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v12, :cond_0

    .line 159
    sget v0, Lorg/telegram/messenger/R$id;->view_start_date_cell:I

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/iMe/ui/custom/DetailsIconCellView;

    if-eqz v13, :cond_0

    .line 165
    new-instance v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;Lcom/iMe/ui/custom/DetailsIconCellView;)V

    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;
    .locals 2

    .line 92
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_cryptobox_conditions:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
