.class public Lorg/telegram/ui/Cells/StickerSetCell;
.super Landroid/widget/FrameLayout;
.source "StickerSetCell.java"


# instance fields
.field private addButtonView:Landroid/widget/TextView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private emojis:Z

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private needDivider:Z

.field private onAddButtonClick:Lcom/iMe/fork/utils/Callbacks$Callback;

.field private final option:I

.field private optionsButton:Landroid/widget/ImageView;

.field private premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private rect:Landroid/graphics/Rect;

.field private removeButtonView:Landroid/widget/TextView;

.field private reorderButton:Landroid/widget/ImageView;

.field private sideButtons:Landroid/widget/FrameLayout;

.field private stateAnimator:Landroid/animation/AnimatorSet;

.field private stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1saGlODCSvi3uMJtxyWfVIXETYM(Lorg/telegram/ui/Cells/StickerSetCell;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setReorderable$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Q_AdyHKHH3w-T_LKaD3gdg1o64(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$updateButtonState$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9KNj0ATI_zJ9x5rSse1xspPzORw(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BtJM57r93pcKzDrXhDp37TJqqCo(Lorg/telegram/ui/Cells/StickerSetCell;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setReorderable$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ekNwVVHqZmyMKnCELQdFC1Bk2Rw(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sCU-kEAOMTXd8jb5icqonsZ90OM(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$updateButtonState$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wKpCENWJnnQUdOgPyFcWV6RsoGk(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wUP9GI7sWAJXOOuoJtL0aWEN6Uc(Lorg/telegram/ui/Cells/StickerSetCell;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$setReorderable$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zMskMO2cGOWKghKfngWfwddFdhU(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 111
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 67
    iput-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->onAddButtonClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    .line 98
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    .line 112
    iput v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    .line 114
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v5, 0x1

    .line 115
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 116
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 117
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x3

    if-eqz v6, :cond_0

    const/4 v9, 0x5

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    or-int/lit8 v12, v9, 0x30

    const/16 v9, 0xd

    const/4 v15, 0x0

    if-eqz v6, :cond_1

    move v13, v15

    goto :goto_1

    :cond_1
    move v13, v9

    :goto_1
    const/16 v14, 0x9

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v9, v15

    :goto_2
    const/16 v16, 0x0

    const/16 v10, 0x28

    const/16 v11, 0x28

    move v6, v15

    move v15, v9

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x8

    if-eqz v3, :cond_9

    .line 120
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 122
    iget-object v9, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eq v3, v8, :cond_3

    .line 124
    iget-object v9, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-ne v3, v5, :cond_5

    .line 127
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 128
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_actions:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v11, "AccDescrMoreOptions"

    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_4

    move v9, v8

    goto :goto_3

    :cond_4
    const/4 v9, 0x5

    :goto_3
    or-int/lit8 v9, v9, 0x10

    const/16 v11, 0x28

    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    const/4 v9, 0x0

    .line 133
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 134
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 138
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    const v9, 0x800005

    const/high16 v10, 0x42680000    # 58.0f

    invoke-static {v10, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v3, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v9, 0x15

    invoke-direct {v3, v1, v9}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v9, -0x1

    .line 141
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v3, v9, v10, v11}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 142
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 143
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 144
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/high16 v16, 0x41c00000    # 24.0f

    const/high16 v17, 0x41c00000    # 24.0f

    const v18, 0x800003

    const/high16 v19, 0x42080000    # 34.0f

    const/high16 v20, 0x41f00000    # 30.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_5
    if-ne v3, v8, :cond_9

    .line 146
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 147
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v16, 0x28

    const/16 v17, 0x28

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_6

    move v10, v8

    goto :goto_4

    :cond_6
    const/4 v10, 0x5

    :goto_4
    or-int/lit8 v18, v10, 0x30

    if-eqz v9, :cond_7

    const/16 v19, 0xa

    goto :goto_5

    :cond_7
    move/from16 v19, v6

    :goto_5
    const/16 v20, 0x9

    if-eqz v9, :cond_8

    move/from16 v21, v6

    goto :goto_6

    :cond_8
    const/16 v21, 0xa

    :goto_6
    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_9
    :goto_7
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    .line 154
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    .line 155
    invoke-virtual {v3, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const-string v10, "fonts/rmedium.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 157
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->Add:I

    const-string v12, "Add"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    new-array v14, v5, [F

    const/high16 v16, 0x40800000    # 4.0f

    aput v16, v14, v6

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const/16 v12, 0xe

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v3, v13, v6, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const/16 v12, 0x11

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    new-instance v13, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda4;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_a

    move v14, v8

    goto :goto_8

    :cond_a
    const/4 v14, 0x5

    :goto_8
    or-int/lit8 v14, v14, 0x10

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v15, 0x41e00000    # 28.0f

    invoke-static {v7, v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    .line 166
    invoke-virtual {v3, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string v13, "StickersRemove"

    invoke-static {v13, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_removeButtonText:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const v9, 0x1affffff

    and-int/2addr v2, v9

    new-array v9, v5, [F

    aput v16, v9, v6

    invoke-static {v6, v2, v9}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(II[F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v9, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v20, 0x42000000    # 32.0f

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_b

    move v9, v8

    goto :goto_9

    :cond_b
    const/4 v9, 0x5

    :goto_9
    or-int/lit8 v21, v9, 0x10

    const/16 v22, 0x0

    const/high16 v23, -0x40000000    # -2.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v2, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-direct {v2, v1, v3, v6}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    .line 177
    sget v3, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    .line 178
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v3, Lorg/telegram/messenger/R$string;->Unlock:I

    const-string v9, "Unlock"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda5;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v2, v3, v9}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 180
    :try_start_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 181
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 182
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v3, 0x14

    .line 183
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 184
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->getTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 185
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 186
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_c

    move v4, v8

    goto :goto_a

    :cond_c
    const/4 v4, 0x5

    :goto_a
    or-int/lit8 v4, v4, 0x10

    invoke-static {v7, v15, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v4, v6, v3, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 191
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const/16 v18, -0x2

    const/16 v19, -0x1

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_d

    move/from16 v20, v8

    goto :goto_b

    :cond_d
    const/16 v20, 0x5

    :goto_b
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    new-instance v2, Lorg/telegram/ui/Cells/StickerSetCell$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell$1;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    .line 209
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 210
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 214
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 215
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 216
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 217
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, -0x40000000    # -2.0f

    const v9, 0x800003

    const/high16 v10, 0x428e0000    # 71.0f

    const/high16 v11, 0x41100000    # 9.0f

    const/high16 v12, 0x428c0000    # 70.0f

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    .line 221
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 225
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 226
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/Cells/StickerSetCell;->updateButtonState(IZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/FrameLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/ImageView;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/StickerSetCell;)Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/StickerSetCell;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onAddButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onRemoveButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onPremiumButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$setReorderable$4(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setReorderable$5(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 497
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setReorderable$6(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateButtonState$7(Landroid/view/View;)V
    .locals 0

    .line 602
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onPremiumButtonClick()V

    return-void
.end method

.method private synthetic lambda$updateButtonState$8(Landroid/view/View;)V
    .locals 0

    .line 604
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->onPremiumButtonClick()V

    return-void
.end method


# virtual methods
.method public getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public isChecked()Z
    .locals 4

    .line 395
    iget v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 401
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    return v3
.end method

.method protected onAddButtonClick()V
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->onAddButtonClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 572
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 573
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x47

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

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

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

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
    .locals 1

    .line 660
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 662
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 663
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 251
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x3a

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onPremiumButtonClick()V
    .locals 0

    return-void
.end method

.method protected onRemoveButtonClick()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 556
    iget-object v4, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 557
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    if-lt v0, v2, :cond_1

    .line 561
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 562
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 567
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 9

    .line 408
    iget v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    goto/16 :goto_6

    .line 410
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    const-wide/16 v2, 0x96

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3dcccccd    # 0.1f

    if-eqz v1, :cond_6

    if-eqz p2, :cond_4

    .line 412
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 413
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$2;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v4, v7

    .line 427
    :cond_1
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_6

    .line 429
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_2
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_c

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_6

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_a

    .line 437
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 438
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$3;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_7

    move v4, v7

    .line 452
    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_8

    move v0, v7

    goto :goto_3

    :cond_8
    move v0, v8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move v7, v8

    :goto_4
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    .line 454
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v5, v6

    :goto_5
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_c

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_c
    :goto_6
    return-void
.end method

.method public setCustomButtonAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->onAddButtonClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method

.method public setCustomButtonText(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->updateButtonState(IZ)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    return-void
.end method

.method public setOnOptionsClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setReorderable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 464
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setReorderable(ZZ)V

    return-void
.end method

.method public setReorderable(ZZ)V
    .locals 8

    .line 468
    iget v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->option:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x0

    aput v5, v2, v6

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    aput v3, v2, v1

    new-array v0, v0, [F

    const v3, 0x3f28f5c3    # 0.66f

    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    aput v5, v0, v6

    if-eqz p1, :cond_3

    move v4, v3

    :cond_3
    aput v4, v0, v1

    if-eqz p2, :cond_5

    .line 474
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v3, v2, v6

    .line 476
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v3, v0, v6

    .line 477
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v3, v0, v6

    .line 478
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v3, 0xc8

    .line 479
    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v5, Lorg/telegram/ui/Components/Easings;->easeOutSine:Landroid/view/animation/Interpolator;

    .line 480
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v7, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    .line 481
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 485
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 487
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz p2, :cond_4

    .line 488
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 489
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v2, v2, v1

    .line 490
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v2, v0, v1

    .line 491
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v0, v0, v1

    .line 492
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 493
    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 494
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    .line 495
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_4

    .line 501
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v2, v2, v1

    .line 503
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v2, v0, v1

    .line 504
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    aget v0, v0, v1

    .line 505
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 506
    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 507
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;Z)V

    .line 508
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    .line 516
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz p1, :cond_6

    move v4, v6

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    aget v4, v2, v6

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 518
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    aget v4, v0, v6

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 519
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->reorderButton:Landroid/widget/ImageView;

    aget v4, v0, v6

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 521
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz p2, :cond_8

    .line 522
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    move v6, v3

    :cond_7
    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    aget p2, v2, v1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_4

    .line 527
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    move v6, v3

    :cond_9
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    aget p2, v2, v1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    aget p2, v0, v1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_a
    :goto_4
    return-void
.end method

.method public setSearchQuery(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 287
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 288
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 290
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 291
    new-instance v5, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v5, v6, p3}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v0, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 297
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_1

    const-string v1, "t.me/addemoji/"

    goto :goto_0

    :cond_1
    const-string v1, "t.me/addstickers/"

    .line 300
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 301
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 302
    new-instance p1, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {p1, v1, p3}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {v3, p1, v0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZZ)V

    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;ZZ)V
    .locals 12

    .line 309
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    .line 310
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 312
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    .line 314
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 318
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 320
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 321
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 322
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 329
    :goto_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    .line 330
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 334
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    const-string v3, "EmojiCount"

    const-string v4, "Stickers"

    if-eqz p2, :cond_11

    .line 335
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 336
    iget-object v5, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    iget-boolean v6, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v0

    .line 339
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 340
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_5

    .line 341
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_document_id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    move-object v2, v4

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-nez v2, :cond_7

    .line 347
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    :cond_7
    const/4 p2, 0x1

    .line 349
    invoke-static {p2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    .line 350
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x5a

    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v2

    .line 354
    :cond_8
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4, v5, v1}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v10

    .line 357
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_9

    .line 358
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 359
    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    goto :goto_6

    .line 361
    :cond_9
    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 362
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 365
    :goto_6
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->emojis:Z

    if-eqz v3, :cond_a

    const/16 v3, 0x4004

    goto :goto_7

    :cond_a
    move v3, p2

    :goto_7
    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "50_50"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_b

    const-string v3, "_firstframe"

    goto :goto_8

    :cond_b
    const-string v3, ""

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_c

    .line 367
    invoke-static {v2, p2}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    if-eqz v10, :cond_e

    .line 369
    iget-object v6, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 p2, 0x0

    move-object v8, v5

    move-object v9, v10

    move v10, p2

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_9

    .line 371
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    .line 373
    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 374
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_b

    :cond_f
    if-eqz v0, :cond_10

    .line 376
    iget v1, v0, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v1, p2, :cond_10

    .line 377
    iget-object v6, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v9, "tgs"

    move-object v7, v0

    move-object v8, v5

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_b

    .line 379
    :cond_10
    iget-object v6, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string v9, "webp"

    move-object v7, v0

    move-object v8, v5

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_b

    .line 382
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_12
    move-object v3, v4

    :goto_a
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    :goto_b
    if-eqz p3, :cond_15

    .line 386
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-eqz v0, :cond_14

    const-string v0, "t.me/addemoji/"

    goto :goto_c

    :cond_14
    const-string v0, "t.me/addstickers/"

    :goto_c
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 255
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    const/4 p4, 0x0

    .line 256
    iput-object p4, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 257
    iget-object p4, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/16 p2, 0xa

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x4

    if-eqz p3, :cond_1

    .line 265
    iget-object p4, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p4, p3, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(II)V

    .line 266
    iget-object p3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p1, :cond_2

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 271
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz p2, :cond_2

    .line 273
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateButtonState(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 597
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 598
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 599
    iput-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 602
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v5, Lorg/telegram/messenger/R$string;->Unlock:I

    const-string v6, "Unlock"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 604
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v5, Lorg/telegram/messenger/R$string;->Restore:I

    const-string v6, "Restore"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/StickerSetCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;)V

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 606
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v3

    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setEnabled(Z)V

    .line 607
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    const/4 v6, 0x3

    if-ne v1, v6, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v5

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 608
    iget-object v4, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    const/4 v7, 0x4

    if-ne v1, v7, :cond_6

    move v8, v3

    goto :goto_4

    :cond_6
    move v8, v5

    :goto_4
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 v4, 0x8

    const/4 v8, 0x0

    const v9, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p2, :cond_13

    .line 610
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    const/16 v12, 0x9

    new-array v12, v12, [Landroid/animation/Animator;

    .line 611
    iget-object v13, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v14, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v15, v3, [F

    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v16, v8

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v16, v10

    :goto_6
    aput v16, v15, v5

    .line 612
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v5

    iget-object v13, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v14, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    new-array v15, v3, [F

    if-eq v1, v3, :cond_a

    if-ne v1, v2, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v16, v9

    goto :goto_8

    :cond_a
    :goto_7
    move/from16 v16, v10

    :goto_8
    aput v16, v15, v5

    .line 613
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v3

    iget-object v13, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget-object v14, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v15, v3, [F

    if-eq v1, v3, :cond_c

    if-ne v1, v2, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v16, v9

    goto :goto_a

    :cond_c
    :goto_9
    move/from16 v16, v10

    :goto_a
    aput v16, v15, v5

    .line 614
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v6, :cond_d

    move v15, v10

    goto :goto_b

    :cond_d
    move v15, v8

    :goto_b
    aput v15, v14, v5

    .line 615
    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v12, v6

    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget-object v13, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v6, :cond_e

    move v15, v10

    goto :goto_c

    :cond_e
    move v15, v9

    :goto_c
    aput v15, v14, v5

    .line 616
    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v12, v7

    const/4 v2, 0x5

    iget-object v13, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    sget-object v14, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v15, v3, [F

    if-ne v1, v6, :cond_f

    move v6, v10

    goto :goto_d

    :cond_f
    move v6, v9

    :goto_d
    aput v6, v15, v5

    .line 617
    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v12, v2

    const/4 v2, 0x6

    iget-object v6, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget-object v13, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v14, v3, [F

    if-ne v1, v7, :cond_10

    move v8, v10

    :cond_10
    aput v8, v14, v5

    .line 618
    invoke-static {v6, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v12, v2

    const/4 v2, 0x7

    iget-object v6, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget-object v8, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    new-array v13, v3, [F

    if-ne v1, v7, :cond_11

    move v14, v10

    goto :goto_e

    :cond_11
    move v14, v9

    :goto_e
    aput v14, v13, v5

    .line 619
    invoke-static {v6, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v12, v2

    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    sget-object v6, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    if-ne v1, v7, :cond_12

    move v9, v10

    :cond_12
    aput v9, v3, v5

    .line 620
    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v12, v4

    .line 611
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 622
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Cells/StickerSetCell$4;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell$4;-><init>(Lorg/telegram/ui/Cells/StickerSetCell;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 638
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 639
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f828f5c    # 1.02f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 640
    iget-object v1, v0, Lorg/telegram/ui/Cells/StickerSetCell;->stateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1d

    .line 642
    :cond_13
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_15

    if-ne v1, v2, :cond_14

    goto :goto_f

    :cond_14
    move v12, v8

    goto :goto_10

    :cond_15
    :goto_f
    move v12, v10

    :goto_10
    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 643
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_17

    if-ne v1, v2, :cond_16

    goto :goto_11

    :cond_16
    move v12, v9

    goto :goto_12

    :cond_17
    :goto_11
    move v12, v10

    :goto_12
    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 644
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_19

    if-ne v1, v2, :cond_18

    goto :goto_13

    :cond_18
    move v12, v9

    goto :goto_14

    :cond_19
    :goto_13
    move v12, v10

    :goto_14
    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 645
    iget-object v11, v0, Lorg/telegram/ui/Cells/StickerSetCell;->premiumButtonView:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_1a

    goto :goto_15

    :cond_1a
    move v2, v4

    goto :goto_16

    :cond_1b
    :goto_15
    move v2, v5

    :goto_16
    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 646
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_1c

    move v3, v10

    goto :goto_17

    :cond_1c
    move v3, v8

    :goto_17
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 647
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_1d

    move v3, v10

    goto :goto_18

    :cond_1d
    move v3, v9

    :goto_18
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 648
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_1e

    move v3, v10

    goto :goto_19

    :cond_1e
    move v3, v9

    :goto_19
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 649
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->addButtonView:Landroid/widget/TextView;

    if-ne v1, v6, :cond_1f

    move v3, v5

    goto :goto_1a

    :cond_1f
    move v3, v4

    :goto_1a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v7, :cond_20

    move v8, v10

    :cond_20
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 651
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v7, :cond_21

    move v3, v10

    goto :goto_1b

    :cond_21
    move v3, v9

    :goto_1b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 652
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v7, :cond_22

    move v9, v10

    :cond_22
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setScaleY(F)V

    .line 653
    iget-object v2, v0, Lorg/telegram/ui/Cells/StickerSetCell;->removeButtonView:Landroid/widget/TextView;

    if-ne v1, v7, :cond_23

    goto :goto_1c

    :cond_23
    move v5, v4

    :goto_1c
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/StickerSetCell;->updateRightMargin()V

    :goto_1d
    return-void
.end method

.method public updateRightMargin()V
    .locals 4

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    const v1, 0xf423f

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v2, 0x3a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    const/16 v0, 0x1a

    .line 579
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->sideButtons:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 580
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 582
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 584
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 585
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    return-void
.end method
