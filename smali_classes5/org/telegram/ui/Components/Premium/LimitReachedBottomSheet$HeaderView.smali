.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;
.super Landroid/widget/LinearLayout;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 383
    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 384
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x6

    .line 385
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 387
    iget v5, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$400(II)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    .line 388
    iget v5, v5, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->icon:I

    .line 390
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz v6, :cond_0

    .line 392
    iget-object v8, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrLocked:Ljava/lang/String;

    goto :goto_1

    .line 394
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStr:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v8, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->descriptionStrPremium:Ljava/lang/String;

    .line 396
    :goto_1
    iget-object v9, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitParams:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;

    iget v10, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->defaultLimit:I

    .line 397
    iget v9, v9, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$LimitParams;->premiumLimit:I

    .line 398
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v11

    .line 401
    iget v13, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v14, 0x3

    const/4 v15, 0x7

    if-ne v13, v14, :cond_3

    .line 402
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    goto :goto_2

    :cond_3
    if-ne v13, v15, :cond_4

    .line 404
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v11

    .line 406
    :cond_4
    :goto_2
    iget v13, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-nez v13, :cond_8

    .line 408
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v7}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 409
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v12, v13, :cond_7

    .line 410
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 411
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    if-eqz v7, :cond_5

    goto :goto_4

    .line 414
    :cond_5
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->pinned:Z

    if-eqz v3, :cond_6

    add-int/lit8 v14, v14, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto :goto_3

    :cond_7
    move v11, v14

    .line 421
    :cond_8
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    if-gez v11, :cond_a

    move v11, v10

    .line 428
    :cond_a
    iget v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v3, v15, :cond_c

    if-le v11, v10, :cond_b

    sub-int v3, v11, v10

    int-to-float v3, v3

    sub-int v7, v9, v10

    int-to-float v7, v7

    goto :goto_5

    :cond_b
    const/high16 v12, 0x3f000000    # 0.5f

    goto :goto_7

    :cond_c
    int-to-float v3, v11

    int-to-float v7, v9

    :goto_5
    div-float v12, v3, v7

    goto :goto_7

    :cond_d
    :goto_6
    const/high16 v12, 0x3f800000    # 1.0f

    move v11, v9

    .line 437
    :goto_7
    new-instance v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-direct {v3, v2, v5, v11, v9}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;III)V

    iput-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    .line 438
    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setBagePosition(F)V

    .line 439
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v5, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setType(I)V

    .line 440
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v6, :cond_e

    .line 442
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setPremiumLocked()V

    goto :goto_9

    .line 444
    :cond_e
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$1200(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 445
    :cond_f
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v3, v4, :cond_10

    .line 447
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const-string v5, "2 GB"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 449
    :cond_10
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :goto_8
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    :cond_11
    :goto_9
    iget v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_12

    const/4 v5, 0x5

    if-ne v3, v5, :cond_13

    .line 456
    :cond_12
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setDelayedAnimation()V

    .line 460
    :cond_13
    iget-object v3, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->limitPreviewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "fonts/rmedium.ttf"

    .line 463
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 464
    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->type:I

    if-ne v1, v4, :cond_14

    .line 465
    sget v1, Lorg/telegram/messenger/R$string;->FileTooLarge:I

    const-string v4, "FileTooLarge"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 467
    :cond_14
    sget v1, Lorg/telegram/messenger/R$string;->LimitReached:I

    const-string v4, "LimitReached"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    .line 469
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    .line 470
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    const/4 v14, 0x0

    const/16 v15, 0xa

    .line 471
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 474
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v4, 0x1

    .line 475
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 476
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 477
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/16 v10, 0x18

    .line 478
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
