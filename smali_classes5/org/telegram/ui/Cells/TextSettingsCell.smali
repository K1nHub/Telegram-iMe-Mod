.class public Lorg/telegram/ui/Cells/TextSettingsCell;
.super Landroid/widget/FrameLayout;
.source "TextSettingsCell.java"


# instance fields
.field private canDisable:Z

.field private changeProgressStartDelay:I

.field private drawLoading:Z

.field private drawLoadingProgress:F

.field private imageView:Landroid/widget/ImageView;

.field private imageViewIsColorful:Z

.field private incrementLoadingProgress:Z

.field private loadingProgress:F

.field private loadingSize:I

.field private measureDelay:Z

.field private needDivider:Z

.field private padding:I

.field paint:Landroid/graphics/Paint;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;

.field private valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private valueImageView:Landroid/widget/ImageView;

.field private valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x15

    .line 90
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 102
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object v2, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v10, p2

    .line 104
    iput v10, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    .line 106
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v11, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    .line 107
    invoke-virtual {v3, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 109
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 110
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 111
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 112
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v12, 0x5

    const/4 v13, 0x3

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    const/16 v14, 0x10

    or-int/2addr v4, v14

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v15, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    or-int/lit8 v5, v5, 0x30

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v6, p2

    move/from16 v8, p2

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v4, v11

    invoke-direct {v3, v1, v11, v11, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v17, 0x3f0ccccd    # 0.55f

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x140

    .line 117
    sget-object v22, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 118
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 119
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_2

    :cond_2
    const/4 v4, 0x5

    :goto_2
    or-int/2addr v4, v14

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 120
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v4, "windowBackgroundWhiteValueText"

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 121
    iget-object v11, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    goto :goto_3

    :cond_3
    const/4 v5, 0x5

    :goto_3
    or-int/lit8 v5, v5, 0x30

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v6, p2

    move/from16 v8, p2

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    .line 124
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 125
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "windowBackgroundWhiteGrayIcon"

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 126
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/4 v15, -0x2

    const/16 v16, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    goto :goto_4

    :cond_4
    const/4 v4, 0x3

    :goto_4
    or-int/lit8 v17, v4, 0x10

    const/16 v18, 0x15

    const/16 v19, 0x0

    const/16 v20, 0x15

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    .line 130
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 133
    iget-object v8, v0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    const/4 v12, 0x3

    :cond_5
    or-int/lit8 v3, v12, 0x10

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v4, p2

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/16 v0, 0x15

    .line 94
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 327
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoading:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_8

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    .line 330
    iget-object v5, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v6, "dialogSearchBackground"

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->incrementLoadingProgress:Z

    const v5, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_2

    .line 334
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 336
    iput v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    .line 337
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->incrementLoadingProgress:Z

    goto :goto_0

    .line 340
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    sub-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 342
    iput v4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    .line 343
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->incrementLoadingProgress:Z

    .line 347
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->changeProgressStartDelay:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0xf

    .line 348
    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->changeProgressStartDelay:I

    goto :goto_1

    .line 349
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoading:Z

    const v5, 0x3dda740e

    if-eqz v0, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v7, v6, v3

    if-eqz v7, :cond_5

    add-float/2addr v6, v5

    .line 350
    iput v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v0, v6, v3

    if-lez v0, :cond_6

    .line 352
    iput v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 354
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_6

    sub-float/2addr v0, v5

    .line 355
    iput v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 357
    iput v4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    :cond_6
    :goto_1
    const v0, 0x3f19999a    # 0.6f

    const v5, 0x3ecccccd    # 0.4f

    .line 361
    iget v6, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingProgress:F

    mul-float v6, v6, v5

    add-float/2addr v6, v0

    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    mul-float v6, v6, v0

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 363
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    shr-int/2addr v0, v2

    .line 364
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingSize:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v0, v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v0, v10

    int-to-float v0, v0

    invoke-virtual {v5, v6, v8, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 365
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v6

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 369
    :cond_7
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 372
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    sub-float/2addr v3, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 373
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 375
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    if-eqz v0, :cond_c

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x47

    goto :goto_2

    :cond_9
    const/16 v0, 0x14

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 377
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_a

    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    int-to-float v4, v0

    move v6, v4

    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_b

    move v1, v0

    :cond_b
    sub-int/2addr v3, v1

    int-to-float v8, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v9, v0

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValueBackupImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 9

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x18

    const/16 v3, 0x18

    .line 404
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    or-int/lit8 v4, v1, 0x10

    iget v7, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v7

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getValueImageView()Landroid/widget/ImageView;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 411
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 384
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 181
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 182
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->measureDelay:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x43160000    # 150.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->changeProgressStartDelay:I

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 142
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x32

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0x22

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 145
    div-int/lit8 p2, p1, 0x2

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageViewIsColorful:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x1c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 158
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 161
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/view/View;->measure(II)V

    .line 163
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 165
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    .line 166
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 167
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    .line 168
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 170
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 176
    :cond_5
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public setCanDisable(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    return-void
.end method

.method public setDrawLoading(ZIZ)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoading:Z

    .line 391
    iput p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->loadingSize:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 394
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->measureDelay:Z

    .line 398
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 315
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_3
    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 320
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->canDisable:Z

    if-nez p1, :cond_6

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_4

    .line 295
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v4, v3, [F

    if-eqz p1, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f000000    # 0.5f

    :goto_0
    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v5, "alpha"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 297
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-array v4, v3, [F

    if-eqz p1, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_1
    aput v7, v4, v6

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 300
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    new-array v3, v3, [F

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_2
    aput v0, v3, v6

    invoke-static {v2, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 303
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 304
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    .line 305
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p1, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 307
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    .line 308
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_9
    :goto_6
    return-void
.end method

.method public setIcon(I)V
    .locals 5

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 248
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageViewIsColorful:Z

    if-nez p1, :cond_1

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    .line 252
    iget p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 254
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 257
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v4, "windowBackgroundWhiteGrayIcon"

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x47

    if-eqz p1, :cond_2

    .line 262
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 264
    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 59
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 223
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :goto_0
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 229
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextValueColor(I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateRTL()V
    .locals 11

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    or-int/lit8 v6, v1, 0x30

    iget v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v9

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    const/4 v1, 0x5

    :goto_2
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, -0x2

    const/4 v5, -0x1

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :cond_3
    const/4 v1, 0x5

    :goto_3
    or-int/lit8 v6, v1, 0x30

    iget v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v9

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->imageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_4

    :cond_4
    const/4 v1, 0x3

    :goto_4
    or-int/lit8 v6, v1, 0x10

    const/16 v7, 0x15

    const/4 v8, 0x0

    const/16 v9, 0x15

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    :cond_5
    or-int/lit8 v6, v2, 0x10

    iget v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->padding:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v9

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
