.class public Lorg/telegram/ui/StatisticActivity$OverviewCell;
.super Landroid/widget/LinearLayout;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewCell"
.end annotation


# instance fields
.field primary:[Landroid/widget/TextView;

.field secondary:[Landroid/widget/TextView;

.field title:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2525
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    new-array v3, v2, [Landroid/widget/TextView;

    .line 2519
    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    new-array v3, v2, [Landroid/widget/TextView;

    .line 2520
    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    new-array v3, v2, [Landroid/widget/TextView;

    .line 2521
    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 2526
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 2527
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v5, v8

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 2529
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2530
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v9, v8

    :goto_1
    if-ge v9, v6, :cond_0

    .line 2533
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2534
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2536
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2537
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2538
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    mul-int/lit8 v13, v5, 0x2

    add-int/2addr v13, v9

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v14, v12, v13

    .line 2539
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v14, v12, v13

    .line 2540
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v14, v12, v13

    .line 2542
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v12, v12, v13

    const-string v14, "fonts/rmedium.ttf"

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2543
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v12, v12, v13

    const/high16 v14, 0x41880000    # 17.0f

    invoke-virtual {v12, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2544
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v12, v12, v13

    const/high16 v14, 0x41500000    # 13.0f

    invoke-virtual {v12, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2545
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v12, v12, v13

    invoke-virtual {v12, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2547
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v12, v12, v13

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v12, v14, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2549
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2550
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2552
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2553
    iget-object v11, v0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v11, v11, v13

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    .line 2554
    invoke-static {v11, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-nez v5, :cond_1

    move/from16 v16, v4

    goto :goto_2

    :cond_1
    move/from16 v16, v8

    .line 2556
    :goto_2
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/StatisticActivity$OverviewCell;)V
    .locals 0

    .line 2517
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method

.method private updateColors()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 2617
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2618
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2620
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2622
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 2624
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2608
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2609
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object p2, p2, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2610
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object p1, p2, p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2612
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method

.method public setData(Lorg/telegram/ui/StatisticActivity$OverviewChannelData;)V
    .locals 6

    .line 2561
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersPrimary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2562
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsPrimary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2563
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    iget-object v4, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPrimary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2564
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPrimary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2566
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2567
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersUp:Z

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2568
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2569
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2570
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsUp:Z

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_1

    :cond_1
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2571
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesUp:Z

    if-eqz v5, :cond_2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_2

    :cond_2
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2574
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2575
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2576
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2579
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method

.method public setData(Lorg/telegram/ui/StatisticActivity$OverviewChatData;)V
    .locals 6

    .line 2583
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersPrimary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2584
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesPrimary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    iget-object v4, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersPrimary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2586
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersPrimary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2588
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2589
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersUp:Z

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2591
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2592
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesUp:Z

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_1

    :cond_1
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2594
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2595
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersUp:Z

    if-eqz v5, :cond_2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_2

    :cond_2
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2596
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2597
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersUp:Z

    if-eqz v5, :cond_3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_3

    :cond_3
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2599
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2600
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2601
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2602
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2604
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method
