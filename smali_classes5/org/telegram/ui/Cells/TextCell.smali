.class public Lorg/telegram/ui/Cells/TextCell;
.super Landroid/widget/FrameLayout;
.source "TextCell.java"


# instance fields
.field private changeProgressStartDelay:I

.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private drawLoading:Z

.field private drawLoadingProgress:F

.field public heightDp:I

.field public imageLeft:I

.field public final imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private inDialogs:Z

.field private incrementLoadingProgress:Z

.field private leftPadding:I

.field private loadingProgress:F

.field private loadingSize:I

.field private needDivider:Z

.field private needFullDivider:Z

.field private offsetFromImage:I

.field paint:Landroid/graphics/Paint;

.field private prioritizeTitleOverValue:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueImageView:Landroid/widget/ImageView;

.field public final valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public final valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 121
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 82
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 125
    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v3, 0x47

    .line 98
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v3, 0x30

    .line 99
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    const/16 v3, 0x15

    .line 100
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 127
    iput-object v2, v0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v3, p2

    .line 128
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    .line 130
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_0

    const-string v4, "dialogTextBlack"

    goto :goto_0

    :cond_0
    const-string v4, "windowBackgroundWhiteBlackText"

    .line 131
    :goto_0
    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v4, 0x10

    .line 132
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 133
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/4 v5, 0x2

    .line 134
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v8, -0x2

    const/4 v9, -0x1

    .line 135
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_2

    const-string v10, "dialogTextGray"

    goto :goto_2

    :cond_2
    const-string v10, "windowBackgroundWhiteGrayText"

    .line 138
    :goto_2
    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v10, 0xd

    .line 139
    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 140
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x5

    goto :goto_3

    :cond_3
    const/4 v10, 0x3

    :goto_3
    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 141
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 142
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v3, v1, v9, v9, v10}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v11, "dialogTextBlue2"

    const-string v12, "windowBackgroundWhiteValueText"

    if-eqz p3, :cond_4

    move-object v13, v11

    goto :goto_4

    :cond_4
    move-object v13, v12

    .line 145
    :goto_4
    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/16 v13, 0x12

    .line 146
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v3, v9, v14, v9, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 148
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x3

    goto :goto_5

    :cond_5
    const/4 v9, 0x5

    :goto_5
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 149
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 150
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 154
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v13, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ILjava/lang/Boolean;)V

    if-eqz p3, :cond_6

    goto :goto_6

    :cond_6
    move-object v11, v12

    .line 155
    :goto_6
    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 156
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x3

    goto :goto_7

    :cond_7
    const/4 v8, 0x5

    :goto_7
    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 157
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 158
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/16 v5, 0x8

    .line 159
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 163
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p3, :cond_8

    const-string v8, "dialogIcon"

    goto :goto_8

    :cond_8
    const-string v8, "windowBackgroundWhiteGrayIcon"

    :goto_8
    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 165
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 167
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    .line 168
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p4, :cond_a

    .line 172
    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const-string v1, "switchTrack"

    const-string v2, "switchTrackChecked"

    const-string v5, "windowBackgroundWhite"

    .line 173
    invoke-virtual {v3, v1, v2, v5, v5}, Lorg/telegram/ui/Components/Switch;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v11, 0x25

    const/16 v12, 0x14

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    const/4 v6, 0x3

    :cond_9
    or-int/lit8 v13, v6, 0x10

    const/16 v14, 0x16

    const/4 v15, 0x0

    const/16 v16, 0x16

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_a
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 113
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 117
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 635
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 636
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 637
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    .line 638
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v5, "dialogSearchBackground"

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    const v4, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_2

    .line 642
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 644
    iput v2, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    goto :goto_0

    .line 648
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 650
    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    .line 651
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    .line 655
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->changeProgressStartDelay:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0xf

    .line 656
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->changeProgressStartDelay:I

    goto :goto_1

    .line 657
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    const v4, 0x3dda740e

    if-eqz v0, :cond_5

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_5

    add-float/2addr v5, v4

    .line 658
    iput v5, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v0, v5, v2

    if-lez v0, :cond_6

    .line 660
    iput v2, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 662
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v5, v0, v1

    if-eqz v5, :cond_6

    sub-float/2addr v0, v4

    .line 663
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 665
    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    :cond_6
    :goto_1
    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3ecccccd    # 0.4f

    .line 669
    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    mul-float v4, v4, v1

    add-float/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    mul-float v4, v4, v0

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v4, v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 671
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    shr-int/2addr v0, v3

    .line 672
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 673
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/16 v4, 0x15

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->loadingSize:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x3

    .line 674
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    .line 675
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    .line 676
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v0, v0

    .line 672
    invoke-virtual {v1, v3, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 678
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    .line 679
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 680
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 682
    :cond_7
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 683
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 685
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 687
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/Switch;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getValueImageView()Landroid/widget/ImageView;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 607
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 613
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 536
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    if-eqz v0, :cond_7

    .line 537
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needFullDivider:Z

    const/16 v1, 0x48

    const/16 v2, 0x44

    const/16 v3, 0x14

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x48

    goto :goto_0

    :cond_1
    const/16 v0, 0x44

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x44

    goto :goto_3

    :cond_5
    const/16 v1, 0x14

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    sub-int/2addr v0, v1

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v8, v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 543
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 547
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/16 v0, 0x10

    .line 553
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p1, p5, p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    .line 259
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 260
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1

    .line 261
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 264
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_2

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 265
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 267
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_4

    .line 268
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_3

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    goto :goto_2

    :cond_3
    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    :goto_2
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_4

    .line 270
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    goto :goto_3

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 272
    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_6

    .line 273
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p3

    sub-int p3, p5, p3

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    div-int/2addr p3, p2

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v0

    add-int/2addr p3, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p3, v0

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 278
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p3

    sub-int p3, p5, p3

    div-int/2addr p3, p2

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 281
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x5

    .line 282
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 283
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p3, :cond_7

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_6

    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 284
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 287
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    sub-int p1, p5, p1

    div-int/2addr p1, p2

    .line 289
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0x17

    if-eqz p3, :cond_9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_7

    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 290
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 292
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/2addr p5, p2

    .line 294
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p2, 0x16

    if-eqz p1, :cond_b

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_8

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int p1, p4, p1

    .line 295
    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p4, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2, p1, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 218
    iget p2, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 221
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    const/16 v1, 0x14

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v4, v4, 0x47

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v4, v4, 0x47

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v4, v4, 0x67

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_0

    const/high16 v5, -0x80000000

    goto :goto_0

    :cond_0
    const/high16 v5, 0x40000000    # 2.0f

    :goto_0
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v4, v4, 0x67

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    const/high16 v5, -0x80000000

    goto :goto_1

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    :goto_1
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 227
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    const/high16 v5, -0x80000000

    goto :goto_2

    :cond_3
    const/high16 v5, 0x40000000    # 2.0f

    :goto_2
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, p1, v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const/high16 v5, -0x80000000

    goto :goto_3

    :cond_4
    const/high16 v5, 0x40000000    # 2.0f

    :goto_3
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->width()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 230
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v5, v5, 0x47

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 231
    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v5, v5, 0x47

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v0

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 233
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 236
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v4, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 239
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p2, :cond_7

    const/16 v0, 0x25

    .line 240
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_7
    const/16 p2, 0x32

    .line 242
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setColorfulIcon(II)V
    .locals 6

    const/16 v0, 0x41

    .line 455
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 461
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 462
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 307
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 308
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDrawLoading(ZIZ)V
    .locals 0

    .line 618
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    .line 619
    iput p2, p0, Lorg/telegram/ui/Cells/TextCell;->loadingSize:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 622
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    .line 626
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 247
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setFullDivider(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needFullDivider:Z

    return-void
.end method

.method public setImageLeft(I)V
    .locals 0

    .line 375
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    return-void
.end method

.method public setIsInDialogs()V
    .locals 1

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 1

    .line 557
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    if-eq v0, p1, :cond_0

    .line 558
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 559
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 560
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOffsetFromImage(I)V
    .locals 0

    .line 371
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    return-void
.end method

.method public setPrioritizeTitleOverValue(Z)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    if-eq v0, p1, :cond_0

    .line 210
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    .line 211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 695
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0x15

    .line 313
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 321
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndCheck(Ljava/lang/CharSequence;ZZ)V
    .locals 1

    const/16 v0, 0x15

    .line 466
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 467
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 476
    :cond_0
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 477
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V
    .locals 1

    const/16 v0, 0x15

    .line 481
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 482
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 491
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x7

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 494
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 495
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndColorfulIcon(Ljava/lang/String;IIZ)V
    .locals 2

    const/16 v0, 0x15

    .line 340
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 341
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 344
    invoke-virtual {p0, p3, p2}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(II)V

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 348
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/String;IZ)V
    .locals 2

    const/16 v0, 0x15

    .line 325
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 326
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x7

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 335
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 336
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const/16 v0, 0x44

    .line 352
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v0, 0x12

    .line 353
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 356
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 357
    instance-of p1, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 366
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 367
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndSpoilersValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)V
    .locals 1

    const/16 v0, 0x15

    .line 415
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 416
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 418
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 421
    invoke-virtual {p0, p4, p3}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(II)V

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p5, 0x1

    .line 424
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const/16 v0, 0x15

    .line 383
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 384
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 392
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V
    .locals 1

    const/16 v0, 0x15

    .line 399
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 400
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {p0, p5, p4}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(II)V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p6, 0x1

    .line 408
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 431
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 1

    const/16 v0, 0x15

    .line 435
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 436
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 445
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, p2, v0, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 447
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p5, 0x1

    .line 448
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 449
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const/16 v0, 0x15

    .line 517
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/16 v0, 0x47

    .line 518
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 520
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 527
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 528
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public showDivider(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method
