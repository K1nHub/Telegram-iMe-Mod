.class public Lorg/telegram/ui/FiltersSetupActivity$FilterCell;
.super Landroid/widget/FrameLayout;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterCell"
.end annotation


# instance fields
.field private currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field private currentTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

.field private hiddenTextView:Landroid/widget/TextView;

.field private final iconView:Landroidx/appcompat/widget/AppCompatImageView;

.field private final moveImageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private final optionsImageView:Landroid/widget/ImageView;

.field progressToLock:F

.field private final shareImageView:Landroid/widget/ImageView;

.field private shareLoading:Z

.field private final shareLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field final synthetic this$0:Lorg/telegram/ui/FiltersSetupActivity;

.field private final valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$9VK88MSF6fhSF3yhP8avJwBVK-c(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$XLdHsjJzrOpxgj3LIVszKQcdbLE(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 458
    iput-object v1, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    .line 459
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 451
    iput-boolean v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoading:Z

    .line 460
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 462
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    .line 463
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 464
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 465
    sget v5, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    sget v5, Lorg/telegram/messenger/R$string;->FilterReorder:I

    const-string v7, "FilterReorder"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    .line 468
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 469
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v9, 0x3

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    const/16 v10, 0x10

    or-int/lit8 v13, v7, 0x10

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/16 v11, 0x30

    const/16 v12, 0x30

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 472
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 473
    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 474
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 475
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    or-int/2addr v7, v10

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v11, Lorg/telegram/messenger/R$drawable;->other_lockedfolders2:I

    invoke-static {v7, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 477
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 478
    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, -0x1

    const/4 v15, -0x2

    .line 479
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2

    const/4 v11, 0x5

    goto :goto_2

    :cond_2
    move v11, v9

    :goto_2
    or-int/lit8 v16, v11, 0x10

    const/16 v11, 0x50

    const/16 v12, 0x40

    if-eqz v7, :cond_3

    move/from16 v17, v11

    goto :goto_3

    :cond_3
    move/from16 v17, v12

    :goto_3
    const/16 v18, 0x0

    if-eqz v7, :cond_4

    move/from16 v19, v12

    goto :goto_4

    :cond_4
    move/from16 v19, v11

    :goto_4
    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    .line 482
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41500000    # 13.0f

    .line 483
    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 484
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x5

    goto :goto_5

    :cond_5
    move v7, v9

    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 485
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 486
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 487
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 488
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 489
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v13, -0x2

    const/4 v14, -0x2

    .line 490
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_6

    const/4 v15, 0x5

    goto :goto_6

    :cond_6
    move v15, v9

    :goto_6
    const/16 v20, 0x30

    or-int/lit8 v15, v15, 0x30

    if-eqz v7, :cond_7

    move/from16 v16, v11

    goto :goto_7

    :cond_7
    move/from16 v16, v12

    :goto_7
    const/16 v17, 0x23

    if-eqz v7, :cond_8

    move/from16 v18, v12

    goto :goto_8

    :cond_8
    move/from16 v18, v11

    :goto_8
    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x8

    .line 491
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    new-instance v4, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 494
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    const/high16 v11, 0x40000000    # 2.0f

    .line 495
    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/LoadingDrawable;->setGradientScale(F)V

    .line 496
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    const v13, 0x3ecccccd    # 0.4f

    .line 498
    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    .line 499
    invoke-static {v12, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v14

    const v15, 0x3f666666    # 0.9f

    .line 500
    invoke-static {v12, v15}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v15

    const v8, 0x3fd9999a    # 1.7f

    .line 501
    invoke-static {v12, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    .line 497
    invoke-virtual {v4, v13, v14, v15, v8}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 503
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 504
    iget-object v13, v4, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    int-to-float v14, v8

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v13, 0x42200000    # 40.0f

    .line 505
    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 506
    new-instance v13, Lorg/telegram/ui/FiltersSetupActivity$FilterCell$1;

    invoke-direct {v13, v0, v2, v1, v8}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell$1;-><init>(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/content/Context;Lorg/telegram/ui/FiltersSetupActivity;I)V

    iput-object v13, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareImageView:Landroid/widget/ImageView;

    .line 521
    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 522
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 523
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 524
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 525
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 526
    sget v4, Lorg/telegram/messenger/R$string;->FilterShare:I

    const-string v8, "FilterShare"

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_link_folder:I

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v21, 0x28

    const/16 v22, 0x28

    .line 530
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_9

    move v8, v9

    goto :goto_9

    :cond_9
    const/4 v8, 0x5

    :goto_9
    or-int/lit8 v23, v8, 0x10

    const/4 v8, 0x6

    if-eqz v4, :cond_a

    const/16 v12, 0x34

    move/from16 v24, v12

    goto :goto_a

    :cond_a
    move/from16 v24, v8

    :goto_a
    const/16 v25, 0x0

    if-eqz v4, :cond_b

    move/from16 v26, v8

    goto :goto_b

    :cond_b
    move/from16 v26, v20

    :goto_b
    const/16 v27, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    new-instance v4, Lorg/telegram/ui/FiltersSetupActivity$FilterCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)V

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    .line 547
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 548
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 549
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v8, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 551
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_actions:I

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v8, "AccDescrMoreOptions"

    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v21, 0x28

    const/16 v22, 0x28

    .line 553
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_c

    move v8, v9

    goto :goto_c

    :cond_c
    const/4 v8, 0x5

    :goto_c
    or-int/lit8 v23, v8, 0x10

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v26, 0x6

    const/16 v27, 0x0

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    .line 556
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 557
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 559
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 560
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x34

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    new-instance v3, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v3, v2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 564
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 565
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 566
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v5

    const/16 v6, 0x33

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterActivityType;->getIconLeftMargin()I

    move-result v2

    add-int/lit8 v7, v2, 0x30

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x32

    div-int/lit8 v8, v1, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)Z
    .locals 0

    .line 382
    iget-boolean p0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoading:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    .line 382
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 532
    iget-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoading:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    .line 535
    iput-boolean p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoading:Z

    .line 536
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 537
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity$FilterCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object v0
.end method

.method public getCurrentTopic()Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 686
    iget-boolean v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->needDivider:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 687
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x3e

    if-eqz v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sub-int/2addr v0, v2

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 689
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 690
    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    const v2, 0x3dda740e

    if-eqz p1, :cond_3

    iget v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_3

    add-float/2addr v3, v2

    .line 691
    iput v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 692
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 693
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_4

    sub-float/2addr p1, v2

    .line 694
    iput p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 695
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 698
    :cond_4
    :goto_2
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableScale(F)V

    .line 700
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 572
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x32

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V
    .locals 9

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    .line 577
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez p1, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    iget v1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    :goto_1
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 581
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->shareImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v3

    const-string v5, "FilterAllChats"

    const-string v6, ", "

    if-nez v3, :cond_e

    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int v8, v3, v7

    if-ne v8, v7, :cond_4

    goto/16 :goto_4

    .line 587
    :cond_4
    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    .line 588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 589
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v7, "FilterContacts"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_6
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_8

    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 595
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v7, "FilterNonContacts"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_8
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_a

    .line 600
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 601
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_9
    sget v3, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v7, "FilterGroups"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    :cond_a
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_c

    .line 606
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 607
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_b
    sget v3, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v7, "FilterChannels"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_c
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v7, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    .line 612
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_d

    .line 613
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_d
    sget v3, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v7, "FilterBots"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 585
    :cond_e
    :goto_4
    sget v3, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_f
    :goto_5
    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 619
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_11

    .line 620
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_11
    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Exception"

    invoke-static {v7, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_13

    .line 625
    sget v3, Lorg/telegram/messenger/R$string;->FilterNoChats:I

    const-string v6, "FilterNoChats"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_13
    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 629
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 630
    sget v3, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :cond_14
    if-nez v0, :cond_16

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    if-eqz v0, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    :goto_6
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 635
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3, v5, v6, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v0, v3}, Lcom/iMe/fork/controller/FiltersController;->getSettings(I)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 642
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v5

    invoke-static {v5}, Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt;->iconInfo(Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/ui/folder/FilterIconInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/ui/folder/FilterIconInfo;->getOutlinedIcon()I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 646
    :cond_17
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->common_hidden:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, -0x34

    goto :goto_7

    :cond_18
    move v3, v2

    :goto_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_8

    .line 651
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iput-boolean p2, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->needDivider:Z

    .line 668
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 671
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    :goto_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOnOptionsClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V
    .locals 6

    .line 398
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 399
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v0

    .line 409
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 411
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lcom/iMe/ui/topics/TopicInfo;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 414
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->component8()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->component8()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    goto :goto_2

    .line 416
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->component7()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 417
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->component7()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 421
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v3, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-virtual {v3}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 424
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 426
    :goto_3
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 427
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->common_hidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 430
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->hiddenTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    :goto_4
    iput-boolean p2, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->needDivider:Z

    return-void
.end method
