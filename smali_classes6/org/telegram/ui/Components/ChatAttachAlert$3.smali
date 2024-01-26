.class Lorg/telegram/ui/Components/ChatAttachAlert$3;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
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

    .line 1468
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->val$forceDarkTheme:Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 1470
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$3$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$3;)V

    .line 1477
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    .line 1481
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

    .line 1805
    instance-of v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    if-eqz v3, :cond_1a

    .line 1806
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1807
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x437f0000    # 255.0f

    .line 1808
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v3

    float-to-int v3, v5

    .line 1809
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 1810
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v6

    const/16 v7, 0xd

    .line 1812
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    const/16 v9, 0x1a

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 1813
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v10

    sub-int/2addr v8, v10

    sub-int/2addr v8, v7

    .line 1814
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    :cond_1
    int-to-float v8, v8

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v10

    add-float/2addr v8, v10

    float-to-int v8, v8

    :cond_2
    const/16 v10, 0x14

    .line 1817
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 1819
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v11

    const/16 v12, 0x2d

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    add-int/2addr v11, v12

    if-eqz v6, :cond_3

    .line 1822
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v12

    goto :goto_1

    :cond_3
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    :goto_1
    const/4 v13, 0x4

    const/4 v14, 0x2

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v6, v14, :cond_5

    if-ge v8, v12, :cond_4

    sub-int/2addr v12, v8

    int-to-float v5, v12

    .line 1825
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float v5, v15, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_5

    :cond_4
    move v5, v15

    goto :goto_5

    :cond_5
    int-to-float v7, v7

    .line 1829
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    move-result-object v4

    if-ne v5, v4, :cond_6

    const/16 v4, 0xb

    .line 1830
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_2
    int-to-float v4, v4

    add-float/2addr v7, v4

    goto :goto_4

    .line 1831
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v4

    if-eq v5, v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    move-result-object v4

    if-eq v5, v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    move-result-object v4

    if-ne v5, v4, :cond_7

    goto :goto_3

    .line 1834
    :cond_7
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_2

    :cond_8
    :goto_3
    const/4 v4, 0x3

    .line 1832
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    .line 1836
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    int-to-float v5, v12

    sub-float/2addr v5, v7

    .line 1837
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    mul-float/2addr v5, v4

    float-to-int v5, v5

    sub-int/2addr v8, v5

    sub-int/2addr v10, v5

    add-int/2addr v11, v5

    sub-float v5, v15, v4

    .line 1846
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_9

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v12, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v12, :cond_9

    .line 1847
    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v12

    add-int/2addr v10, v12

    sub-int/2addr v11, v12

    .line 1852
    :cond_9
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomBackground()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomBackground()I

    move-result v12

    goto :goto_7

    :cond_a
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->val$forceDarkTheme:Z

    if-eqz v13, :cond_b

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    goto :goto_6

    :cond_b
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_6
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v12

    .line 1853
    :goto_7
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1854
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v13, v9, v8, v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1855
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v11, 0x18

    if-ne v6, v14, :cond_c

    .line 1857
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1858
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1859
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v15

    add-int/2addr v15, v8

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    sub-int v13, v16, v13

    int-to-float v13, v13

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v7, v7, v17

    int-to-float v7, v7

    invoke-virtual {v9, v14, v15, v13, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1860
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1861
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->left:F

    iget v13, v7, Landroid/graphics/RectF;->top:F

    iget v14, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v7, v15

    add-float/2addr v7, v13

    invoke-virtual {v1, v9, v13, v14, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1862
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    const/16 v9, 0xc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v9, v14

    mul-float/2addr v9, v5

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v13, v9, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1863
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_c
    move v7, v15

    :goto_8
    cmpl-float v9, v5, v7

    if-eqz v9, :cond_d

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    .line 1866
    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomActionBarBackground()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1867
    :cond_e
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomActionBarBackground()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomActionBarBackground()I

    move-result v12

    :cond_f
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1868
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1869
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v9

    int-to-float v9, v9

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    add-int/2addr v12, v8

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v14, v11

    int-to-float v11, v14

    invoke-virtual {v7, v9, v12, v13, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1870
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1871
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->left:F

    iget v11, v7, Landroid/graphics/RectF;->top:F

    iget v12, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v7, v13

    add-float/2addr v7, v11

    invoke-virtual {v1, v9, v11, v12, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1872
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    const/16 v9, 0xc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v9, v12

    mul-float/2addr v9, v5

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v11, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1873
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1876
    :cond_10
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomActionBarBackground()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1877
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomActionBarBackground()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1878
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1879
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v3

    const/16 v7, 0x15

    if-lt v4, v7, :cond_11

    .line 1880
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v4, :cond_11

    .line 1881
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    .line 1883
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v9

    add-int/2addr v9, v8

    const/16 v8, 0xc

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    int-to-float v9, v9

    mul-float/2addr v9, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v4, v7, v9, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1884
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1885
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1886
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1889
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_19

    :cond_13
    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_19

    const/16 v3, 0x24

    .line 1890
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1891
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

    if-ne v6, v8, :cond_14

    const/high16 v3, 0x20000000

    move v15, v5

    goto :goto_b

    .line 1897
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomActionBarBackground()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1898
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomActionBarBackground()I

    move-result v3

    .line 1899
    invoke-static {v3}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v6, v8

    if-gez v4, :cond_15

    const/4 v4, -0x1

    goto :goto_9

    :cond_15
    const/high16 v4, -0x1000000

    :goto_9
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1900
    invoke-static {v3, v4, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    .line 1901
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-nez v4, :cond_16

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_16
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_a
    sub-float v15, v6, v4

    goto :goto_b

    :cond_17
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1903
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8200(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v3

    .line 1904
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-nez v4, :cond_18

    move v15, v6

    goto :goto_b

    :cond_18
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    goto :goto_a

    .line 1906
    :goto_b
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 1907
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1908
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v4, v4

    mul-float/2addr v4, v15

    mul-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1909
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

    .line 1911
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1a
    return-void
.end method

.method private getCurrentTop()I
    .locals 4

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

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

    .line 2048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v0, :cond_1

    .line 2049
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method private getY(Landroid/view/View;)F
    .locals 6

    .line 1773
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1774
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 1775
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v2

    const/16 v3, 0xd

    .line 1777
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    :cond_0
    const/16 v4, 0x1a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v3, v1

    .line 1778
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    .line 1779
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_1
    int-to-float v1, v1

    .line 1780
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    add-float/2addr v1, p1

    float-to-int v1, v1

    :cond_2
    const/16 p1, 0x14

    .line 1782
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr p1, v1

    if-eqz v2, :cond_3

    .line 1783
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    :goto_0
    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    .line 1784
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, v4, :cond_6

    int-to-float v1, v3

    .line 1786
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    move-result-object v2

    if-ne v0, v2, :cond_4

    const/16 v0, 0xb

    .line 1787
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_1
    int-to-float v0, v0

    add-float/2addr v1, v0

    goto :goto_2

    .line 1788
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x3

    .line 1789
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    .line 1791
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    :goto_2
    int-to-float v0, v4

    sub-float/2addr v0, v1

    .line 1793
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1794
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 1796
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v0, :cond_7

    .line 1797
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, v0

    :cond_7
    int-to-float p1, p1

    return p1

    :cond_8
    return v1
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 1

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onMeasureInternal(II)V
    .locals 12

    .line 1622
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1623
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1625
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 1626
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 1629
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

    .line 1630
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1631
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    .line 1632
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1635
    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ltz v2, :cond_4

    .line 1637
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    .line 1640
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v2

    .line 1642
    :goto_0
    sget-boolean v6, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v6, :cond_2

    sub-int/2addr v1, v2

    .line 1644
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1646
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1647
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPreMeasure(II)V

    .line 1648
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1649
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPreMeasure(II)V

    .line 1651
    :cond_3
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1654
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v5, v2, :cond_d

    .line 1656
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1657
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_5

    goto/16 :goto_4

    .line 1660
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1661
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-eqz v4, :cond_6

    .line 1662
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1663
    :cond_6
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v4, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 1670
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

    .line 1664
    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1665
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

    .line 1667
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

    .line 1673
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
    .locals 2

    .line 2056
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2058
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2059
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;->drawChildBackground(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2061
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2062
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1917
    instance-of v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_16

    .line 1918
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1919
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x437f0000    # 255.0f

    .line 1920
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float/2addr v7, v3

    float-to-int v3, v7

    .line 1921
    move-object v7, v2

    check-cast v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    .line 1922
    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v8

    const/16 v9, 0xd

    .line 1924
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v10, v10, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v10

    const/high16 v11, 0x41d00000    # 26.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_0

    :cond_0
    move v10, v4

    :goto_0
    add-int/2addr v9, v10

    .line 1925
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v11

    const/4 v12, 0x1

    if-ne v7, v11, :cond_1

    move v11, v4

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    invoke-static {v10, v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5700(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v9

    .line 1926
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v11

    if-eq v11, v12, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    :cond_2
    int-to-float v10, v10

    .line 1927
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    :cond_3
    const/16 v11, 0x14

    .line 1929
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v10

    .line 1931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    const/16 v14, 0x2d

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v14

    add-int/2addr v13, v14

    if-eqz v8, :cond_4

    .line 1934
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v14

    goto :goto_2

    :cond_4
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v14

    :goto_2
    const/4 v15, 0x4

    const/4 v12, 0x2

    if-ne v8, v12, :cond_5

    if-ge v10, v14, :cond_9

    sub-int/2addr v14, v10

    int-to-float v7, v14

    .line 1937
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    sub-float v7, v6, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_6

    .line 1939
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v5

    add-int/2addr v5, v10

    if-ge v5, v14, :cond_9

    int-to-float v5, v9

    .line 1941
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    move-result-object v9

    if-ne v7, v9, :cond_6

    const/16 v7, 0xb

    .line 1942
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    :goto_3
    int-to-float v7, v7

    add-float/2addr v5, v7

    goto :goto_5

    .line 1943
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v9

    if-eq v7, v9, :cond_8

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertWalletLayout;

    move-result-object v9

    if-eq v7, v9, :cond_8

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    move-result-object v9

    if-ne v7, v9, :cond_7

    goto :goto_4

    .line 1946
    :cond_7
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_3

    :cond_8
    :goto_4
    const/4 v7, 0x3

    .line 1944
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    :goto_5
    sub-int v7, v14, v10

    .line 1948
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v9, v14

    sub-float/2addr v9, v5

    mul-float/2addr v9, v7

    float-to-int v5, v9

    sub-int/2addr v10, v5

    sub-int/2addr v11, v5

    add-int/2addr v13, v5

    sub-float v7, v6, v7

    goto :goto_6

    :cond_9
    move v7, v6

    .line 1958
    :goto_6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v5, v9, :cond_a

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v5, :cond_a

    .line 1959
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v10, v5

    add-int/2addr v11, v5

    sub-int/2addr v13, v5

    .line 1964
    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->hasCustomBackground()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCustomBackground()I

    move-result v5

    goto :goto_8

    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->val$forceDarkTheme:Z

    if-eqz v9, :cond_c

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    goto :goto_7

    :cond_c
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_7
    invoke-static {v5, v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9000(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v5

    .line 1965
    :goto_8
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v14

    if-eq v9, v14, :cond_e

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v14

    if-eq v9, v14, :cond_e

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v14

    if-ne v9, v14, :cond_d

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v9

    if-eqz v9, :cond_e

    :cond_d
    const/16 v16, 0x1

    goto :goto_9

    :cond_e
    move/from16 v16, v4

    :goto_9
    const/high16 v9, 0x40000000    # 2.0f

    const/16 v14, 0x18

    const/16 v17, 0xc

    if-eqz v16, :cond_f

    .line 1967
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1968
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v15, v4, v10, v6, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1969
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-ne v8, v12, :cond_f

    .line 1971
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1972
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1973
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v6

    int-to-float v6, v6

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    add-int/2addr v13, v10

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v12

    sub-int/2addr v15, v12

    int-to-float v12, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9900(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    add-int v15, v15, v18

    int-to-float v15, v15

    invoke-virtual {v4, v6, v13, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1974
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1975
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v12, v4, Landroid/graphics/RectF;->top:F

    iget v13, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v4, v12

    invoke-virtual {v1, v6, v12, v13, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1976
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1977
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1982
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    move-result-object v4

    if-eq v2, v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    move-result-object v4

    if-eq v2, v4, :cond_10

    .line 1983
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1984
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10200(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v12, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v6, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v12, v12, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    sub-float/2addr v6, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10300(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v1, v4, v6, v12, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1985
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 1986
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 1988
    :cond_10
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    :goto_a
    if-eqz v16, :cond_15

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v12, v7, v6

    if-eqz v12, :cond_11

    const/4 v6, 0x2

    if-eq v8, v6, :cond_11

    .line 1993
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1994
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1995
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10500(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v6

    add-int/2addr v6, v10

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v13

    add-int/2addr v13, v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v13, v10

    int-to-float v10, v13

    invoke-virtual {v3, v5, v6, v12, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1996
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1997
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v3, v6

    invoke-virtual {v1, v5, v6, v10, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1998
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1999
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2002
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_15

    :cond_12
    const/4 v3, 0x0

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_15

    const/16 v3, 0x24

    .line 2003
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 2004
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v9, 0x2

    div-int/2addr v6, v9

    int-to-float v6, v6

    int-to-float v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v3

    div-int/2addr v12, v9

    int-to-float v3, v12

    const/4 v12, 0x4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v5, v6, v10, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    if-ne v8, v9, :cond_13

    const/high16 v3, 0x20000000

    move v6, v7

    goto :goto_b

    .line 2011
    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$10800(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    move-result v3

    .line 2012
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_14

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_14
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    .line 2014
    :goto_b
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    .line 2015
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2016
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v5, v5

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2017
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2020
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v4

    .line 2022
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-ne v2, v3, :cond_19

    .line 2023
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_17

    return v4

    :cond_17
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_18

    .line 2028
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1

    .line 2030
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2031
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$3;->getY(Landroid/view/View;)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2032
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 2033
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v2

    .line 2036
    :cond_19
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2093
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 2094
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 2095
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    .line 2096
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2102
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 2103
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2041
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1566
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

    .line 1567
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onDismissWithTouchOutside()V

    return v1

    .line 1570
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 1680
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->lastNotifyWidth:I

    sub-int v0, p4, p2

    if-eq p1, v0, :cond_0

    .line 1681
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->lastNotifyWidth:I

    .line 1682
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1683
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 1686
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    .line 1688
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 1689
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1690
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1693
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p2

    .line 1694
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p4

    .line 1695
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    add-int/2addr p4, v2

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    .line 1698
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

    .line 1700
    :goto_1
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    move v1, v2

    :goto_2
    if-ge v1, p1, :cond_d

    .line 1703
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1704
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    goto/16 :goto_8

    .line 1707
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1709
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1710
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1715
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

    .line 1732
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_4

    :cond_6
    sub-int v8, v0, v5

    .line 1728
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v9

    goto :goto_3

    :cond_7
    sub-int v8, v0, v5

    .line 1725
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

    .line 1746
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_8
    sub-int v7, p5, p4

    sub-int/2addr v7, p3

    sub-int/2addr v7, v6

    .line 1743
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 1737
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

    .line 1740
    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_5
    sub-int v4, v7, v4

    .line 1749
    :goto_6
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v7, :cond_c

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1750
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1751
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_7

    .line 1753
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

    .line 1756
    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1759
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 1760
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 1761
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1584
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 1585
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1587
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1589
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v1, :cond_1

    .line 1590
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1591
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v4

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1592
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    .line 1594
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 1595
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1597
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_2

    .line 1598
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_1

    .line 1599
    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v5, v1, :cond_3

    .line 1600
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_1

    .line 1602
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 1605
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1606
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1608
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1609
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1611
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    int-to-float v0, v0

    const/high16 v1, 0x40900000    # 4.5f

    .line 1612
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1613
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1614
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$2702(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    .line 1615
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$3;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1617
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 1618
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$3;->onMeasureInternal(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1578
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

    .line 1766
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1769
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 5

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    add-float/2addr p1, v1

    .line 2068
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$11000(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2069
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->initialTranslationY:F

    .line 2071
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$11100(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    .line 2073
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2074
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v3, :cond_1

    .line 2075
    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$11200(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v2

    add-float/2addr v2, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    sub-float/2addr v2, p1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2078
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    move p1, v0

    goto :goto_0

    .line 2080
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2081
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

    .line 2083
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$11300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2085
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    sub-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2086
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$11400(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 2087
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    :cond_4
    return-void
.end method
