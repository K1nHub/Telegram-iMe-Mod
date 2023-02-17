.class public Lorg/telegram/ui/Components/ChatBigEmptyView;
.super Landroid/widget/LinearLayout;
.source "ChatBigEmptyView.java"


# instance fields
.field private imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private statusTextView:Landroid/widget/TextView;

.field private textViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 41
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    move-object/from16 v3, p4

    .line 42
    iput-object v3, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v3, 0x12

    .line 44
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v4, "paintChatActionBackground"

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-static {v3, v0, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x10

    .line 45
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    .line 46
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x31

    const/16 v6, 0xd2

    const-string v7, "chat_serviceText"

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v9, -0x2

    if-nez v2, :cond_0

    .line 49
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v10, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 54
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-static {v9, v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 57
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v10, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 62
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-static {v9, v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 65
    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 67
    sget v6, Lorg/telegram/messenger/R$raw;->utyan_saved_messages:I

    const/16 v10, 0x78

    invoke-virtual {v5, v6, v10, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 68
    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x31

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 69
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :goto_0
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez v2, :cond_2

    .line 74
    sget v6, Lorg/telegram/messenger/R$string;->EncryptedDescriptionTitle:I

    const-string v10, "EncryptedDescriptionTitle"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    .line 77
    sget v6, Lorg/telegram/messenger/R$string;->GroupEmptyTitle2:I

    const-string v10, "GroupEmptyTitle2"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 80
    :cond_3
    sget v6, Lorg/telegram/messenger/R$string;->ChatYourSelfTitle:I

    const-string v10, "ChatYourSelfTitle"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 81
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v6, "fonts/rmedium.ttf"

    .line 82
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    :goto_1
    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x104

    .line 87
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v15, 0x3

    const/4 v14, 0x2

    if-eq v2, v14, :cond_5

    .line 88
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x5

    goto :goto_2

    :cond_4
    const/4 v13, 0x3

    goto :goto_2

    :cond_5
    const/4 v13, 0x1

    :goto_2
    or-int/lit8 v13, v13, 0x30

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/4 v10, 0x0

    if-eq v2, v14, :cond_6

    const/16 v19, 0x0

    goto :goto_3

    :cond_6
    const/16 v19, 0x8

    :goto_3
    const/4 v9, 0x2

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    :goto_4
    const/4 v11, 0x4

    if-ge v5, v11, :cond_1c

    .line 91
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v12, -0x2

    const/4 v13, -0x2

    .line 93
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_7

    const/4 v14, 0x5

    goto :goto_5

    :cond_7
    const/4 v14, 0x3

    :goto_5
    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-nez v2, :cond_8

    .line 98
    sget v13, Lorg/telegram/messenger/R$drawable;->ic_lock_white:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_8
    if-ne v2, v9, :cond_9

    .line 100
    sget v13, Lorg/telegram/messenger/R$drawable;->list_circle:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 102
    :cond_9
    sget v13, Lorg/telegram/messenger/R$drawable;->groups_overview_check:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :goto_6
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v13, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_a

    const/4 v15, 0x5

    goto :goto_7

    :cond_a
    const/4 v15, 0x3

    :goto_7
    or-int/lit8 v14, v15, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxWidth(I)V

    if-eqz v5, :cond_14

    if-eq v5, v4, :cond_11

    if-eq v5, v9, :cond_e

    const/4 v14, 0x3

    if-eq v5, v14, :cond_b

    goto/16 :goto_8

    :cond_b
    if-nez v2, :cond_c

    .line 143
    sget v15, Lorg/telegram/messenger/R$string;->EncryptedDescription4:I

    const-string v3, "EncryptedDescription4"

    invoke-static {v3, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_c
    if-ne v2, v9, :cond_d

    .line 145
    sget v3, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription4:I

    const-string v15, "ChatYourSelfDescription4"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 147
    :cond_d
    sget v3, Lorg/telegram/messenger/R$string;->GroupDescription4:I

    const-string v15, "GroupDescription4"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_e
    const/4 v14, 0x3

    if-nez v2, :cond_f

    .line 134
    sget v3, Lorg/telegram/messenger/R$string;->EncryptedDescription3:I

    const-string v15, "EncryptedDescription3"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_f
    if-ne v2, v9, :cond_10

    .line 136
    sget v3, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription3:I

    const-string v15, "ChatYourSelfDescription3"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 138
    :cond_10
    sget v3, Lorg/telegram/messenger/R$string;->GroupDescription3:I

    const-string v15, "GroupDescription3"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_11
    const/4 v14, 0x3

    if-nez v2, :cond_12

    .line 125
    sget v3, Lorg/telegram/messenger/R$string;->EncryptedDescription2:I

    const-string v15, "EncryptedDescription2"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_12
    if-ne v2, v9, :cond_13

    .line 127
    sget v3, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription2:I

    const-string v15, "ChatYourSelfDescription2"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 129
    :cond_13
    sget v3, Lorg/telegram/messenger/R$string;->GroupDescription2:I

    const-string v15, "GroupDescription2"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_14
    const/4 v14, 0x3

    if-nez v2, :cond_15

    .line 116
    sget v3, Lorg/telegram/messenger/R$string;->EncryptedDescription1:I

    const-string v15, "EncryptedDescription1"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_15
    if-ne v2, v9, :cond_16

    .line 118
    sget v3, Lorg/telegram/messenger/R$string;->ChatYourSelfDescription1:I

    const-string v15, "ChatYourSelfDescription1"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 120
    :cond_16
    sget v3, Lorg/telegram/messenger/R$string;->GroupDescription1:I

    const-string v15, "GroupDescription1"

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_8
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_19

    const/4 v3, -0x2

    .line 153
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v2, :cond_17

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x8

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 155
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    const/4 v3, -0x2

    goto/16 :goto_c

    :cond_17
    if-ne v2, v9, :cond_18

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x8

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 157
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_18
    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x8

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 159
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_19
    if-nez v2, :cond_1a

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x8

    const/16 v22, 0x0

    .line 163
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    const/4 v3, -0x2

    goto :goto_b

    :cond_1a
    if-ne v2, v9, :cond_1b

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x8

    const/16 v22, 0x0

    .line 165
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_1b
    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x8

    const/16 v22, 0x0

    .line 167
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 169
    :goto_b
    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x10

    goto/16 :goto_4

    :cond_1c
    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 175
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 176
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_serviceText"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
