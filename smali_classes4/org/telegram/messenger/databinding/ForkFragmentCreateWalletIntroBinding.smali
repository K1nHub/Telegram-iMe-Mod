.class public final Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;
.super Ljava/lang/Object;
.source "ForkFragmentCreateWalletIntroBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonNext:Lcom/iMe/fork/ui/view/FloatingActionButton;

.field public final constraintLinkedWalletSection:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final constraintWallet:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final imageAvatar:Lorg/telegram/ui/Components/BackupImageView;

.field public final imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

.field public final imageLinkedWalletInfo:Landroidx/appcompat/widget/AppCompatImageView;

.field public final itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final linearBottomPanel:Landroid/widget/LinearLayout;

.field public final nestedRoot:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final textAddress:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textDescription:Landroid/widget/TextView;

.field public final textLinkedWalletTitle:Landroid/widget/TextView;

.field public final textPrivacy:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;

.field public final textUserId:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/iMe/fork/ui/view/FloatingActionButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/Components/BackupImageView;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 2

    move-object v0, p0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 89
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 90
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->buttonNext:Lcom/iMe/fork/ui/view/FloatingActionButton;

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->constraintLinkedWalletSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p4

    .line 92
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->constraintWallet:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageAvatar:Lorg/telegram/ui/Components/BackupImageView;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageLinkedWalletInfo:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->linearBottomPanel:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 99
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    move-object v1, p12

    .line 100
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textAddress:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p13

    .line 101
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textDescription:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textLinkedWalletTitle:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textPrivacy:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textTitle:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textUserId:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;
    .locals 21

    move-object/from16 v0, p0

    .line 135
    sget v1, Lorg/telegram/messenger/R$id;->button_next:I

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/iMe/fork/ui/view/FloatingActionButton;

    if-eqz v5, :cond_0

    .line 141
    sget v1, Lorg/telegram/messenger/R$id;->constraint_linked_wallet_section:I

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    .line 147
    sget v1, Lorg/telegram/messenger/R$id;->constraint_wallet:I

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 153
    sget v1, Lorg/telegram/messenger/R$id;->image_avatar:I

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v8, :cond_0

    .line 159
    sget v1, Lorg/telegram/messenger/R$id;->image_copy:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    .line 165
    sget v1, Lorg/telegram/messenger/R$id;->image_header:I

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v10, :cond_0

    .line 171
    sget v1, Lorg/telegram/messenger/R$id;->image_linked_wallet_info:I

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    .line 177
    sget v1, Lorg/telegram/messenger/R$id;->item_more_options:I

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v12, :cond_0

    .line 183
    sget v1, Lorg/telegram/messenger/R$id;->linear_bottom_panel:I

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    .line 189
    sget v1, Lorg/telegram/messenger/R$id;->nested_root:I

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/core/widget/NestedScrollView;

    if-eqz v14, :cond_0

    .line 195
    sget v1, Lorg/telegram/messenger/R$id;->text_address:I

    .line 196
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    .line 201
    sget v1, Lorg/telegram/messenger/R$id;->text_description:I

    .line 202
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 207
    sget v1, Lorg/telegram/messenger/R$id;->text_linked_wallet_title:I

    .line 208
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 213
    sget v1, Lorg/telegram/messenger/R$id;->text_privacy:I

    .line 214
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 219
    sget v1, Lorg/telegram/messenger/R$id;->text_title:I

    .line 220
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 225
    sget v1, Lorg/telegram/messenger/R$id;->text_user_id:I

    .line 226
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    .line 231
    new-instance v1, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v20}, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;-><init>(Landroid/widget/FrameLayout;Lcom/iMe/fork/ui/view/FloatingActionButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lorg/telegram/ui/Components/BackupImageView;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/Components/RLottieImageView;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v1

    .line 236
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;
    .locals 2

    .line 122
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_create_wallet_intro:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
