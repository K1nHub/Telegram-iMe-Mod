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

.field private lastWidth:I

.field private leftPadding:I

.field private loadingProgress:F

.field private loadingSize:I

.field private needDivider:Z

.field private needFullDivider:Z

.field public offsetFromImage:I

.field paint:Landroid/graphics/Paint;

.field private prioritizeTitleOverValue:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field public final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueImageView:Landroid/widget/ImageView;

.field public final valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueText:Ljava/lang/CharSequence;

.field public final valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 88
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

    .line 133
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

    .line 93
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 137
    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v3, 0x47

    .line 109
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v3, 0x32

    .line 110
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    const/16 v3, 0x15

    .line 111
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 139
    iput-object v2, v0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v3, p2

    .line 140
    iput v3, v0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    .line 142
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_0

    .line 143
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_0
    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v4, 0x10

    .line 144
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 145
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    const/4 v5, 0x2

    .line 146
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v8, -0x2

    const/4 v9, -0x1

    .line 147
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_2

    .line 150
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray:I

    goto :goto_2

    :cond_2
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    :goto_2
    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v10, 0xd

    .line 151
    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 152
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_3

    :cond_3
    move v10, v7

    :goto_3
    invoke-virtual {v3, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 153
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 154
    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v3, v1, v9, v9, v10}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p3, :cond_4

    .line 157
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    goto :goto_4

    :cond_4
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    :goto_4
    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/16 v11, 0x12

    .line 158
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v3, v9, v12, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 160
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    move v9, v6

    :goto_5
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 161
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 162
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 166
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ILjava/lang/Boolean;)V

    if-eqz p3, :cond_6

    .line 167
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    goto :goto_6

    :cond_6
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    :goto_6
    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 168
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_7

    move v8, v7

    goto :goto_7

    :cond_7
    move v8, v6

    :goto_7
    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 169
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 170
    invoke-virtual {v3, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/16 v5, 0x8

    .line 171
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 175
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p3, :cond_8

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    goto :goto_8

    :cond_8
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    :goto_8
    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 177
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 179
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    .line 180
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p4, :cond_a

    .line 184
    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 185
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v1, v2, v5, v5}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 186
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v11, 0x25

    const/16 v12, 0x14

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    move v6, v7

    :cond_9
    or-int/lit8 v13, v6, 0x10

    const/16 v14, 0x16

    const/4 v15, 0x0

    const/16 v16, 0x16

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
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

    .line 125
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

    .line 129
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 524
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p0, "  d"

    .line 525
    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 526
    new-instance p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(F)V

    .line 527
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    .line 528
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 737
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 738
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 739
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    .line 740
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 743
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    const v4, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_2

    .line 744
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 746
    iput v2, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    const/4 v0, 0x0

    .line 747
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    goto :goto_0

    .line 750
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 752
    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    .line 753
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/TextCell;->incrementLoadingProgress:Z

    .line 757
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->changeProgressStartDelay:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0xf

    .line 758
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->changeProgressStartDelay:I

    goto :goto_1

    .line 759
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    const v4, 0x3dda740e

    if-eqz v0, :cond_5

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_5

    add-float/2addr v5, v4

    .line 760
    iput v5, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v0, v5, v2

    if-lez v0, :cond_6

    .line 762
    iput v2, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 764
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpl-float v5, v0, v1

    if-eqz v5, :cond_6

    sub-float/2addr v0, v4

    .line 765
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 767
    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    :cond_6
    :goto_1
    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3ecccccd    # 0.4f

    .line 771
    iget v4, p0, Lorg/telegram/ui/Cells/TextCell;->loadingProgress:F

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    mul-float/2addr v4, v0

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 773
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    shr-int/2addr v0, v3

    .line 774
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 775
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

    .line 776
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    .line 777
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    .line 778
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v0, v0

    .line 774
    invoke-virtual {v1, v3, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 780
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    .line 781
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 782
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 784
    :cond_7
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 785
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 787
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 789
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/Switch;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method public getImageView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method protected getOffsetFromImage(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x41

    goto :goto_0

    :cond_0
    const/16 p1, 0x47

    :goto_0
    return p1
.end method

.method public getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getValueImageView()Landroid/widget/ImageView;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 193
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

    .line 709
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 715
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 620
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    if-eqz v0, :cond_9

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    const-string v1, "paintDivider"

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 623
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_1
    move-object v6, v0

    .line 625
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needFullDivider:Z

    const/16 v1, 0x48

    const/16 v2, 0x44

    const/16 v3, 0x14

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    sub-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v7, v1

    move-object v1, p1

    move v2, v0

    move v3, v4

    move v4, v5

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 631
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 633
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 634
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 635
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, ": "

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 636
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 639
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v1, :cond_2

    const-string v0, "android.widget.Switch"

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 641
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 649
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 651
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 652
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const/16 v0, 0x10

    .line 655
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 275
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

    .line 276
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 277
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1

    .line 278
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 280
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

    .line 281
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

    .line 282
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

    .line 284
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_4

    .line 285
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

    .line 287
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

    .line 289
    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x32

    if-nez p3, :cond_7

    .line 290
    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    if-le p3, v0, :cond_6

    const/4 p3, 0x4

    goto :goto_5

    :cond_6
    move p3, p2

    .line 291
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    sub-int v1, p5, v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, p2

    .line 292
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 293
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr v1, p3

    .line 294
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p3, p1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 296
    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p3

    sub-int p3, p5, p3

    div-int/2addr p3, p2

    .line 297
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 299
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 300
    iget p1, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    if-le p1, v0, :cond_8

    const/4 p1, 0x0

    goto :goto_7

    :cond_8
    move p1, p2

    :goto_7
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p5, p3

    div-int/2addr p3, p2

    add-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    .line 301
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p3, :cond_9

    iget p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_8

    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 302
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 305
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    sub-int p1, p5, p1

    div-int/2addr p1, p2

    .line 307
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0x17

    if-eqz p3, :cond_b

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    goto :goto_9

    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p3, v0

    .line 308
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 310
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/2addr p5, p2

    .line 312
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p2, 0x16

    if-eqz p1, :cond_d

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_a

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int p1, p4, p1

    .line 313
    :goto_a
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p4, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2, p1, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 229
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 230
    iget p2, p0, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 232
    iget v0, p0, Lorg/telegram/ui/Cells/TextCell;->lastWidth:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const/high16 v5, 0x40200000    # 2.5f

    div-float/2addr v4, v5

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 235
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->lastWidth:I

    .line 238
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    const/16 v2, 0x14

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x47

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x47

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x67

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    sub-int/2addr v1, v5

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v1, v1, 0x67

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    sub-int/2addr v1, v5

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 244
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, p1, v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, p1, v5

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->width()I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 247
    iget-object v5, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v6, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v6, v6, 0x47

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, p1, v6

    sub-int/2addr v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Landroid/view/View;->measure(II)V

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    add-int/lit8 v5, v5, 0x47

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v0

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/view/View;->measure(II)V

    .line 250
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 253
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 256
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_8

    const/16 v1, 0x25

    .line 257
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 259
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected processColor(I)I
    .locals 0

    return p1
.end method

.method public setChecked(Z)V
    .locals 2

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setColorfulIcon(II)V
    .locals 6

    const/4 v0, 0x1

    .line 533
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
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

    .line 536
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

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 538
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 539
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColors(II)V
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-ltz p1, :cond_0

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 341
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDrawLoading(ZIZ)V
    .locals 0

    .line 720
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoading:Z

    .line 721
    iput p2, p0, Lorg/telegram/ui/Cells/TextCell;->loadingSize:I

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 724
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->drawLoadingProgress:F

    .line 728
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setFullDivider(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needFullDivider:Z

    return-void
.end method

.method public setImageLeft(I)V
    .locals 0

    .line 419
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    return-void
.end method

.method public setIsInDialogs()V
    .locals 1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->inDialogs:Z

    return-void
.end method

.method public setLockLevel(ZI)V
    .locals 4

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$LevelLock;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/telegram/ui/PeerColorActivity$LevelLock;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 1

    .line 659
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    if-eq v0, p1, :cond_0

    .line 660
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 661
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 662
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOffsetFromImage(I)V
    .locals 0

    .line 415
    iput p1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    return-void
.end method

.method public setPrioritizeTitleOverValue(Z)V
    .locals 1

    .line 221
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    if-eq v0, p1, :cond_0

    .line 222
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->prioritizeTitleOverValue:Z

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 793
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 797
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0x15

    .line 348
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 357
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndCheck(Ljava/lang/CharSequence;ZZ)V
    .locals 2

    const/16 v0, 0x15

    .line 543
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 546
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    .line 550
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 554
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V
    .locals 2

    const/16 v0, 0x15

    .line 558
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 559
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 560
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 569
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x7

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 572
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 573
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;IZ)V
    .locals 2

    const/16 v0, 0x15

    .line 366
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x7

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 377
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 378
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const/16 v0, 0x44

    .line 395
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    const/16 v0, 0x12

    .line 396
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 401
    instance-of p1, p2, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    check-cast p2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 410
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 411
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndSpoilersValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V
    .locals 2

    const/16 v0, 0x15

    .line 461
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 463
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 464
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 467
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 472
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 474
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 475
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    const/16 v0, 0x15

    .line 427
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 429
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 437
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 439
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V
    .locals 4

    const/16 v0, 0x15

    .line 444
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 449
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    invoke-virtual {p0, p5, p4}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(II)V

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p6, 0x1

    .line 454
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 455
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V
    .locals 4

    const/16 v0, 0x15

    .line 503
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 505
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p3, 0x7

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p1, v0, p3, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 515
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 516
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p5, 0x1

    .line 517
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 519
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

    .line 499
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    const/16 v0, 0x15

    .line 596
    iput v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->getOffsetFromImage(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 599
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->valueText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 601
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 607
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 608
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public showDivider(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 327
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 331
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->subtitleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell;->valueSpoilersTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCell;->processColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method
