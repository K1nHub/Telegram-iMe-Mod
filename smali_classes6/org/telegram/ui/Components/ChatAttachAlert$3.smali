.class Lorg/telegram/ui/Components/ChatAttachAlert$3;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

.field private ignoreLayout:Z

.field private initialTranslationY:F

.field private lastNotifyWidth:I

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$forceDarkTheme:Z


# direct methods
.method public static synthetic $r8$lambda$QPZyP3yyPM3PmpCnDEf0N96VIEk(Lorg/telegram/ui/Components/ChatAttachAlert$3;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;->lambda$onMeasure$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Z)V
    .locals 0

    .line 1376
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->val$forceDarkTheme:Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 1378
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$3$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$3;)V

    .line 1385
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    .line 1389
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;

    invoke-direct {p1, p0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$3;Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method private drawChildBackground(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1679
    instance-of v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v3, :cond_12

    .line 1680
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1681
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x437f0000    # 255.0f

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v3

    float-to-int v3, v5

    .line 1683
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 1684
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v6

    const/16 v7, 0xd

    .line 1686
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    const/high16 v10, 0x41d00000    # 26.0f

    mul-float/2addr v8, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    add-int/2addr v7, v8

    .line 1687
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v10

    sub-int/2addr v8, v10

    sub-int/2addr v8, v7

    .line 1688
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    :cond_1
    int-to-float v8, v8

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    :cond_2
    const/16 v10, 0x14

    .line 1691
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 1693
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    const/16 v12, 0x2d

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    add-int/2addr v11, v12

    if-eqz v6, :cond_3

    .line 1696
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    goto :goto_1

    :cond_3
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    :goto_1
    const/4 v13, 0x4

    const/4 v14, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v6, v14, :cond_4

    if-ge v8, v12, :cond_8

    sub-int/2addr v12, v8

    int-to-float v5, v12

    .line 1699
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float v5, v15, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_5

    .line 1701
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    add-int/2addr v4, v8

    if-ge v4, v12, :cond_8

    int-to-float v4, v7

    .line 1703
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    move-result-object v7

    if-ne v5, v7, :cond_5

    const/16 v5, 0xb

    .line 1704
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_2
    int-to-float v5, v5

    add-float/2addr v4, v5

    goto :goto_4

    .line 1705
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v7

    if-eq v5, v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    move-result-object v7

    if-eq v5, v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    move-result-object v7

    if-ne v5, v7, :cond_6

    goto :goto_3

    .line 1708
    :cond_6
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v5, 0x3

    .line 1706
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    :goto_4
    sub-int v5, v12, v8

    .line 1710
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v12

    sub-float/2addr v7, v4

    mul-float/2addr v7, v5

    float-to-int v4, v7

    sub-int/2addr v8, v4

    sub-int/2addr v10, v4

    add-int/2addr v11, v4

    sub-float v5, v15, v5

    goto :goto_5

    :cond_8
    move v5, v15

    .line 1720
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_9

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v4, :cond_9

    .line 1721
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v4

    add-int/2addr v10, v4

    sub-int/2addr v11, v4

    .line 1726
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomBackground()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomBackground()I

    move-result v4

    goto :goto_7

    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->val$forceDarkTheme:Z

    if-eqz v7, :cond_b

    const-string v7, "voipgroup_listViewBackground"

    goto :goto_6

    :cond_b
    const-string v7, "dialogBackground"

    :goto_6
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I

    move-result v4

    .line 1727
    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1728
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v7, v9, v8, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1729
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v9, 0x18

    if-ne v6, v14, :cond_c

    .line 1731
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1732
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1733
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v14

    add-int/2addr v14, v8

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v15

    sub-int v15, v16, v15

    int-to-float v15, v15

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v11, v11, v17

    int-to-float v11, v11

    invoke-virtual {v12, v13, v14, v15, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1734
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1735
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    iget v13, v11, Landroid/graphics/RectF;->top:F

    iget v14, v11, Landroid/graphics/RectF;->right:F

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    div-float/2addr v11, v7

    add-float/2addr v11, v13

    invoke-virtual {v1, v12, v13, v14, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1736
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    const/16 v12, 0xc

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v12, v14

    mul-float/2addr v12, v5

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v13, v12, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1737
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_c
    move v11, v15

    :goto_8
    cmpl-float v12, v5, v11

    if-eqz v12, :cond_d

    const/4 v11, 0x2

    if-eq v6, v11, :cond_d

    .line 1741
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1742
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1743
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v11

    add-int/2addr v11, v8

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    add-int/2addr v13, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v13, v8

    int-to-float v8, v13

    invoke-virtual {v3, v4, v11, v12, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1744
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1745
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v8, v3, Landroid/graphics/RectF;->top:F

    iget v9, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v7

    add-float/2addr v3, v8

    invoke-virtual {v1, v4, v8, v9, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1746
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1747
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1750
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_11

    :cond_e
    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_11

    const/16 v3, 0x24

    .line 1751
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1752
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v3

    const/4 v8, 0x2

    div-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    div-int/2addr v11, v8

    int-to-float v3, v11

    const/4 v11, 0x4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v4, v7, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    if-ne v6, v8, :cond_f

    const/high16 v3, 0x20000000

    move v15, v5

    goto :goto_9

    .line 1759
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const-string v4, "key_sheet_scrollUp"

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I

    move-result v3

    .line 1760
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-nez v4, :cond_10

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_10
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v15, v6, v4

    .line 1762
    :goto_9
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 1763
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1764
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v4, v4

    mul-float/2addr v4, v15

    mul-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1765
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1767
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    return-void
.end method

.method private getCurrentTop()I
    .locals 4

    .line 1903
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 1904
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v0, :cond_1

    .line 1905
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 1

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onMeasureInternal(II)V
    .locals 12

    .line 1528
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1529
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1531
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 1532
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 1535
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1536
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1537
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 1538
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1541
    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ltz v2, :cond_4

    .line 1543
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    .line 1546
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v2

    .line 1548
    :goto_0
    sget-boolean v6, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v6, :cond_2

    sub-int/2addr v1, v2

    .line 1550
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1552
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1553
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPreMeasure(II)V

    .line 1554
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1555
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPreMeasure(II)V

    .line 1557
    :cond_3
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1560
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v5, v2, :cond_d

    .line 1562
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1563
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_5

    goto/16 :goto_4

    .line 1566
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1567
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-eqz v4, :cond_6

    .line 1568
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1569
    :cond_6
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 1576
    :cond_7
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1570
    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1571
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0xc8

    goto :goto_3

    :cond_9
    const/16 v6, 0x140

    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v8, v1, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1573
    :cond_a
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v6, v1, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    .line 1579
    invoke-virtual/range {v6 .. v11}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_c
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1912
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1913
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1914
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1915
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;->drawChildBackground(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1917
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1918
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1773
    instance-of v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v3, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    .line 1774
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1775
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x437f0000    # 255.0f

    .line 1776
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v3

    float-to-int v3, v5

    .line 1777
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 1778
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v6

    const/16 v7, 0xd

    .line 1780
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    const/high16 v10, 0x41d00000    # 26.0f

    mul-float/2addr v8, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    add-int/2addr v7, v8

    .line 1781
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v10

    const/4 v11, 0x1

    if-ne v5, v10, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v11

    :goto_1
    invoke-static {v8, v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v10

    sub-int/2addr v8, v10

    sub-int/2addr v8, v7

    .line 1782
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v10

    if-eq v10, v11, :cond_2

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    :cond_2
    int-to-float v8, v8

    .line 1783
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    :cond_3
    const/16 v10, 0x14

    .line 1785
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    const/16 v13, 0x2d

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    add-int/2addr v12, v13

    if-eqz v6, :cond_4

    .line 1790
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v13

    goto :goto_2

    :cond_4
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    :goto_2
    const/4 v14, 0x4

    const/4 v15, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    if-ne v6, v15, :cond_5

    if-ge v8, v13, :cond_9

    sub-int/2addr v13, v8

    int-to-float v5, v13

    .line 1793
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float v5, v11, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_6

    .line 1795
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    add-int/2addr v4, v8

    if-ge v4, v13, :cond_9

    int-to-float v4, v7

    .line 1797
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    move-result-object v7

    if-ne v5, v7, :cond_6

    const/16 v5, 0xb

    .line 1798
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_3
    int-to-float v5, v5

    add-float/2addr v4, v5

    goto :goto_5

    .line 1799
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v7

    if-eq v5, v7, :cond_8

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    move-result-object v7

    if-eq v5, v7, :cond_8

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;

    move-result-object v7

    if-ne v5, v7, :cond_7

    goto :goto_4

    .line 1802
    :cond_7
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_3

    :cond_8
    :goto_4
    const/4 v5, 0x3

    .line 1800
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    :goto_5
    sub-int v5, v13, v8

    .line 1804
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v13

    sub-float/2addr v7, v4

    mul-float/2addr v7, v5

    float-to-int v4, v7

    sub-int/2addr v8, v4

    sub-int/2addr v10, v4

    add-int/2addr v12, v4

    sub-float v5, v11, v5

    goto :goto_6

    :cond_9
    move v5, v11

    .line 1814
    :goto_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v4, :cond_a

    .line 1815
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v4

    add-int/2addr v10, v4

    sub-int/2addr v12, v4

    .line 1820
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomBackground()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomBackground()I

    move-result v4

    goto :goto_8

    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->val$forceDarkTheme:Z

    if-eqz v7, :cond_c

    const-string v7, "voipgroup_listViewBackground"

    goto :goto_7

    :cond_c
    const-string v7, "dialogBackground"

    :goto_7
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8300(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I

    move-result v4

    .line 1821
    :goto_8
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v7

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v13

    if-eq v7, v13, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v7

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v13

    if-eq v7, v13, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v7

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v13

    if-ne v7, v13, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v7

    if-eqz v7, :cond_e

    :cond_d
    const/4 v7, 0x1

    goto :goto_9

    :cond_e
    move v7, v9

    :goto_9
    const/high16 v13, 0x40000000    # 2.0f

    const/16 v16, 0x18

    const/16 v17, 0xc

    if-eqz v7, :cond_f

    .line 1823
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1824
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v14, v9, v8, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1825
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-ne v6, v15, :cond_f

    .line 1827
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1828
    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1829
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    int-to-float v12, v12

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v14

    add-int/2addr v14, v8

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v18

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v9

    sub-int v9, v18, v9

    int-to-float v9, v9

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v15

    add-int/2addr v15, v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    add-int v15, v15, v19

    int-to-float v15, v15

    invoke-virtual {v11, v12, v14, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1830
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1831
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v11, v9, Landroid/graphics/RectF;->left:F

    iget v12, v9, Landroid/graphics/RectF;->top:F

    iget v14, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v13

    add-float/2addr v9, v12

    invoke-virtual {v1, v11, v12, v14, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1832
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v5

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v11, v12, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1833
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    if-nez v7, :cond_11

    .line 1837
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const v11, 0x3f666666    # 0.9f

    cmpl-float v9, v9, v11

    if-lez v9, :cond_11

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    instance-of v9, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-nez v9, :cond_10

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    instance-of v9, v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    if-eqz v9, :cond_11

    :cond_10
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v9, :cond_11

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_14

    .line 1839
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1841
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v11

    if-eqz v11, :cond_12

    const/16 v11, 0x10

    goto :goto_b

    .line 1843
    :cond_12
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-le v12, v11, :cond_13

    const/4 v11, 0x6

    goto :goto_b

    :cond_13
    move/from16 v11, v17

    .line 1848
    :goto_b
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v12

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v14, v14

    add-float/2addr v12, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v14, v14, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v12, v14

    int-to-float v11, v11

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v14, v14, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v14

    mul-float/2addr v11, v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v12, v11

    float-to-int v11, v12

    .line 1849
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v1, v12, v11, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1851
    :cond_14
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v11

    if-eqz v9, :cond_15

    .line 1853
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    if-eqz v7, :cond_1a

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v7

    if-eqz v9, :cond_16

    const/4 v7, 0x2

    if-eq v6, v7, :cond_16

    .line 1858
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1859
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1860
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    sub-int/2addr v9, v12

    int-to-float v9, v9

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    add-int/2addr v12, v8

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v12, v8

    int-to-float v8, v12

    invoke-virtual {v3, v4, v7, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1862
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v8, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v13

    add-float/2addr v3, v7

    invoke-virtual {v1, v4, v7, v8, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1863
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1864
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1867
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1a

    :cond_17
    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_1a

    const/16 v3, 0x24

    .line 1868
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1869
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v3

    const/4 v8, 0x2

    div-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v3

    div-int/2addr v12, v8

    int-to-float v3, v12

    const/4 v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    int-to-float v10, v10

    invoke-virtual {v4, v7, v9, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    if-ne v6, v8, :cond_18

    const/high16 v3, 0x20000000

    move v4, v5

    goto :goto_c

    .line 1876
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const-string v4, "key_sheet_scrollUp"

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10000(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I

    move-result v3

    .line 1877
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-nez v4, :cond_19

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_19
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    .line 1879
    :goto_c
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 1880
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1881
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v6, v6

    mul-float/2addr v6, v4

    mul-float/2addr v6, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1882
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1885
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v11

    .line 1888
    :cond_1b
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1949
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 1951
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    .line 1952
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1958
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-eqz v1, :cond_0

    return-void

    .line 1896
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomBackground()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->val$forceDarkTheme:Z

    if-eqz v1, :cond_2

    const-string v1, "voipgroup_listViewBackground"

    goto :goto_0

    :cond_2
    const-string v1, "dialogBackground"

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10100(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/String;)I

    move-result v0

    :goto_1
    const/high16 v1, 0x437f0000    # 255.0f

    .line 1897
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1898
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1899
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float v5, v0, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1469
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1472
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;->getCurrentTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 1473
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDismissWithTouchOutside()V

    return v1

    .line 1476
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 1586
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->lastNotifyWidth:I

    sub-int v0, p4, p2

    if-eq p1, v0, :cond_0

    .line 1587
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->lastNotifyWidth:I

    .line 1588
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1589
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1592
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 1594
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 1595
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1596
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1599
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p2

    .line 1600
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p4

    .line 1601
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    add-int/2addr p4, v2

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    .line 1604
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-gt p2, v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/2addr p4, v1

    .line 1606
    :goto_1
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    move v1, v2

    :goto_2
    if-ge v1, p1, :cond_d

    .line 1609
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1610
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    goto/16 :goto_8

    .line 1613
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1615
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1616
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1621
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    const/16 v7, 0x33

    :cond_5
    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    const/4 v9, 0x5

    if-eq v8, v9, :cond_6

    .line 1638
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_4

    :cond_6
    sub-int v8, v0, v5

    .line 1634
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v9

    goto :goto_3

    :cond_7
    sub-int v8, v0, v5

    .line 1631
    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v8, v9

    :goto_4
    const/16 v9, 0x10

    if-eq v7, v9, :cond_a

    const/16 v9, 0x30

    if-eq v7, v9, :cond_9

    const/16 v9, 0x50

    if-eq v7, v9, :cond_8

    .line 1652
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_8
    sub-int v7, p5, p4

    sub-int/2addr v7, p3

    sub-int/2addr v7, v6

    .line 1649
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 1643
    :cond_9
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_6

    :cond_a
    sub-int v7, p5, p4

    sub-int/2addr v7, p3

    sub-int/2addr v7, v6

    .line 1646
    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_5
    sub-int v4, v7, v4

    .line 1655
    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1656
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1657
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_7

    .line 1659
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    :goto_7
    sub-int/2addr v4, v7

    :cond_c
    add-int/2addr v5, v8

    add-int/2addr v6, v4

    .line 1662
    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1665
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 1666
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 1667
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1490
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1493
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1495
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v1, :cond_1

    .line 1496
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1497
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1498
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1500
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 1501
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1503
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_2

    .line 1504
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_1

    .line 1505
    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v5, v1, :cond_3

    .line 1506
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_1

    .line 1508
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 1511
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1512
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1514
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1515
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1517
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    int-to-float v0, v0

    const/high16 v1, 0x40900000    # 4.5f

    .line 1518
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1519
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1520
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2402(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    .line 1521
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$3;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1523
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 1524
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$3;->onMeasureInternal(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1484
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public requestLayout()V
    .locals 1

    .line 1672
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1675
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 5

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr p1, v1

    .line 1924
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1925
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->initialTranslationY:F

    .line 1927
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    .line 1929
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1930
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v3, :cond_1

    .line 1931
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v2

    add-float/2addr v2, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    sub-float/2addr v2, p1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1934
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    move p1, v0

    goto :goto_0

    .line 1936
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1937
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    neg-float v2, p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->initialTranslationY:F

    div-float v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1939
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1941
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    sub-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1942
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 1943
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    :cond_4
    return-void
.end method
