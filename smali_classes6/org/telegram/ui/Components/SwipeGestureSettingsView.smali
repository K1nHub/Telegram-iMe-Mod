.class public Lorg/telegram/ui/Components/SwipeGestureSettingsView;
.super Landroid/widget/FrameLayout;
.source "SwipeGestureSettingsView.java"


# instance fields
.field backgroundKeys:[Ljava/lang/String;

.field colorProgress:F

.field currentColorKey:Ljava/lang/String;

.field currentIconIndex:I

.field currentIconValue:I

.field filledPaint:Landroid/graphics/Paint;

.field fromColor:I

.field hasTabs:Z

.field iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

.field icons:[Lorg/telegram/ui/Components/RLottieDrawable;

.field linePaint:Landroid/graphics/Paint;

.field outlinePaint:Landroid/graphics/Paint;

.field private picker:Lorg/telegram/ui/Components/NumberPicker;

.field pickerDividersPaint:Landroid/graphics/Paint;

.field progressToSwipeFolders:F

.field rect:Landroid/graphics/RectF;

.field strings:[Ljava/lang/String;

.field swapIconRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-LznbhTxbuhYnD0p396peOiT-7I(Lorg/telegram/ui/Components/SwipeGestureSettingsView;Lorg/telegram/ui/Components/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$new$1(Lorg/telegram/ui/Components/NumberPicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$GWmJ6W6qx0nHxsT4wGhE6ncb3BE(Lorg/telegram/ui/Components/SwipeGestureSettingsView;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$new$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XZYqrkp7QQc86aIw3j2COePZQ80(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$swapIcons$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 62
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    .line 41
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    .line 47
    iput-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    .line 48
    iput-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[Ljava/lang/String;

    new-array v2, v2, [Lorg/telegram/ui/Components/RLottieDrawable;

    .line 49
    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x2

    new-array v5, v2, [Lorg/telegram/ui/Components/RLottieImageView;

    .line 52
    iput-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 56
    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    .line 64
    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsPin:I

    const-string v7, "SwipeSettingsPin"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 65
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsRead:I

    const-string v8, "SwipeSettingsRead"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 66
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsArchive:I

    const-string v8, "SwipeSettingsArchive"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 67
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsMute:I

    const-string v8, "SwipeSettingsMute"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v4, v8

    .line 68
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsDelete:I

    const-string v9, "SwipeSettingsDelete"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v4, v9

    .line 69
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsFolders:I

    const-string v10, "SwipeSettingsFolders"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x5

    aput-object v6, v4, v10

    .line 71
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[Ljava/lang/String;

    const-string v6, "chats_archiveBackground"

    aput-object v6, v4, v7

    .line 72
    aput-object v6, v4, v3

    .line 73
    aput-object v6, v4, v2

    .line 74
    aput-object v6, v4, v8

    const-string v6, "dialogSwipeRemove"

    .line 75
    aput-object v6, v4, v9

    const-string v6, "chats_archivePinBackground"

    .line 76
    aput-object v6, v4, v10

    .line 78
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    new-instance v4, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;

    const/16 v6, 0xd

    invoke-direct {v4, v0, v1, v6}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;Landroid/content/Context;I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    .line 101
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 102
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/NumberPicker;->setDrawDividers(Z)V

    .line 103
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    .line 105
    invoke-static/range {p2 .. p2}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v4

    if-lez v4, :cond_0

    .line 106
    iput-boolean v3, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/fork/controller/FiltersController;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    iput-boolean v7, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    .line 111
    :cond_1
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v3

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v2

    :goto_1
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 112
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v3

    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setAllItemsCount(I)V

    .line 113
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 114
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    new-instance v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 115
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    new-instance v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setOnValueChangedListener(Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;)V

    .line 122
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 123
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 125
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    const/16 v11, 0x84

    const/4 v12, -0x1

    const/4 v13, 0x5

    const/16 v14, 0x15

    const/4 v15, 0x0

    const/16 v16, 0x15

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 129
    iput v7, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    move v4, v7

    :goto_3
    if-ge v4, v2, :cond_4

    .line 131
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    aput-object v8, v6, v4

    .line 132
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v6, v6, v4

    const/16 v11, 0x1c

    const/16 v12, 0x1c

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xb8

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 135
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 137
    iget-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 140
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v7

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 141
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v3

    invoke-static {v1, v7, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 143
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    if-ne v1, v10, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    .line 144
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    return-void
.end method

.method private synthetic lambda$new$0(I)Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/NumberPicker;II)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIcons()V

    .line 118
    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->updateChatListSwipeSetting(I)V

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p2, 0x3

    const/4 p3, 0x2

    .line 120
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z

    return-void
.end method

.method private synthetic lambda$swapIcons$2()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    .line 174
    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIcons()V

    return-void
.end method

.method private swapIcons()V
    .locals 5

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    .line 155
    iget v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    if-eq v1, v0, :cond_3

    .line 156
    iput v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    .line 157
    iget v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x2

    .line 158
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 160
    iget-object v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 163
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    .line 168
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    iget v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    aget-object v0, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-static {v0, v2, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 170
    iput v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    .line 172
    new-instance v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 9

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v1, v0, p1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 293
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_pin:I

    :goto_0
    move v3, v1

    goto :goto_1

    .line 308
    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_disabled:I

    goto :goto_0

    .line 299
    :cond_1
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_delete:I

    goto :goto_0

    .line 302
    :cond_2
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_mute:I

    goto :goto_0

    .line 296
    :cond_3
    sget v1, Lorg/telegram/messenger/R$raw;->chats_archive:I

    goto :goto_0

    .line 305
    :cond_4
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_read:I

    goto :goto_0

    .line 311
    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    aput-object v1, v0, p1

    .line 312
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateIconColor(I)V

    .line 315
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v3, 0x3d5a740e

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 190
    iget v6, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v7, v6, v5

    if-eqz v7, :cond_2

    add-float/2addr v6, v3

    .line 191
    iput v6, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v0, v6, v5

    if-lez v0, :cond_1

    .line 193
    iput v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    goto :goto_1

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 197
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 199
    iget v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_4

    sub-float/2addr v0, v3

    .line 200
    iput v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 202
    iput v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    goto :goto_1

    .line 204
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 209
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    const-string v1, "switchTrack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v3, 0x84

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v6, 0x15

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v3, v7

    const/16 v7, 0x10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v3, v7

    sub-int/2addr v0, v3

    .line 214
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    const/16 v7, 0x30

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 218
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v8, v6

    int-to-float v9, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v6

    int-to-float v10, v10

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 222
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:Ljava/lang/String;

    const v9, 0x3f666666    # 0.9f

    const-string v10, "windowBackgroundWhite"

    if-nez v7, :cond_5

    .line 223
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v11

    aget-object v7, v7, v11

    iput-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:Ljava/lang/String;

    .line 224
    iput v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    .line 225
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    iget-object v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:Ljava/lang/String;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7, v11, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    .line 226
    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    goto :goto_2

    .line 227
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v11

    aget-object v7, v7, v11

    iget-object v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 228
    iget v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    iget-object v12, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:Ljava/lang/String;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v11

    iget v12, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    invoke-static {v7, v11, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    .line 229
    iput v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    .line 230
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v11

    aget-object v7, v7, v11

    iput-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:Ljava/lang/String;

    .line 233
    :cond_6
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    cmpl-float v11, v7, v5

    if-eqz v11, :cond_8

    const v11, 0x3e23d70a    # 0.16f

    add-float/2addr v7, v11

    .line 234
    iput v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_7

    .line 236
    iput v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    goto :goto_3

    .line 238
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 242
    :cond_8
    :goto_3
    iget v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    iget-object v11, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:Ljava/lang/String;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7, v11, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    iget v9, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    invoke-static {v5, v7, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    .line 244
    iget-object v7, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/4 v7, 0x6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v9, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 247
    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 261
    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/16 v9, 0x3a

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v6

    int-to-float v6, v9

    invoke-virtual {v5, v3, v8, v0, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    const/16 v2, 0xf

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v12, v0, v1

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/16 v1, 0x17

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-float v9, v0, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/16 v2, 0x44

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v11, v0, v2

    iget-object v13, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    move-object v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float v9, v0, v2

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-float v6, v0, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v0, v1

    iget-object v10, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 359
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p1

    add-int/2addr p1, v0

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getMaxValue()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 364
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 349
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 352
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 181
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x66

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 341
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateColors()V

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    const-string v0, "dialogTextBlack"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setTextColor(I)V

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    const/4 v0, 0x0

    .line 333
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 334
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateIconColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateIconColor(I)V
    .locals 4

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    const-string v0, "windowBackgroundWhite"

    .line 320
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "chats_archiveBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    const-string v1, "chats_archiveIcon"

    .line 321
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v2, v2, p1

    const-string v3, "Arrow.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, p1

    const-string v2, "Box2.**"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    const-string v0, "Box1.**"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    return-void
.end method
