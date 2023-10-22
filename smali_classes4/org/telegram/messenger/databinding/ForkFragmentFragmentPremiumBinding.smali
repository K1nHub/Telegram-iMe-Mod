.class public final Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;
.super Ljava/lang/Object;
.source "ForkFragmentFragmentPremiumBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final cardView:Landroidx/cardview/widget/CardView;

.field public final frameButtonContainer:Landroid/widget/FrameLayout;

.field public final framePremiumStarContainer:Landroid/widget/FrameLayout;

.field public final imageRecipientIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

.field public final nestedRoot:Landroidx/core/widget/NestedScrollView;

.field public final recyclerProducts:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final textBalance:Landroid/widget/TextView;

.field public final textDurationTitle:Landroid/widget/TextView;

.field public final textRecipientTitle:Landroid/widget/TextView;

.field public final textRecipientValue:Landroid/widget/TextView;

.field public final textSubtitle:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;

.field public final viewRecipient:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/Components/BackupImageView;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 2

    move-object v0, p0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 83
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 84
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->buttonBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object v1, p3

    .line 85
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->cardView:Landroidx/cardview/widget/CardView;

    move-object v1, p4

    .line 86
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->frameButtonContainer:Landroid/widget/FrameLayout;

    move-object v1, p5

    .line 87
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->framePremiumStarContainer:Landroid/widget/FrameLayout;

    move-object v1, p6

    .line 88
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->imageRecipientIcon:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p7

    .line 89
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    move-object v1, p8

    .line 90
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    move-object v1, p9

    .line 91
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->recyclerProducts:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p10

    .line 92
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textBalance:Landroid/widget/TextView;

    move-object v1, p11

    .line 93
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textDurationTitle:Landroid/widget/TextView;

    move-object v1, p12

    .line 94
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientTitle:Landroid/widget/TextView;

    move-object v1, p13

    .line 95
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientValue:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 96
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textSubtitle:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 97
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 98
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->viewRecipient:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 128
    sget v1, Lorg/telegram/messenger/R$id;->button_back:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v5, :cond_0

    .line 134
    sget v1, Lorg/telegram/messenger/R$id;->card_view:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    if-eqz v6, :cond_0

    .line 140
    sget v1, Lorg/telegram/messenger/R$id;->frame_button_container:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 146
    sget v1, Lorg/telegram/messenger/R$id;->frame_premium_star_container:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 152
    sget v1, Lorg/telegram/messenger/R$id;->image_recipient_icon:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    .line 158
    sget v1, Lorg/telegram/messenger/R$id;->image_user_avatar:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v10, :cond_0

    .line 164
    sget v1, Lorg/telegram/messenger/R$id;->nested_root:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/core/widget/NestedScrollView;

    if-eqz v11, :cond_0

    .line 170
    sget v1, Lorg/telegram/messenger/R$id;->recycler_products:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    .line 176
    sget v1, Lorg/telegram/messenger/R$id;->text_balance:I

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 182
    sget v1, Lorg/telegram/messenger/R$id;->text_duration_title:I

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 188
    sget v1, Lorg/telegram/messenger/R$id;->text_recipient_title:I

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 194
    sget v1, Lorg/telegram/messenger/R$id;->text_recipient_value:I

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 200
    sget v1, Lorg/telegram/messenger/R$id;->text_subtitle:I

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 206
    sget v1, Lorg/telegram/messenger/R$id;->text_title:I

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 212
    sget v1, Lorg/telegram/messenger/R$id;->view_recipient:I

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    .line 218
    new-instance v1, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v19}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroidx/cardview/widget/CardView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lorg/telegram/ui/Components/BackupImageView;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    return-object v1

    .line 223
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;
    .locals 2

    .line 115
    sget v0, Lorg/telegram/messenger/R$layout;->fork_fragment_fragment_premium:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
