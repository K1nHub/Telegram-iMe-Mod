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

.field private final iconView:Landroidx/appcompat/widget/AppCompatImageView;

.field private moveImageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private optionsImageView:Landroid/widget/ImageView;

.field progressToLock:F

.field private textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field final synthetic this$0:Lorg/telegram/ui/FiltersSetupActivity;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 472
    iput-object v1, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    .line 473
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 474
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 476
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    .line 477
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 478
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 479
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "stickers_menu"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 481
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$string;->FilterReorder:I

    const-string v7, "FilterReorder"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 483
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-eqz v7, :cond_0

    move v7, v8

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

    .line 485
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v7, "windowBackgroundWhiteBlackText"

    .line 486
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 487
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 488
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 489
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    or-int/2addr v7, v10

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$drawable;->other_lockedfolders2:I

    invoke-static {v4, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 491
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 492
    iget-object v7, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v11, -0x1

    const/4 v12, -0x2

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2

    move v13, v8

    goto :goto_2

    :cond_2
    move v13, v9

    :goto_2
    or-int/lit8 v13, v13, 0x30

    const/16 v18, 0x50

    const/16 v19, 0x40

    if-eqz v7, :cond_3

    move/from16 v14, v18

    goto :goto_3

    :cond_3
    move/from16 v14, v19

    :goto_3
    const/16 v15, 0xe

    if-eqz v7, :cond_4

    move/from16 v16, v19

    goto :goto_4

    :cond_4
    move/from16 v16, v18

    :goto_4
    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    const-string v7, "windowBackgroundWhiteGrayText2"

    .line 496
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move v7, v9

    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 499
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 500
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 501
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 502
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 503
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 504
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/4 v12, -0x2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    move v7, v8

    goto :goto_6

    :cond_6
    move v7, v9

    :goto_6
    or-int/lit8 v13, v7, 0x30

    if-eqz v5, :cond_7

    move/from16 v14, v18

    goto :goto_7

    :cond_7
    move/from16 v14, v19

    :goto_7
    const/16 v15, 0x23

    if-eqz v5, :cond_8

    move/from16 v16, v19

    goto :goto_8

    :cond_8
    move/from16 v16, v18

    :goto_8
    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    .line 508
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 509
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 510
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    const-string v4, "stickers_menuSelector"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 512
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_actions:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v5, "AccDescrMoreOptions"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    const/16 v11, 0x28

    const/16 v12, 0x28

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_9

    move v8, v9

    :cond_9
    or-int/lit8 v13, v8, 0x10

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    new-instance v3, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v3, v2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 517
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 518
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "chats_actionBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 519
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v5

    const/16 v6, 0x33

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterActivityType;->getIconLeftMargin()I

    move-result v2

    add-int/lit8 v7, v2, 0x30

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x32

    div-int/lit8 v8, v1, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 0

    .line 415
    iget-object p0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object p0
.end method


# virtual methods
.method public getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object v0
.end method

.method public getCurrentTopic()Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 619
    iget-boolean v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->needDivider:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 620
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

    .line 622
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 623
    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    const v2, 0x3dda740e

    if-eqz p1, :cond_3

    iget v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_3

    add-float/2addr v3, v2

    .line 624
    iput v3, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 626
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    cmpl-float v3, p1, v1

    if-eqz v3, :cond_4

    sub-float/2addr p1, v2

    .line 627
    iput p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 628
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 631
    :cond_4
    :goto_2
    iget p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableScale(F)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 525
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
    .locals 8

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    .line 530
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez p1, :cond_1

    goto :goto_1

    .line 531
    :cond_1
    iget v1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    :goto_1
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 534
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v3

    const-string v4, "FilterAllChats"

    const-string v5, ", "

    if-nez v3, :cond_d

    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int v7, v3, v6

    if-ne v7, v6, :cond_3

    goto/16 :goto_3

    .line 538
    :cond_3
    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 539
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v6, "FilterContacts"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_5
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_7

    .line 545
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 546
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_6
    sget v3, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v6, "FilterNonContacts"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_7
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_9

    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 552
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v6, "FilterGroups"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_9
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_b

    .line 557
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_a

    .line 558
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v6, "FilterChannels"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_b
    iget v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_e

    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_c

    .line 564
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_c
    sget v3, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v6, "FilterBots"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 536
    :cond_d
    :goto_3
    sget v3, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_e
    :goto_4
    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 570
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_10

    .line 571
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_10
    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Exception"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_12

    .line 576
    sget v3, Lorg/telegram/messenger/R$string;->FilterNoChats:I

    const-string v5, "FilterNoChats"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_12
    iget-object v3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 581
    sget v3, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :cond_13
    if-nez v0, :cond_15

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentFilter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    if-eqz v0, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    :goto_5
    iput v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->progressToLock:F

    .line 586
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget v4, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v0, v4}, Lcom/iMe/fork/controller/FiltersController;->getSettings(I)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 593
    iget-object v4, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v4, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v4, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/filter/FilterIconExtKt;->iconInfo(Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/ui/folder/FilterIconInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/folder/FilterIconInfo;->getOutlinedIcon()I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 598
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iput-boolean p2, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->needDivider:Z

    .line 601
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 604
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    :goto_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOnOptionsClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->optionsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->moveImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V
    .locals 4

    .line 430
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->currentTopic:Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 431
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p1, v2, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 439
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object p1

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Lcom/iMe/ui/topics/TopicInfo;->getIconResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lcom/iMe/ui/topics/TopicInfo;->getTitleResId()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 445
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->iconView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-object v0, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/FilterActivityType;->getIconSize()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 448
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 450
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->needDivider:Z

    return-void
.end method
