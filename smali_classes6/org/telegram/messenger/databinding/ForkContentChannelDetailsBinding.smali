.class public final Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;
.super Ljava/lang/Object;
.source "ForkContentChannelDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonMore:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final buttonSubscribe:Lcom/iMe/ui/custom/BigActionButton;

.field public final constraintTags:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final flexboxTags:Lcom/google/android/flexbox/FlexboxLayout;

.field public final imageAvatar:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageLanguage:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageTags:Landroidx/appcompat/widget/AppCompatImageView;

.field public final imageVerified:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final textDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textLanguageTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textLanguageValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textName:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textNickname:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textSubscribersCount:Landroidx/appcompat/widget/AppCompatTextView;

.field public final textTags:Landroidx/appcompat/widget/AppCompatTextView;

.field public final topic:Lcom/iMe/ui/topics/TopicView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/BigActionButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/flexbox/FlexboxLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/topics/TopicView;)V
    .locals 2

    move-object v0, p0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 89
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 90
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonMore:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonSubscribe:Lcom/iMe/ui/custom/BigActionButton;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->constraintTags:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->flexboxTags:Lcom/google/android/flexbox/FlexboxLayout;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageAvatar:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageLanguage:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageTags:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageVerified:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p11

    .line 99
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p12

    .line 100
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textLanguageTitle:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p13

    .line 101
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textLanguageValue:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textName:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textNickname:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textSubscribersCount:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textTags:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p18

    .line 106
    iput-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->topic:Lcom/iMe/ui/topics/TopicView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;
    .locals 22

    move-object/from16 v0, p0

    .line 136
    sget v1, Lorg/telegram/messenger/R$id;->button_more:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v5, :cond_0

    .line 142
    sget v1, Lorg/telegram/messenger/R$id;->button_subscribe:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/ui/custom/BigActionButton;

    if-eqz v6, :cond_0

    .line 148
    sget v1, Lorg/telegram/messenger/R$id;->constraint_root:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 154
    sget v1, Lorg/telegram/messenger/R$id;->constraint_tags:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 160
    sget v1, Lorg/telegram/messenger/R$id;->flexbox_tags:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v9, :cond_0

    .line 166
    sget v1, Lorg/telegram/messenger/R$id;->image_avatar:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    .line 172
    sget v1, Lorg/telegram/messenger/R$id;->image_language:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    .line 178
    sget v1, Lorg/telegram/messenger/R$id;->image_tags:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_0

    .line 184
    sget v1, Lorg/telegram/messenger/R$id;->image_verified:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v13, :cond_0

    .line 190
    sget v1, Lorg/telegram/messenger/R$id;->text_description:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v14, :cond_0

    .line 196
    sget v1, Lorg/telegram/messenger/R$id;->text_language_title:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    .line 202
    sget v1, Lorg/telegram/messenger/R$id;->text_language_value:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    .line 208
    sget v1, Lorg/telegram/messenger/R$id;->text_name:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v17, :cond_0

    .line 214
    sget v1, Lorg/telegram/messenger/R$id;->text_nickname:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v18, :cond_0

    .line 220
    sget v1, Lorg/telegram/messenger/R$id;->text_subscribers_count:I

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    .line 226
    sget v1, Lorg/telegram/messenger/R$id;->text_tags:I

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    .line 232
    sget v1, Lorg/telegram/messenger/R$id;->topic:I

    .line 233
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/iMe/ui/topics/TopicView;

    if-eqz v21, :cond_0

    .line 238
    new-instance v1, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v21}, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/ui/custom/BigActionButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/flexbox/FlexboxLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/iMe/ui/topics/TopicView;)V

    return-object v1

    .line 243
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;
    .locals 2

    .line 123
    sget v0, Lorg/telegram/messenger/R$layout;->fork_content_channel_details:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
