.class public Lorg/telegram/ui/Components/HintView;
.super Landroid/widget/FrameLayout;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HintView$VisibilityListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private arrowImageView:Landroid/widget/ImageView;

.field private backgroundColor:I

.field backgroundPaint:Landroid/graphics/Paint;

.field private bottomOffset:I

.field private currentType:I

.field private currentView:Landroid/view/View;

.field private drawPath:Z

.field private extraTranslationY:F

.field private hasCloseButton:Z

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageView:Landroid/widget/ImageView;

.field private isTopArrow:Z

.field private messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private overrideText:Ljava/lang/String;

.field path:Landroid/graphics/Path;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showingDuration:J

.field private shownY:I

.field public textView:Landroid/widget/TextView;

.field private translationY:F

.field private useScale:Z

.field visibleListener:Lorg/telegram/ui/Components/HintView$VisibilityListener;


# direct methods
.method public static synthetic $r8$lambda$K4utPpiW9ar0LAmfUMFMfpns8kg(Lorg/telegram/ui/Components/HintView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->lambda$createCloseButton$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 100
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x7d0

    .line 78
    iput-wide v4, v0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    move-object/from16 v4, p4

    .line 101
    iput-object v4, v0, Lorg/telegram/ui/Components/HintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 103
    iput v2, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    .line 104
    iput-boolean v3, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    .line 106
    new-instance v4, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    .line 107
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
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

    .line 113
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v8, 0x118

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 115
    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v8, 0xfa

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v8, 0x136

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 117
    :goto_1
    iget v7, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/4 v10, 0x0

    if-ne v7, v8, :cond_5

    .line 118
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v6, 0xa

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v7, v10, v6, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/16 v12, 0x1e

    const/16 v13, 0x33

    const/4 v14, 0x0

    if-eqz v3, :cond_3

    move v15, v9

    goto :goto_2

    :cond_3
    move v15, v10

    :goto_2
    const/16 v16, 0x0

    if-eqz v3, :cond_4

    move/from16 v17, v10

    goto :goto_3

    :cond_4
    move/from16 v17, v9

    :goto_3
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 123
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v11, 0x33

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v12

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    iget v11, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-nez v11, :cond_6

    const/16 v11, 0x36

    goto :goto_4

    :cond_6
    move v11, v6

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v7, v11, v4, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x33

    const/4 v14, 0x0

    if-eqz v3, :cond_7

    move v15, v9

    goto :goto_5

    :cond_7
    move v15, v10

    :goto_5
    const/16 v16, 0x0

    if-eqz v3, :cond_8

    move/from16 v17, v10

    goto :goto_6

    :cond_8
    move/from16 v17, v9

    :goto_6
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    if-nez v2, :cond_9

    .line 130
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AutoplayVideoInfo:I

    const-string v6, "AutoplayVideoInfo"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    .line 133
    sget v4, Lorg/telegram/messenger/R$drawable;->tooltip_sound:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    const/16 v9, 0x26

    const/16 v10, 0x22

    const/16 v11, 0x33

    const/4 v12, 0x7

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :cond_9
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 140
    sget v1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow_up:I

    goto :goto_8

    :cond_a
    sget v1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 142
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

    .line 43
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/HintView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lorg/telegram/ui/Components/HintView;->hasCloseButton:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/HintView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/HintView;)I
    .locals 0

    .line 43
    iget p0, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/HintView;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/HintView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/HintView;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$createCloseButton$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    return-void
.end method

.method private updatePosition(Landroid/view/View;)V
    .locals 12

    .line 405
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

    .line 408
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 410
    aget v3, v1, v2

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    .line 412
    iget v5, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/16 v9, 0x8

    if-ne v5, v4, :cond_0

    .line 413
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    goto :goto_3

    :cond_0
    if-ne v5, v6, :cond_1

    .line 414
    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v4, :cond_1

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_2

    :cond_1
    if-eq v5, v7, :cond_3

    if-ne v5, v9, :cond_2

    .line 416
    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne v5, v9, :cond_4

    .line 419
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_3

    .line 417
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_2
    add-int/2addr v4, v5

    goto :goto_0

    .line 423
    :cond_4
    :goto_3
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/4 v5, 0x3

    const/4 v10, 0x0

    if-ne v4, v9, :cond_8

    iget-boolean v11, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v11, :cond_8

    .line 424
    instance-of v4, p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v4, :cond_6

    .line 425
    check-cast p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 426
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 427
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

    .line 428
    :cond_6
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 429
    check-cast p1, Landroid/widget/TextView;

    .line 430
    aget v4, v1, v10

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v4, p1

    const/high16 p1, 0x41840000    # 16.5f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int v11, v4, p1

    goto :goto_5

    .line 432
    :cond_7
    aget v11, v1, v10

    goto :goto_5

    :cond_8
    if-ne v4, v5, :cond_9

    .line 435
    aget v11, v1, v10

    goto :goto_5

    .line 437
    :cond_9
    aget v4, v1, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    add-int v11, v4, p1

    .line 440
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 441
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 442
    aget v4, v1, v10

    sub-int/2addr v11, v4

    .line 443
    aget v1, v1, v2

    sub-int/2addr v3, v1

    .line 445
    iget v1, p0, Lorg/telegram/ui/Components/HintView;->bottomOffset:I

    sub-int/2addr v3, v1

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 448
    iget-boolean v2, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-eq v2, v6, :cond_a

    if-eq v2, v7, :cond_a

    if-eq v2, v9, :cond_a

    .line 449
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    const/16 v3, 0x2c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_6

    .line 451
    :cond_a
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 457
    :goto_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_b

    .line 458
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 459
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_b
    move v2, v10

    move v3, v2

    .line 461
    :goto_7
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v4, v9, :cond_c

    iget-boolean v4, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-nez v4, :cond_c

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v10, v1, 0x2

    goto :goto_8

    .line 463
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    if-le v11, v4, :cond_e

    .line 464
    iget v4, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v4, v5, :cond_d

    int-to-float v1, v1

    .line 465
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    if-gez v1, :cond_f

    goto :goto_8

    .line 470
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v3, v2

    sub-int v10, v1, v3

    goto :goto_8

    .line 473
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v1, v5, :cond_10

    .line 474
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

    .line 482
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    add-int/2addr v2, v10

    sub-int v1, v11, v2

    int-to-float v1, v1

    .line 483
    iget-object v2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 484
    iget v2, p0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v2, v7, :cond_11

    .line 485
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 487
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    if-le v11, p1, :cond_12

    .line 489
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_14

    .line 490
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    .line 491
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_9

    .line 495
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

    .line 496
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 497
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_9

    .line 499
    :cond_13
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_14

    .line 500
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sub-float p1, v1, p1

    .line 501
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_14
    :goto_9
    return-void
.end method


# virtual methods
.method public createCloseButton()V
    .locals 11

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->hasCloseButton:Z

    .line 149
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    .line 150
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/HintView;->getThemedColor(I)I

    move-result v2

    const/16 v3, 0x7d

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->imageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    const/4 v9, 0x0

    if-eqz v1, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    const/16 v4, 0x22

    const/16 v5, 0x22

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v0, Lorg/telegram/ui/Components/HintView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 605
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->drawPath:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    .line 608
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/HintView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 614
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBaseTranslationY()F
    .locals 1

    .line 180
    iget v0, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    return v0
.end method

.method public getMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 1

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 508
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 6

    .line 512
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 516
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 517
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 518
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    .line 520
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 521
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 522
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 525
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 526
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->useScale:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    .line 527
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    .line 528
    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v1

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    .line 529
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    .line 530
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 527
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 532
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 533
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_3
    new-array v0, v2, [Landroid/animation/Animator;

    .line 535
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 536
    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 535
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 540
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/HintView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HintView$3;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    .line 555
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 556
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->visibleListener:Lorg/telegram/ui/Components/HintView$VisibilityListener;

    if-eqz p1, :cond_5

    .line 557
    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/HintView$VisibilityListener;->onVisible(Z)V

    .line 559
    :cond_5
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    .line 560
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 561
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public isShowing()Z
    .locals 1

    .line 566
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 619
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 620
    iget-boolean p1, p0, Lorg/telegram/ui/Components/HintView;->drawPath:Z

    if-eqz p1, :cond_2

    .line 621
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 625
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 629
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 631
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    int-to-float p1, p1

    invoke-virtual {v1, v4, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 632
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 636
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_1

    .line 640
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, p1, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 641
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {v1, p2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 643
    iget-object v1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {v1, p2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 645
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 646
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 647
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBackgroundColor(II)V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 161
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

    .line 582
    iput p1, p0, Lorg/telegram/ui/Components/HintView;->bottomOffset:I

    return-void
.end method

.method public setExtraTranslationY(F)V
    .locals 1

    .line 175
    iput p1, p0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    .line 176
    iget v0, p0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public setHideRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOverrideText(Ljava/lang/String;)V
    .locals 1

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->overrideText:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z

    :cond_0
    return-void
.end method

.method public setShowingDuration(J)V
    .locals 0

    .line 578
    iput-wide p1, p0, Lorg/telegram/ui/Components/HintView;->showingDuration:J

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUseScale(Z)V
    .locals 0

    .line 590
    iput-boolean p1, p0, Lorg/telegram/ui/Components/HintView;->useScale:Z

    return-void
.end method

.method public setVisibleListener(Lorg/telegram/ui/Components/HintView$VisibilityListener;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->visibleListener:Lorg/telegram/ui/Components/HintView$VisibilityListener;

    return-void
.end method

.method public showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 188
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

    .line 191
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 192
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 193
    iput-object v6, v0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    :cond_4
    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 196
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v8, 0x1

    .line 197
    aget v9, v7, v8

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 199
    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 200
    aget v7, v7, v8

    sub-int/2addr v9, v7

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 204
    iget v10, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    const/high16 v11, -0x80000000

    const/16 v12, 0x3e8

    const/16 v13, 0xa

    if-nez v10, :cond_7

    .line 205
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    int-to-float v9, v9

    .line 206
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 207
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v2

    float-to-int v2, v2

    add-int v10, v9, v2

    .line 209
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v15, v15, v16

    if-le v9, v15, :cond_6

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v14, v2

    if-le v10, v14, :cond_5

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNoSoundIconCenterX()I

    move-result v2

    .line 214
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/FrameLayout;->measure(II)V

    goto/16 :goto_4

    :cond_6
    :goto_0
    return v5

    :cond_7
    if-ne v10, v4, :cond_c

    .line 216
    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/Integer;

    add-int/2addr v9, v2

    .line 219
    iput v2, v0, Lorg/telegram/ui/Components/HintView;->shownY:I

    .line 220
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v14, -0x1

    if-ne v2, v14, :cond_8

    .line 221
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->PollSelectOption:I

    const-string v14, "PollSelectOption"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 223
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isQuiz()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 224
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9

    .line 225
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->NoVotesQuiz:I

    const-string v14, "NoVotesQuiz"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 227
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

    .line 230
    :cond_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_b

    .line 231
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->NoVotes:I

    const-string v14, "NoVotes"

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 233
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-array v14, v5, [Ljava/lang/Object;

    const-string v15, "Vote"

    invoke-static {v15, v10, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_1
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0, v2, v10}, Landroid/widget/FrameLayout;->measure(II)V

    move/from16 v2, p3

    goto/16 :goto_4

    .line 239
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 240
    iget-object v10, v0, Lorg/telegram/ui/Components/HintView;->overrideText:Ljava/lang/String;

    if-nez v10, :cond_d

    .line 241
    iget-object v10, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/messenger/R$string;->HidAccount:I

    const-string v15, "HidAccount"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 243
    :cond_d
    iget-object v14, v0, Lorg/telegram/ui/Components/HintView;->textView:Landroid/widget/TextView;

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_2
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/FrameLayout;->measure(II)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 248
    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v14, 0x0

    cmp-long v10, v10, v14

    if-nez v10, :cond_e

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

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

    .line 251
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 252
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawNameLayout()Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v10, 0x14

    .line 253
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    .line 255
    :cond_f
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawTopic()Z

    move-result v2

    if-eqz v2, :cond_10

    int-to-float v2, v9

    .line 256
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDrawTopicHeight()F

    move-result v10

    add-float/2addr v9, v10

    add-float/2addr v2, v9

    float-to-int v2, v2

    move v9, v2

    .line 259
    :cond_10
    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v2, v10

    if-gt v9, v2, :cond_11

    return v5

    .line 262
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getForwardNameCenterX()I

    move-result v2

    .line 265
    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 266
    iget-boolean v11, v0, Lorg/telegram/ui/Components/HintView;->isTopArrow:Z

    if-eqz v11, :cond_12

    .line 267
    iget v9, v0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    const/16 v11, 0x2c

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iput v11, v0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v9, v11

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_5

    .line 269
    :cond_12
    iget v11, v0, Lorg/telegram/ui/Components/HintView;->extraTranslationY:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v9, v12

    int-to-float v9, v9

    iput v9, v0, Lorg/telegram/ui/Components/HintView;->translationY:F

    add-float/2addr v11, v9

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 271
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v9

    add-int/2addr v9, v2

    const/16 v11, 0x13

    .line 272
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    .line 273
    iget v12, v0, Lorg/telegram/ui/Components/HintView;->currentType:I

    if-ne v12, v4, :cond_13

    .line 274
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

    .line 275
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    add-int/2addr v11, v4

    goto :goto_6

    .line 277
    :cond_13
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    if-le v9, v4, :cond_14

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v10, v4

    const/16 v4, 0x26

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v10, v4

    int-to-float v4, v10

    .line 279
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    add-int/2addr v11, v10

    goto :goto_6

    :cond_14
    const/4 v4, 0x0

    .line 282
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 284
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v11

    iget-object v2, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v3

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 285
    iget-object v4, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 286
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    if-le v9, v4, :cond_15

    .line 287
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_17

    .line 288
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 290
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_7

    .line 293
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

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 295
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 296
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_7

    .line 297
    :cond_16
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_17

    .line 298
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 300
    iget-object v7, v0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float/2addr v2, v4

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 304
    :cond_17
    :goto_7
    iput-object v1, v0, Lorg/telegram/ui/Components/HintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 305
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_18

    .line 306
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 307
    iput-object v6, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 310
    :cond_18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->visibleListener:Lorg/telegram/ui/Components/HintView$VisibilityListener;

    if-eqz v1, :cond_19

    .line 313
    invoke-interface {v1, v8}, Lorg/telegram/ui/Components/HintView$VisibilityListener;->onVisible(Z)V

    :cond_19
    if-eqz p5, :cond_1a

    .line 316
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v8, [Landroid/animation/Animator;

    .line 317
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 318
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    .line 317
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 320
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/HintView$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/HintView$1;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 330
    iget-object v1, v0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    :cond_1a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_8
    return v8

    nop

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

    .line 184
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    move-result p1

    return p1
.end method

.method public showForView(Landroid/view/View;Z)Z
    .locals 5

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 346
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 347
    iput-object v2, p0, Lorg/telegram/ui/Components/HintView;->hideRunnable:Ljava/lang/Runnable;

    .line 349
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 354
    iput-object v2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    const/4 p1, 0x1

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->visibleListener:Lorg/telegram/ui/Components/HintView$VisibilityListener;

    if-eqz v0, :cond_3

    .line 360
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/HintView$VisibilityListener;->onVisible(Z)V

    :cond_3
    if-eqz p2, :cond_5

    .line 363
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 364
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HintView;->useScale:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    .line 365
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 366
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getY()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 367
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    .line 368
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v0, v1

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 369
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, p1

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    .line 370
    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v2

    .line 367
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 372
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 373
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_4
    new-array v0, p1, [Landroid/animation/Animator;

    .line 375
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    .line 376
    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 375
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 378
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 380
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/HintView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/HintView$2;-><init>(Lorg/telegram/ui/Components/HintView;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    iget-object p2, p0, Lorg/telegram/ui/Components/HintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    .line 392
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    return p1

    .line 340
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 341
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    :cond_7
    return v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updatePosition()V
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Components/HintView;->currentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/HintView;->updatePosition(Landroid/view/View;)V

    return-void
.end method
