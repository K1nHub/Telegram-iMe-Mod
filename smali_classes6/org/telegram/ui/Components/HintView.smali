.class public Lorg/telegram/ui/Components/HintView;
.super Landroid/widget/FrameLayout;
.source "HintView.java"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private arrowImageView:Landroid/widget/ImageView;

.field private bottomOffset:I

.field private currentType:I

.field private currentView:Landroid/view/View;

.field private extraTranslationY:F

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageView:Landroid/widget/ImageView;

.field private isTopArrow:Z

.field private messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private overrideText:Ljava/lang/String;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showingDuration:J

.field private shownY:I

.field public textView:Landroid/widget/TextView;

.field private translationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 84
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x7d0

    .line 68
    iput-wide v4, v0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    move-object/from16 v4, p4

    .line 85
    iput-object v4, v0, Lorg/telegram/ui/Components/HintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 87
    iput v2, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    .line 88
    iput-boolean v3, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    .line 90
    new-instance v4, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const-string v5, "chat_gifSaveHintText"

    .line 91
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/HintView;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v4, 0x7

    const/16 v6, 0x8

    if-eq v2, v4, :cond_2

    if-eq v2, v6, :cond_2

    const/16 v7, 0x9

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    .line 97
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v8, 0x118

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v8, 0xfa

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v8, 0x136

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 101
    :goto_1
    iget v7, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v8, 0x3

    const-string v9, "chat_gifSaveHintBackground"

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-ne v7, v8, :cond_5

    .line 102
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/HintView;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v6, 0xa

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v7, v11, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 105
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v12, -0x2

    const/16 v13, 0x1e

    const/16 v14, 0x33

    const/4 v15, 0x0

    if-eqz v3, :cond_3

    move/from16 v16, v10

    goto :goto_2

    :cond_3
    move/from16 v16, v11

    :goto_2
    const/16 v17, 0x0

    if-eqz v3, :cond_4

    move/from16 v18, v11

    goto :goto_3

    :cond_4
    move/from16 v18, v10

    :goto_3
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 107
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v12, 0x33

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/HintView;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    iget v12, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-nez v12, :cond_6

    const/16 v12, 0x36

    goto :goto_4

    :cond_6
    move v12, v6

    :goto_4
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v7, v12, v4, v13, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x33

    const/4 v15, 0x0

    if-eqz v3, :cond_7

    move/from16 v16, v10

    goto :goto_5

    :cond_7
    move/from16 v16, v11

    :goto_5
    const/16 v17, 0x0

    if-eqz v3, :cond_8

    move/from16 v18, v11

    goto :goto_6

    :cond_8
    move/from16 v18, v10

    :goto_6
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    if-nez v2, :cond_9

    .line 114
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AutoplayVideoInfo:I

    const-string v6, "AutoplayVideoInfo"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    .line 117
    sget v4, Lorg/telegram/messenger/R$drawable;->tooltip_sound:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/HintView;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 120
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    const/16 v10, 0x26

    const/16 v11, 0x22

    const/16 v12, 0x33

    const/4 v13, 0x7

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_9
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 124
    sget v1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow_up:I

    goto :goto_8

    :cond_a
    sget v1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/HintView;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 126
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v9, 0xe

    const/4 v10, 0x6

    if-eqz v3, :cond_b

    const/16 v2, 0x30

    goto :goto_9

    :cond_b
    const/16 v2, 0x50

    :goto_9
    or-int/lit8 v11, v2, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/HintView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/HintView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/HintView;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/HintView;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    return-wide v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/HintView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/HintView;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p1
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private updatePosition(Landroid/view/View;)V
    .locals 12

    .line 348
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 351
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 353
    aget v3, v1, v2

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 355
    iget v5, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/16 v9, 0x8

    if-ne v5, v4, :cond_0

    .line 356
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    goto :goto_3

    :cond_0
    if-ne v5, v6, :cond_1

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    if-eq v5, v7, :cond_3

    if-ne v5, v9, :cond_2

    .line 359
    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    if-ne v5, v9, :cond_4

    .line 362
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_3

    .line 360
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_1

    .line 366
    :cond_4
    :goto_3
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v5, 0x3

    const/4 v10, 0x0

    if-ne v4, v9, :cond_8

    iget-boolean v11, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v11, :cond_8

    .line 367
    instance-of v4, p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v4, :cond_6

    .line 368
    check-cast p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 369
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 370
    aget v11, v1, v10

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result p1

    div-int/2addr p1, v0

    :goto_4
    add-int/2addr v11, p1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v11, p1

    goto :goto_5

    .line 371
    :cond_6
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 372
    check-cast p1, Landroid/widget/TextView;

    .line 373
    aget v4, v1, v10

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v4, p1

    const/high16 p1, 0x41840000    # 16.5f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int v11, v4, p1

    goto :goto_5

    .line 375
    :cond_7
    aget v11, v1, v10

    goto :goto_5

    :cond_8
    if-ne v4, v5, :cond_9

    .line 378
    aget v11, v1, v10

    goto :goto_5

    .line 380
    :cond_9
    aget v4, v1, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    add-int v11, v4, p1

    .line 383
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 384
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 385
    aget v4, v1, v10

    sub-int/2addr v11, v4

    .line 386
    aget v1, v1, v2

    sub-int/2addr v3, v1

    .line 388
    iget v1, p0, Lorg/telegram/ui/Components/HintView;->bottomOffset:I

    sub-int/2addr v3, v1

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 391
    iget-boolean v2, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-eq v2, v6, :cond_a

    if-eq v2, v7, :cond_a

    if-eq v2, v9, :cond_a

    .line 392
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    const/16 v3, 0x2c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_6

    .line 394
    :cond_a
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 400
    :goto_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_b

    .line 401
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 402
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_b
    move v2, v10

    move v3, v2

    .line 404
    :goto_7
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v4, v9, :cond_c

    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-nez v4, :cond_c

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v10, v1, 0x2

    goto :goto_8

    .line 406
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    if-le v11, v4, :cond_e

    .line 407
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v4, v5, :cond_d

    int-to-float v1, v1

    .line 408
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    if-gez v1, :cond_f

    goto :goto_8

    .line 413
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v3, v2

    sub-int v10, v1, v3

    goto :goto_8

    .line 416
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v1, v5, :cond_10

    .line 417
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    sub-int v1, v11, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_f

    goto :goto_8

    :cond_f
    move v10, v1

    :cond_10
    :goto_8
    int-to-float v1, v10

    .line 425
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    add-int/2addr v2, v10

    sub-int v1, v11, v2

    .line 426
    iget-object v2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 427
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v2, v7, :cond_11

    .line 428
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 430
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    if-le v11, p1, :cond_12

    .line 432
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_14

    .line 433
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    .line 434
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_9

    .line 438
    :cond_12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    const/16 v0, 0x18

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_13

    .line 439
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 440
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_9

    .line 442
    :cond_13
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_14

    .line 443
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    .line 444
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_14
    :goto_9
    return-void
.end method


# virtual methods
.method public getBaseTranslationY()F
    .locals 1

    .line 151
    iget v0, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    return v0
.end method

.method public getMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 1

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 5

    .line 455
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 460
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 461
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    .line 463
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 464
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 465
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    if-eqz p1, :cond_3

    .line 468
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    .line 469
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 470
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 469
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/HintView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HintView$3;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 482
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 484
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 485
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    .line 486
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 487
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :goto_0
    return-void
.end method

.method public setBackgroundColor(II)V
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 132
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x6

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBottomOffset(I)V
    .locals 0

    .line 504
    iput p1, p0, Lorg/telegram/ui/Components/HintView;->bottomOffset:I

    return-void
.end method

.method public setExtraTranslationY(F)V
    .locals 1

    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    .line 147
    iget v0, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public setHideRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOverrideText(Ljava/lang/String;)V
    .locals 1

    .line 136
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->overrideText:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z

    :cond_0
    return-void
.end method

.method public setShowingDuration(J)V
    .locals 0

    .line 500
    iput-wide p1, p0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 159
    iget v3, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    iget v6, v0, Lorg/telegram/ui/Components/HintView;->shownY:I

    if-ne v2, v6, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eq v6, v1, :cond_2

    :cond_0
    if-eq v3, v4, :cond_3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-ne v3, v1, :cond_3

    :cond_2
    return v5

    .line 162
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 163
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 164
    iput-object v6, v0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    :cond_4
    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 167
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v8, 0x1

    .line 168
    aget v9, v7, v8

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 170
    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 171
    aget v7, v7, v8

    sub-int/2addr v9, v7

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 175
    iget v10, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/16 v11, 0xa

    if-nez v10, :cond_7

    .line 176
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    int-to-float v9, v9

    .line 177
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 178
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    float-to-int v2, v2

    add-int v10, v9, v2

    .line 180
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v13, v14

    if-le v9, v13, :cond_6

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v12, v2

    if-le v10, v12, :cond_5

    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNoSoundIconCenterX()I

    move-result v2

    goto/16 :goto_4

    :cond_6
    :goto_0
    return v5

    :cond_7
    const/high16 v12, -0x80000000

    const/16 v13, 0x3e8

    if-ne v10, v4, :cond_c

    .line 186
    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/Integer;

    add-int/2addr v9, v2

    .line 189
    iput v2, v0, Lorg/telegram/ui/Components/HintView;->shownY:I

    .line 190
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v14, -0x1

    if-ne v2, v14, :cond_8

    .line 191
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->PollSelectOption:I

    const-string v14, "PollSelectOption"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 193
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isQuiz()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 194
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9

    .line 195
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->NoVotesQuiz:I

    const-string v14, "NoVotesQuiz"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 197
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v14, v5, [Ljava/lang/Object;

    const-string v15, "Answer"

    invoke-static {v15, v10, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 200
    :cond_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_b

    .line 201
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->NoVotes:I

    const-string v14, "NoVotes"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 203
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v14, v5, [Ljava/lang/Object;

    const-string v15, "Vote"

    invoke-static {v15, v10, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_1
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/FrameLayout;->measure(II)V

    move/from16 v2, p3

    goto/16 :goto_4

    .line 209
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 210
    iget-object v10, v0, Lorg/telegram/ui/Components/HintView;->overrideText:Ljava/lang/String;

    if-nez v10, :cond_d

    .line 211
    iget-object v10, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->HidAccount:I

    const-string v15, "HidAccount"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 213
    :cond_d
    iget-object v14, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_2
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v10, v12}, Landroid/widget/FrameLayout;->measure(II)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 218
    iget-wide v12, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_e

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v10, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v2, v10

    const/16 v10, 0x32

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v2, v10

    add-int/2addr v9, v2

    goto :goto_3

    :cond_e
    const/16 v10, 0x16

    .line 221
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 222
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawNameLayout()Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v10, 0x14

    .line 223
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 225
    :cond_f
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawTopic()Z

    move-result v2

    if-eqz v2, :cond_10

    int-to-float v2, v9

    .line 226
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDrawTopicHeight()F

    move-result v10

    add-float/2addr v9, v10

    add-float/2addr v2, v9

    float-to-int v2, v2

    move v9, v2

    .line 229
    :cond_10
    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v2, v10

    if-gt v9, v2, :cond_11

    return v5

    .line 232
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getForwardNameCenterX()I

    move-result v2

    .line 235
    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 236
    iget-boolean v12, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v12, :cond_12

    .line 237
    iget v9, v0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    const/16 v12, 0x2c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iput v12, v0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v9, v12

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_5

    .line 239
    :cond_12
    iget v12, v0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v9, v13

    int-to-float v9, v9

    iput v9, v0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v12, v9

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 241
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v9

    add-int/2addr v9, v2

    const/16 v12, 0x13

    .line 242
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    .line 243
    iget v13, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v13, v4, :cond_13

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    sub-int v4, v2, v4

    const v10, 0x4198cccd    # 19.1f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v4, v10

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v10, v4

    .line 245
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    add-int/2addr v12, v4

    goto :goto_6

    .line 247
    :cond_13
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    if-le v9, v4, :cond_14

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v10, v4

    const/16 v4, 0x26

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v10, v4

    int-to-float v4, v10

    .line 249
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    add-int/2addr v12, v10

    goto :goto_6

    :cond_14
    const/4 v4, 0x0

    .line 252
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 254
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v12

    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v3

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 255
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 256
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    if-le v9, v4, :cond_15

    .line 257
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_17

    .line 258
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 260
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_7

    .line 263
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    const/16 v7, 0x18

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v4, v9

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_16

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 265
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 266
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_7

    .line 267
    :cond_16
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_17

    .line 268
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 270
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 274
    :cond_17
    :goto_7
    iput-object v1, v0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 275
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_18

    .line 276
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 277
    iput-object v6, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 280
    :cond_18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p5, :cond_19

    .line 283
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v8, [Landroid/animation/Animator;

    .line 284
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 285
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    .line 284
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 287
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/HintView$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/HintView$1;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 295
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    :cond_19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_8
    return v8

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 155
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    move-result p1

    return p1
.end method

.method public showForView(Landroid/view/View;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;ZZ)Z

    move-result p1

    return p1
.end method

.method public showForView(Landroid/view/View;ZZ)Z
    .locals 4

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 312
    iput-object v2, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    .line 314
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    .line 316
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 318
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 319
    iput-object v2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    const/4 p1, 0x1

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 325
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, p1, [Landroid/animation/Animator;

    .line 326
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 327
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 326
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 329
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/HintView$2;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/HintView$2;-><init>(Lorg/telegram/ui/Components/HintView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 339
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 341
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return p1

    .line 305
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 306
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    :cond_5
    return v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
