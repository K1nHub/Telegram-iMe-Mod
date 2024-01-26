.class public Lorg/telegram/ui/Cells/UserCell;
.super Landroid/widget/FrameLayout;
.source "UserCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private addButton:Landroid/widget/TextView;

.field private adminTextView:Landroid/widget/TextView;

.field protected avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private currentAccount:I

.field private currentDrawable:I

.field private currentId:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Ljava/lang/Object;

.field private currentStatus:Ljava/lang/CharSequence;

.field protected dialogId:J

.field private emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private imageView:Landroid/widget/ImageView;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field protected nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public needDivider:Z

.field private premiumDrawable:Landroid/graphics/drawable/Drawable;

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selfAsSavedMessages:Z

.field private statusColor:I

.field private statusOnlineColor:I

.field protected statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private storiable:Z

.field public storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 132
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 136
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 140
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p6

    .line 144
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    .line 114
    new-instance v4, Lorg/telegram/ui/Cells/UserCell$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Cells/UserCell$1;-><init>(Lorg/telegram/ui/Cells/UserCell;Z)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 145
    iput-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "fonts/rmedium.ttf"

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x1

    const/16 v8, 0x30

    const/4 v10, 0x5

    if-eqz p5, :cond_3

    .line 149
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    const/16 v12, 0x11

    .line 150
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v13, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v11, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v14, v7, [F

    const/high16 v15, 0x40800000    # 4.0f

    aput v15, v14, v5

    invoke-static {v13, v14}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    sget v13, Lorg/telegram/messenger/R$string;->Add:I

    const-string v14, "Add"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v11, v13, v5, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    const/4 v12, -0x2

    const/16 v13, 0x1c

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_0

    const/4 v15, 0x3

    goto :goto_0

    :cond_0
    move v15, v10

    :goto_0
    or-int/2addr v15, v8

    const/16 v16, 0xe

    if-eqz v14, :cond_1

    move/from16 v17, v16

    goto :goto_1

    :cond_1
    move/from16 v17, v5

    :goto_1
    const/16 v18, 0xf

    if-eqz v14, :cond_2

    move/from16 v19, v5

    goto :goto_2

    :cond_2
    move/from16 v19, v16

    :goto_2
    const/16 v20, 0x0

    move v14, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v11, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    goto :goto_3

    :cond_3
    move v11, v5

    .line 163
    :goto_3
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v12, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    .line 164
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v12, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    iput v12, v0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    .line 166
    new-instance v12, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v12}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 168
    new-instance v12, Lorg/telegram/ui/Cells/UserCell$2;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Cells/UserCell$2;-><init>(Lorg/telegram/ui/Cells/UserCell;Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v13, 0x18

    .line 187
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 188
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v13, 0x2e

    const/16 v14, 0x2e

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_4

    move/from16 v16, v10

    goto :goto_4

    :cond_4
    const/16 v16, 0x3

    :goto_4
    or-int/lit8 v16, v16, 0x30

    if-eqz v15, :cond_5

    move/from16 v17, v5

    goto :goto_5

    :cond_5
    add-int/lit8 v17, p2, 0x7

    :goto_5
    const/16 v18, 0x6

    if-eqz v15, :cond_6

    add-int/lit8 v15, p2, 0x7

    move/from16 v19, v15

    goto :goto_6

    :cond_6
    move/from16 v19, v5

    :goto_6
    const/16 v20, 0x0

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 191
    new-instance v12, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v12, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 192
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 193
    iget-object v12, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 195
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_7

    move v13, v10

    goto :goto_7

    :cond_7
    const/4 v13, 0x3

    :goto_7
    or-int/2addr v13, v8

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 196
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v13, -0x1

    const/16 v14, 0x14

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_8

    move/from16 v16, v10

    goto :goto_8

    :cond_8
    const/16 v16, 0x3

    :goto_8
    or-int/lit8 v16, v16, 0x30

    const/16 v17, 0x12

    const/4 v9, 0x2

    if-eqz v15, :cond_a

    if-ne v2, v9, :cond_9

    move/from16 v18, v17

    goto :goto_9

    :cond_9
    move/from16 v18, v5

    :goto_9
    add-int/lit8 v18, v18, 0x1c

    add-int v18, v18, v11

    goto :goto_a

    :cond_a
    add-int/lit8 v18, p2, 0x40

    :goto_a
    const/16 v19, 0xa

    if-eqz v15, :cond_b

    add-int/lit8 v15, p2, 0x40

    move/from16 v21, v15

    goto :goto_c

    :cond_b
    if-ne v2, v9, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v17, v5

    :goto_b
    add-int/lit8 v17, v17, 0x1c

    add-int v17, v17, v11

    move/from16 v21, v17

    :goto_c
    const/16 v22, 0x0

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v13, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v14, 0x14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-direct {v4, v13, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 200
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v13, 0xf

    .line 201
    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 202
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_d

    move v13, v10

    goto :goto_d

    :cond_d
    const/4 v13, 0x3

    :goto_d
    or-int/2addr v13, v8

    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 203
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v13, -0x1

    const/16 v14, 0x14

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_e

    move/from16 v16, v10

    goto :goto_e

    :cond_e
    const/16 v16, 0x3

    :goto_e
    or-int/lit8 v16, v16, 0x30

    if-eqz v15, :cond_f

    add-int/lit8 v17, v11, 0x1c

    goto :goto_f

    :cond_f
    add-int/lit8 v17, p2, 0x40

    :goto_f
    const/16 v18, 0x20

    if-eqz v15, :cond_10

    add-int/lit8 v11, p2, 0x40

    goto :goto_10

    :cond_10
    add-int/lit8 v11, v11, 0x1c

    :goto_10
    const/16 v19, 0x0

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v11

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    .line 206
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 207
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v13, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 208
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    const/4 v13, -0x2

    const/4 v14, -0x2

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_11

    move v15, v10

    goto :goto_11

    :cond_11
    const/4 v15, 0x3

    :goto_11
    or-int/2addr v15, v12

    if-eqz v11, :cond_12

    move/from16 v16, v5

    goto :goto_12

    :cond_12
    move/from16 v16, v12

    :goto_12
    const/16 v17, 0x0

    if-eqz v11, :cond_13

    move/from16 v18, v12

    goto :goto_13

    :cond_13
    move/from16 v18, v5

    :goto_13
    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v2, v9, :cond_17

    .line 212
    new-instance v2, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/16 v13, 0x12

    const/16 v14, 0x12

    .line 213
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_14

    const/4 v9, 0x3

    goto :goto_14

    :cond_14
    move v9, v10

    :goto_14
    or-int/lit8 v15, v9, 0x10

    const/16 v9, 0x13

    if-eqz v4, :cond_15

    move/from16 v16, v9

    goto :goto_15

    :cond_15
    move/from16 v16, v5

    :goto_15
    const/16 v17, 0x0

    if-eqz v4, :cond_16

    move/from16 v18, v5

    goto :goto_16

    :cond_16
    move/from16 v18, v9

    :goto_16
    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    :cond_17
    if-ne v2, v7, :cond_1b

    .line 215
    new-instance v2, Lorg/telegram/ui/Components/CheckBox;

    sget v4, Lorg/telegram/messenger/R$drawable;->round_check2:I

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v4, 0x4

    .line 216
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 217
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v9, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 218
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v11, 0x16

    const/16 v12, 0x16

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_18

    move v9, v10

    goto :goto_17

    :cond_18
    const/4 v9, 0x3

    :goto_17
    or-int/lit8 v13, v9, 0x30

    if-eqz v4, :cond_19

    move v14, v5

    goto :goto_18

    :cond_19
    add-int/lit8 v9, p2, 0x25

    move v14, v9

    :goto_18
    const/16 v15, 0x28

    if-eqz v4, :cond_1a

    add-int/lit8 v4, p2, 0x25

    move/from16 v16, v4

    goto :goto_19

    :cond_1a
    move/from16 v16, v5

    :goto_19
    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    :goto_1a
    if-eqz p4, :cond_1f

    .line 222
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    .line 223
    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_creatorIcon:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/4 v12, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1c

    const/4 v9, 0x3

    goto :goto_1b

    :cond_1c
    move v9, v10

    :goto_1b
    or-int/lit8 v13, v9, 0x30

    const/16 v3, 0x17

    if-eqz v2, :cond_1d

    move v14, v3

    goto :goto_1c

    :cond_1d
    move v14, v5

    :goto_1c
    const/16 v15, 0xa

    if-eqz v2, :cond_1e

    move/from16 v16, v5

    goto :goto_1d

    :cond_1e
    move/from16 v16, v3

    :goto_1d
    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :cond_1f
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/UserCell;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/UserCell;->storiable:Z

    return p0
.end method


# virtual methods
.method public changeCheckBoxMargins()V
    .locals 5

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x24

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 685
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 686
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCurrentObject()Ljava/lang/Object;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 706
    iget-wide v0, p0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideNameDrawable()V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 434
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 692
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 693
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 699
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 700
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->onDetachFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 664
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/UserCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 665
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x44

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 671
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    const-string v1, "android.widget.CheckBox"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 673
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 675
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 677
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 679
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 424
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x3a

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/UserCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openStory(JLjava/lang/Runnable;)V
    .locals 2

    .line 122
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReady(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v1

    invoke-virtual {p3, v0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_0
    return-void
.end method

.method public setAddButtonVisible(Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->addButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 256
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setAdminRole(Ljava/lang/String;)V
    .locals 5

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 263
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_4

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x6

    if-eqz v2, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    invoke-virtual {v0, v2, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 270
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_3
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 3

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/ui/Cells/UserCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/UserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v2, v1}, Lcom/iMe/utils/helper/GlideHelper;->loadImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method

.method public setAvatarPadding(I)V
    .locals 5

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 233
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x7

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 234
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, p1, 0x7

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x12

    const/16 v4, 0x1c

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v1, p1, 0x40

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 239
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    add-int/lit8 v1, p1, 0x40

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    add-int/lit8 v1, v3, 0x1c

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_6

    :cond_6
    add-int/lit8 v1, p1, 0x40

    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 243
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_7

    add-int/lit8 v4, p1, 0x40

    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    if-eqz v0, :cond_a

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 247
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    add-int/lit8 v1, p1, 0x25

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 248
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_9

    add-int/lit8 v2, p1, 0x25

    :cond_9
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_a
    return-void
.end method

.method public setCheckDisabled(Z)V
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setDisabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->checkBoxBig:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCurrentId(I)V
    .locals 0

    .line 399
    iput p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentId:I

    return-void
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 279
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 283
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 289
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 290
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/UserCell;->storiable:Z

    .line 291
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    .line 292
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 293
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 294
    iget-object p2, p0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 298
    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    .line 300
    :try_start_0
    iget-object p4, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p4, :cond_1

    .line 301
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    const/16 v0, 0x12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p3, p4, v0, p2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :catch_0
    :cond_1
    iput-object p3, p0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    .line 305
    instance-of p3, p1, Ljava/lang/String;

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lorg/telegram/ui/Cells/UserCell;->storiable:Z

    .line 306
    iput-object p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    .line 307
    iput p5, p0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    .line 308
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/UserCell;->needDivider:Z

    xor-int/lit8 p1, p6, 0x1

    .line 309
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 310
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    return-void
.end method

.method public setException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;Ljava/lang/CharSequence;Z)V
    .locals 8

    .line 319
    iget-boolean v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->story:Z

    if-eqz v0, :cond_3

    .line 320
    iget v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    if-gtz v0, :cond_0

    iget-boolean v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->auto:Z

    if-eqz v1, :cond_0

    const-string v0, "NotificationEnabledAutomatically"

    .line 321
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gtz v0, :cond_1

    const-string v0, "NotificationEnabled"

    .line 323
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "NotificationDisabled"

    .line 325
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    move-object v5, v0

    goto/16 :goto_3

    .line 329
    :cond_3
    iget-boolean v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->hasCustom:Z

    .line 330
    iget v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->notify:I

    .line 331
    iget v2, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->muteUntil:I

    const/4 v3, 0x3

    const-string v4, "NotificationsCustom"

    const-string v5, "NotificationsUnmuted"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_9

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_9

    .line 333
    iget v1, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    sub-int/2addr v2, v1

    if-gtz v2, :cond_5

    if-eqz v0, :cond_4

    .line 336
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 338
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsUnmuted:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    const/16 v0, 0xe10

    const-string v1, "WillUnmuteIn"

    if-ge v2, v0, :cond_6

    .line 341
    sget v0, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    new-array v3, v6, [Ljava/lang/Object;

    div-int/lit8 v2, v2, 0x3c

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Minutes"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    const v0, 0x15180

    const/high16 v3, 0x42700000    # 60.0f

    if-ge v2, v0, :cond_7

    .line 343
    sget v0, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    new-array v4, v6, [Ljava/lang/Object;

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v5, "Hours"

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v1, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const v0, 0x1e13380

    if-ge v2, v0, :cond_8

    .line 345
    sget v0, Lorg/telegram/messenger/R$string;->WillUnmuteIn:I

    new-array v4, v6, [Ljava/lang/Object;

    int-to-float v2, v2

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string v5, "Days"

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v1, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    if-ne v1, v6, :cond_b

    goto :goto_1

    :cond_b
    move v6, v7

    :goto_1
    if-eqz v6, :cond_c

    if-eqz v0, :cond_c

    .line 360
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsCustom:I

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    if-eqz v6, :cond_d

    .line 362
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsUnmuted:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsMuted:I

    const-string v1, "NotificationsMuted"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_e

    .line 366
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string v1, "NotificationsOff"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_e
    iget-boolean v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->auto:Z

    if-eqz v1, :cond_2

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Auto"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 373
    :goto_3
    iget-wide v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 374
    iget p3, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 376
    iget p1, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    .line 378
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_4

    .line 381
    :cond_f
    iget-wide v0, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 382
    iget v0, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move v7, p3

    .line 384
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_4

    .line 387
    :cond_10
    iget v0, p0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;->did:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move v7, p3

    .line 389
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_11
    :goto_4
    return-void
.end method

.method public setNameTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setSelfAsSavedMessages(Z)V
    .locals 0

    .line 654
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/UserCell;->selfAsSavedMessages:Z

    return-void
.end method

.method public update(I)V
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 445
    iput-wide v1, v0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    .line 446
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 447
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 448
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 451
    :goto_0
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    move-object v4, v2

    move-object v2, v3

    goto :goto_2

    .line 452
    :cond_1
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    .line 453
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 454
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v2, :cond_2

    .line 455
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 457
    :goto_1
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v4, v0, Lorg/telegram/ui/Cells/UserCell;->dialogId:J

    move-object v4, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object v1, v3

    move-object v2, v1

    move-object v4, v2

    :goto_2
    if-eqz p1, :cond_d

    .line 462
    sget v7, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v7, p1, v7

    if-eqz v7, :cond_7

    .line 463
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v7, :cond_4

    if-eqz v4, :cond_6

    :cond_4
    if-nez v7, :cond_5

    if-nez v4, :cond_6

    :cond_5
    if-eqz v7, :cond_7

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v7, v8, :cond_7

    :cond_6
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    if-eqz v1, :cond_9

    if-nez v7, :cond_9

    .line 467
    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v8, p1, v8

    if-eqz v8, :cond_9

    .line 469
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v8, :cond_8

    .line 470
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    .line 472
    :goto_4
    iget v9, v0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    if-eq v8, v9, :cond_9

    const/4 v7, 0x1

    :cond_9
    if-nez v7, :cond_b

    .line 476
    iget-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v8, :cond_b

    iget-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    if-eqz v8, :cond_b

    sget v8, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v8, p1, v8

    if-eqz v8, :cond_b

    if-eqz v1, :cond_a

    .line 478
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 480
    :cond_a
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 482
    :goto_5
    iget-object v9, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    move-object v8, v3

    :cond_c
    :goto_6
    if-nez v7, :cond_e

    return-void

    :cond_d
    move-object v8, v3

    .line 491
    :cond_e
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    const-string v9, ""

    const-string v10, "50_50"

    const/16 v11, 0x13

    const/16 v12, 0xa

    const/16 v13, 0x8

    if-eqz v7, :cond_17

    .line 492
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 493
    iget-object v7, v0, Lorg/telegram/ui/Cells/UserCell;->currentObject:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 494
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x7

    const/4 v11, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    sparse-switch v14, :sswitch_data_0

    :goto_7
    const/4 v7, -0x1

    goto/16 :goto_8

    :sswitch_0
    const-string v14, "channels"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_7

    :cond_f
    move v7, v15

    goto :goto_8

    :sswitch_1
    const-string v14, "muted"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_7

    :cond_10
    move v7, v11

    goto :goto_8

    :sswitch_2
    const-string v14, "read"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_7

    :cond_11
    move v7, v6

    goto :goto_8

    :sswitch_3
    const-string v14, "bots"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_7

    :cond_12
    move v7, v5

    goto :goto_8

    :sswitch_4
    const-string v14, "contacts"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_7

    :cond_13
    const/4 v7, 0x3

    goto :goto_8

    :sswitch_5
    const-string v14, "non_contacts"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_7

    :cond_14
    const/4 v7, 0x2

    goto :goto_8

    :sswitch_6
    const-string v14, "groups"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_7

    :cond_15
    const/4 v7, 0x1

    goto :goto_8

    :sswitch_7
    const-string v14, "archived"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_7

    :cond_16
    const/4 v7, 0x0

    :goto_8
    packed-switch v7, :pswitch_data_0

    goto :goto_9

    .line 505
    :pswitch_0
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 511
    :pswitch_1
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 514
    :pswitch_2
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 508
    :pswitch_3
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 496
    :pswitch_4
    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 499
    :pswitch_5
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 502
    :pswitch_6
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_9

    .line 517
    :pswitch_7
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 520
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v3, v10, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 521
    iput-object v9, v0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 523
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_1a

    .line 525
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/UserCell;->selfAsSavedMessages:Z

    if-eqz v5, :cond_18

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 526
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v5, "SavedMessages"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 527
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 528
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 529
    iget-object v2, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v3, v10, v4, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 530
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void

    .line 533
    :cond_18
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 534
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_19

    .line 535
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v5, v0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    goto :goto_a

    :cond_19
    const/4 v5, 0x0

    .line 537
    iput v5, v0, Lorg/telegram/ui/Cells/UserCell;->lastStatus:I

    goto :goto_a

    :cond_1a
    if-eqz v2, :cond_1b

    .line 540
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-virtual {v5, v6, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_a

    .line 541
    :cond_1b
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1c

    .line 542
    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v7, v0, Lorg/telegram/ui/Cells/UserCell;->currentId:I

    int-to-long v10, v7

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10, v11, v5, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 544
    :cond_1c
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentId:I

    int-to-long v6, v6

    const-string v10, "#"

    invoke-virtual {v5, v6, v7, v10, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1d

    .line 549
    iput-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 550
    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_c

    :cond_1d
    if-eqz v1, :cond_1f

    if-nez v8, :cond_1e

    .line 553
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    :cond_1e
    iput-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    goto :goto_b

    :cond_1f
    if-eqz v2, :cond_21

    if-nez v8, :cond_20

    .line 555
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_20
    iput-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    goto :goto_b

    .line 557
    :cond_21
    iput-object v9, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    .line 559
    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->lastName:Ljava/lang/String;

    if-eqz v5, :cond_22

    .line 562
    :try_start_0
    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    const/16 v7, 0x12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :catch_0
    :cond_22
    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 568
    :goto_c
    iget v5, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v5}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v5

    .line 569
    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v6}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v6

    const/16 v7, 0xe

    if-eqz v1, :cond_29

    .line 571
    iget v8, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_29

    if-nez v5, :cond_23

    if-eqz v6, :cond_29

    :cond_23
    if-eqz v6, :cond_24

    .line 572
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz v9, :cond_24

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v9, v9

    if-le v8, v9, :cond_24

    .line 573
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 574
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 575
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    :cond_24
    if-eqz v6, :cond_25

    .line 576
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    if-eqz v8, :cond_25

    .line 577
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    iget-wide v5, v6, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 578
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 579
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->emojiStatus:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 581
    :cond_25
    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_26

    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    .line 583
    new-instance v6, Lorg/telegram/ui/Cells/UserCell$3;

    iget-object v8, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-direct {v6, v0, v8, v9, v10}, Lorg/telegram/ui/Cells/UserCell$3;-><init>(Lorg/telegram/ui/Cells/UserCell;Landroid/graphics/drawable/Drawable;II)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    .line 592
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object v10, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_26
    if-nez v5, :cond_27

    .line 596
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 598
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->premiumDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_28

    .line 602
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    goto :goto_e

    .line 604
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    const/4 v5, 0x0

    goto :goto_e

    .line 606
    :cond_29
    iget-object v5, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    .line 609
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2a

    .line 610
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 611
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_11

    :cond_2a
    if-eqz v1, :cond_31

    .line 613
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_2d

    .line 614
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 615
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-nez v3, :cond_2c

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_f

    .line 618
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/messenger/R$string;->BotStatusCantRead:I

    const-string v8, "BotStatusCantRead"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 616
    :cond_2c
    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/messenger/R$string;->BotStatusRead:I

    const-string v8, "BotStatusRead"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 621
    :cond_2d
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v3, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-eqz v3, :cond_30

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_2e

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    if-gt v3, v6, :cond_30

    :cond_2e
    iget v3, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_10

    .line 625
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->statusColor:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 626
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentAccount:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 622
    :cond_30
    :goto_10
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->statusOnlineColor:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 623
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/messenger/R$string;->Online:I

    const-string v8, "Online"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 631
    :cond_31
    :goto_11
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_32

    iget v3, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v3, :cond_33

    :cond_32
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v13, :cond_35

    iget v3, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-eqz v3, :cond_35

    .line 632
    :cond_33
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v6, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    if-nez v6, :cond_34

    move v6, v13

    goto :goto_12

    :cond_34
    move v6, v5

    :goto_12
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->imageView:Landroid/widget/ImageView;

    iget v5, v0, Lorg/telegram/ui/Cells/UserCell;->currentDrawable:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 636
    :cond_35
    iput-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_36

    .line 638
    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_13

    :cond_36
    if-eqz v2, :cond_37

    .line 640
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_13

    .line 642
    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v2, :cond_38

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v2, :cond_38

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_14

    :cond_38
    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :goto_14
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 647
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 648
    iget-object v1, v0, Lorg/telegram/ui/Cells/UserCell;->adminTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_39

    .line 649
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_creatorIcon:I

    iget-object v3, v0, Lorg/telegram/ui/Cells/UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_39
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x664cc81e -> :sswitch_7
        -0x49c2262c -> :sswitch_6
        -0x4760427b -> :sswitch_5
        -0x21d29fad -> :sswitch_4
        0x2e3b8c -> :sswitch_3
        0x355996 -> :sswitch_2
        0x636f16b -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
