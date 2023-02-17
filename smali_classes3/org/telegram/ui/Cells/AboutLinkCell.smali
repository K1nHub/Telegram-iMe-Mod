.class public Lorg/telegram/ui/Cells/AboutLinkCell;
.super Landroid/widget/FrameLayout;
.source "AboutLinkCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;
    }
.end annotation


# static fields
.field private static final COLLAPSED_HEIGHT:I

.field private static final MOST_SPEC:I


# instance fields
.field final SPACE:F

.field private backgroundPaint:Landroid/graphics/Paint;

.field private bottomShadow:Landroid/widget/FrameLayout;

.field private collapseAnimator:Landroid/animation/ValueAnimator;

.field private container:Landroid/widget/FrameLayout;

.field private currentLoading:Lorg/telegram/ui/Components/LoadingDrawable;

.field private currentProgress:Lorg/telegram/messenger/browser/Browser$Progress;

.field private expandT:F

.field private expanded:Z

.field private firstThreeLinesLayout:Landroid/text/StaticLayout;

.field private lastInlineLine:I

.field private lastMaxWidth:I

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field longPressedRunnable:Ljava/lang/Runnable;

.field private moreButtonDisabled:Z

.field private needSpace:Z

.field private nextLinesLayouts:[Landroid/text/StaticLayout;

.field private nextLinesLayoutsPositions:[Landroid/graphics/Point;

.field private oldText:Ljava/lang/String;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private pressedLinkLayout:Landroid/text/Layout;

.field private pressedLinkYOffset:F

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rippleBackground:Landroid/graphics/drawable/Drawable;

.field private shouldExpand:Z

.field private showMoreBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private showMoreTextBackgroundView:Landroid/widget/FrameLayout;

.field private showMoreTextView:Landroid/widget/TextView;

.field private stringBuilder:Landroid/text/SpannableStringBuilder;

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$YZA2MnTnfjHW6ZzRyYalmkW7cfo(Lorg/telegram/ui/Cells/AboutLinkCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k16mu5bdqIdpl9JW9F_hpHICYBI(Lorg/telegram/ui/Cells/AboutLinkCell;Ljava/util/concurrent/atomic/AtomicReference;FFLorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Cells/AboutLinkCell;->lambda$updateCollapse$1(Ljava/util/concurrent/atomic/AtomicReference;FFLorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x4c

    .line 559
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/Cells/AboutLinkCell;->COLLAPSED_HEIGHT:I

    const v0, 0xf423f

    const/high16 v1, -0x80000000

    .line 688
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lorg/telegram/ui/Cells/AboutLinkCell;->MOST_SPEC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 130
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 106
    new-instance v3, Lorg/telegram/ui/Components/LinkPath;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    const/4 v3, 0x0

    .line 117
    iput-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    const/4 v3, -0x1

    .line 118
    iput v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastInlineLine:I

    const/4 v5, 0x0

    .line 120
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->needSpace:Z

    .line 272
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40400000    # 3.0f

    .line 303
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->SPACE:F

    .line 406
    new-instance v6, Lorg/telegram/ui/Cells/AboutLinkCell$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/AboutLinkCell$2;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->longPressedRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x0

    .line 594
    iput v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    .line 689
    iput v5, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastMaxWidth:I

    .line 787
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    .line 132
    iput-object v2, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v6, p2

    .line 133
    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 135
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    const/4 v7, 0x2

    .line 136
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 137
    new-instance v6, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v8, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-direct {v6, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const-string v6, "listSelectorSDK21"

    .line 138
    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-static {v6, v5, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->rippleBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    .line 141
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 145
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 146
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 147
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    :goto_0
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 149
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 150
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/4 v12, -0x2

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x3

    :goto_1
    or-int/lit8 v13, v9, 0x50

    const/16 v14, 0x17

    const/4 v15, 0x0

    const/16 v16, 0x17

    const/16 v17, 0xa

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$drawable;->gradient_bottom:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 154
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    const-string v9, "windowBackgroundWhite"

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 155
    iget-object v8, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    const/4 v11, -0x1

    const/16 v12, 0xc

    const/16 v13, 0x57

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v6, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    const/16 v8, 0x37

    invoke-static {v3, v3, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v3, Lorg/telegram/ui/Cells/AboutLinkCell$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell$1;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    const-string v6, "windowBackgroundWhiteBlueText"

    .line 185
    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 188
    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 189
    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 190
    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->DescriptionMore:I

    const-string v8, "DescriptionMore"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Cells/AboutLinkCell$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/AboutLinkCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->gradient_left:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v1, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    .line 200
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 201
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 203
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 199
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 205
    iget-object v1, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v1, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x55

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v4

    const/high16 v4, 0x41b00000    # 22.0f

    sub-float v13, v4, v3

    const/4 v14, 0x0

    iget-object v3, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v6

    sub-float v15, v4, v3

    const/high16 v16, 0x40c00000    # 6.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/AboutLinkCell;Lorg/telegram/ui/Components/LinkSpanDrawable;)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/AboutLinkCell;)Landroid/text/Layout;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLinkLayout:Landroid/text/Layout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Cells/AboutLinkCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->rippleBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Cells/AboutLinkCell;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expanded:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/AboutLinkCell;)F
    .locals 0

    .line 66
    iget p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLinkYOffset:F

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/AboutLinkCell;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/AboutLinkCell;Landroid/text/style/ClickableSpan;Landroid/text/Layout;F)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/AboutLinkCell;->onLinkClick(Landroid/text/style/ClickableSpan;Landroid/text/Layout;F)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Cells/AboutLinkCell;Lorg/telegram/ui/Components/LoadingDrawable;)Lorg/telegram/ui/Components/LoadingDrawable;
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentLoading:Lorg/telegram/ui/Components/LoadingDrawable;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Cells/AboutLinkCell;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Cells/AboutLinkCell;)Landroid/widget/FrameLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private checkTextLayout(IZ)V
    .locals 10

    .line 715
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->moreButtonDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 716
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    iget v4, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastMaxWidth:I

    if-ne p1, v4, :cond_1

    if-eqz p2, :cond_c

    .line 719
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->makeTextLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    .line 720
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v0, 0x4

    const/4 v4, 0x1

    if-lt p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    .line 722
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-eqz p2, :cond_9

    .line 723
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p2

    iget-object v6, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v5}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 724
    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 726
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v8, 0x20

    if-eq v5, v8, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->needSpace:Z

    .line 727
    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v1, p2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->makeTextLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    .line 728
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    sub-int/2addr p2, v0

    new-array p2, p2, [Landroid/text/StaticLayout;

    iput-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    .line 729
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    sub-int/2addr p2, v0

    new-array p2, p2, [Landroid/graphics/Point;

    iput-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayoutsPositions:[Landroid/graphics/Point;

    .line 730
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    sub-int/2addr p2, v4

    .line 731
    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, p2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result p2

    iget-boolean v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->needSpace:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->SPACE:F

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    add-float/2addr p2, v5

    const/4 v5, -0x1

    .line 732
    iput v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastInlineLine:I

    .line 733
    iget-object v6, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    if-gtz v6, :cond_6

    .line 734
    iget-object v6, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    sget v7, Lorg/telegram/ui/Cells/AboutLinkCell;->MOST_SPEC:I

    invoke-virtual {v6, v7, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 736
    :cond_6
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 737
    iget-object v6, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    .line 738
    iget-object v7, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    .line 739
    iget-object v8, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v8, v9, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->makeTextLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v6

    .line 740
    iget-object v7, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    add-int/lit8 v8, v0, -0x3

    aput-object v6, v7, v8

    .line 741
    iget-object v7, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayoutsPositions:[Landroid/graphics/Point;

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    aput-object v9, v7, v8

    .line 742
    iget v7, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastInlineLine:I

    if-ne v7, v5, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int v7, p1, v7

    iget-object v9, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_7

    .line 743
    iput v8, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastInlineLine:I

    .line 745
    :cond_7
    invoke-virtual {v6, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->SPACE:F

    add-float/2addr v6, v7

    add-float/2addr p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 747
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_9

    .line 748
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    .line 752
    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-nez p2, :cond_a

    .line 753
    iput-object v3, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    .line 754
    iput-object v3, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    .line 756
    :cond_a
    iput p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastMaxWidth:I

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->textHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 760
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_c

    .line 762
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->fromHeight()I

    move-result p1

    .line 763
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    .line 764
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p2, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    .line 765
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    .line 766
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    .line 767
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-nez p2, :cond_b

    const/4 p2, 0x0

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    sub-int/2addr p2, v0

    :goto_4
    sub-int/2addr p1, p2

    .line 761
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->setShowMoreMarginBottom(I)V

    .line 771
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_d
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_e

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 775
    :cond_e
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-eqz p1, :cond_f

    iget p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method private checkTouchTextLayout(Landroid/text/StaticLayout;IIII)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 5

    sub-int p2, p4, p2

    sub-int v0, p5, p3

    .line 484
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v1

    int-to-float p2, p2

    .line 485
    invoke-virtual {p1, v1, p2}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 487
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    cmpg-float v4, v3, p2

    if-gtz v4, :cond_0

    .line 488
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v3, v1

    cmpl-float p2, v3, p2

    if-ltz p2, :cond_0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    if-gt v0, p2, :cond_0

    .line 489
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Landroid/text/Spannable;

    .line 490
    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 491
    array-length v1, v0

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v1, v3, v4, p4, p5}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    .line 493
    aget-object p4, v0, v2

    invoke-interface {p2, p4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p4

    .line 494
    aget-object p5, v0, v2

    invoke-interface {p2, p5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    .line 495
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object p5

    int-to-float p3, p3

    .line 496
    iput p3, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLinkYOffset:F

    invoke-virtual {p5, p1, p4, p3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 497
    invoke-virtual {p1, p4, p2, p5}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 502
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v0, 0xf

    .line 306
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    const/16 v5, 0x17

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {v9, v0, v3, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 307
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->textX:I

    int-to-float v0, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    iget-object v0, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 311
    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->textY:I

    int-to-float v0, v0

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    const-string v2, "chat_messageLinkIn"

    iget-object v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Landroid/text/TextPaint;->linkColor:I

    .line 315
    iget-object v0, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6

    iget-boolean v2, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 320
    :cond_1
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 321
    iget-object v0, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 322
    iget-object v2, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v11, v2

    .line 323
    iget-object v2, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    iget-boolean v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->needSpace:Z

    if-eqz v3, :cond_2

    iget v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->SPACE:F

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-float/2addr v2, v3

    .line 324
    iget-object v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    .line 325
    iget v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v3, v12, v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Cells/AboutLinkCell;->easeInOutCubic(F)F

    move-result v13

    .line 326
    iget-object v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    if-eqz v3, :cond_7

    move v15, v2

    const/4 v8, 0x0

    .line 327
    :goto_1
    iget-object v2, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    array-length v3, v2

    if-ge v8, v3, :cond_7

    .line 328
    aget-object v7, v2, v8

    if-eqz v7, :cond_5

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 331
    iget-object v2, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayoutsPositions:[Landroid/graphics/Point;

    aget-object v3, v2, v8

    if-eqz v3, :cond_3

    .line 332
    aget-object v2, v2, v8

    iget v3, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->textX:I

    int-to-float v3, v3

    mul-float v4, v15, v13

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->textY:I

    int-to-float v4, v4

    add-float/2addr v4, v11

    sub-float v5, v12, v13

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 334
    :cond_3
    iget v2, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->lastInlineLine:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-gt v2, v8, :cond_4

    add-float v2, v11, v0

    .line 335
    invoke-virtual {v9, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 336
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v16, 0x437f0000    # 255.0f

    iget v10, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    mul-float v10, v10, v16

    float-to-int v10, v10

    const/16 v16, 0x1f

    move/from16 v17, v2

    move-object/from16 v2, p1

    move v14, v6

    move/from16 v6, v17

    move-object/from16 v18, v7

    move v7, v10

    move v10, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    :cond_4
    move v14, v6

    move-object/from16 v18, v7

    move v10, v8

    mul-float v2, v15, v13

    sub-float v3, v12, v13

    mul-float v3, v3, v0

    add-float/2addr v3, v11

    .line 338
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    move-object/from16 v2, v18

    .line 340
    invoke-virtual {v2, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 341
    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v3, 0x0

    .line 342
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v4

    iget v5, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->SPACE:F

    add-float/2addr v4, v5

    add-float/2addr v15, v4

    .line 343
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v2

    add-int/2addr v4, v2

    int-to-float v2, v4

    add-float/2addr v0, v2

    goto :goto_3

    :cond_5
    move v10, v8

    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v8, v10, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 316
    :cond_6
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    .line 317
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 349
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 351
    :cond_7
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private easeInOutCubic(F)F
    .locals 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40000000    # -2.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr p1, v1

    float-to-double v2, p1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 800
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    :goto_0
    return v0
.end method

.method private fromHeight()I
    .locals 2

    .line 661
    sget v0, Lorg/telegram/ui/Cells/AboutLinkCell;->COLLAPSED_HEIGHT:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->textHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private hitLink(II)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 10

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    .line 455
    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    if-gt p2, v0, :cond_0

    return-object v1

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x17

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    return-object v1

    .line 462
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->firstThreeLinesLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_4

    iget v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-eqz v0, :cond_4

    .line 463
    iget v4, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textY:I

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/AboutLinkCell;->checkTouchTextLayout(Landroid/text/StaticLayout;IIII)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 466
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 467
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 468
    aget-object v5, v2, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayoutsPositions:[Landroid/graphics/Point;

    aget-object v3, v2, v0

    iget v6, v3, Landroid/graphics/Point;->x:I

    aget-object v2, v2, v0

    iget v7, v2, Landroid/graphics/Point;->y:I

    move-object v4, p0

    move v8, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Cells/AboutLinkCell;->checkTouchTextLayout(Landroid/text/StaticLayout;IIII)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textY:I

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Cells/AboutLinkCell;->checkTouchTextLayout(Landroid/text/StaticLayout;IIII)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    return-object v1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->updateCollapse(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateCollapse$1(Ljava/util/concurrent/atomic/AtomicReference;FFLorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 623
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 624
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    const/high16 p1, 0x41000000    # 8.0f

    mul-float v0, v0, p1

    .line 626
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p2, p3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    .line 627
    invoke-virtual {p4, v0}, Lorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;->getValue(F)F

    move-result p1

    invoke-static {p2, p3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    const p2, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 631
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    iget p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float p2, p3, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 632
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    iget p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    sub-float/2addr p3, p2

    float-to-double p2, p3

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 634
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->updateHeight()I

    .line 635
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private makeTextLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 9

    const/4 v0, 0x0

    .line 702
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 703
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_1

    .line 704
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0, p2, v1, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 705
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 706
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 707
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_LEFT()Landroid/text/Layout$Alignment;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    .line 710
    :cond_1
    new-instance p2, Landroid/text/StaticLayout;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p2
.end method

.method private onLinkClick(Landroid/text/style/ClickableSpan;Landroid/text/Layout;F)V
    .locals 7

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel()V

    .line 510
    iput-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 512
    new-instance v1, Lorg/telegram/ui/Cells/AboutLinkCell$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/telegram/ui/Cells/AboutLinkCell$3;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell;Landroid/text/Layout;Landroid/text/style/ClickableSpan;F)V

    .line 539
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    .line 540
    instance-of p2, p1, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz p2, :cond_3

    .line 541
    check-cast p1, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string p2, "@"

    .line 542
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 543
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Cells/AboutLinkCell;->didPressUrl(Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    goto :goto_0

    .line 546
    :cond_3
    instance-of p2, p1, Landroid/text/style/URLSpan;

    if-eqz p2, :cond_5

    .line 547
    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowUrlInAlert(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZZLorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 551
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->currentProgress:Lorg/telegram/messenger/browser/Browser$Progress;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, v0, p3}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZLorg/telegram/messenger/browser/Browser$Progress;)V

    goto :goto_0

    .line 554
    :cond_5
    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private resetPressedLink()V
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->longPressedRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setHeight(I)V
    .locals 3

    .line 671
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 676
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMinimumHeight()I

    .line 677
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 679
    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 681
    :goto_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    if-eqz v1, :cond_3

    .line 684
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private setShowMoreMarginBottom(I)V
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_0

    .line 262
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private textHeight()I
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_0
    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 782
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x17

    .line 783
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private updateHeight()I
    .locals 3

    .line 664
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->textHeight()I

    move-result v0

    .line 665
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->fromHeight()I

    move-result v1

    int-to-float v1, v1

    .line 666
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-eqz v2, :cond_0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 667
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setHeight(I)V

    return v0
.end method


# virtual methods
.method protected didExtend()V
    .locals 0

    return-void
.end method

.method protected didPressUrl(Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    return-void
.end method

.method protected didResizeEnd()V
    .locals 0

    return-void
.end method

.method protected didResizeStart()V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 278
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/AboutLinkCell;->drawText(Landroid/graphics/Canvas;)V

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 283
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v8, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v9, v4

    mul-float v1, v1, v3

    float-to-int v10, v1

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v8, v1

    mul-float v0, v0, v3

    float-to-int v9, v0

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 298
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 300
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onClick()Z
    .locals 2

    .line 793
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->shouldExpand:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 794
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->updateCollapse(ZZ)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 805
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    .line 808
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.widget.TextView"

    .line 809
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 810
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 813
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 693
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->checkTextLayout(IZ)V

    .line 694
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->updateHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 697
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 695
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    .line 218
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    .line 219
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextBackgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    if-gt v1, v2, :cond_0

    return v3

    .line 226
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->nextLinesLayouts:[Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 253
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    goto :goto_3

    .line 228
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 229
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    .line 230
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->hitLink(II)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    iput-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLinkLayout:Landroid/text/Layout;

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->longPressedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 237
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_6

    .line 239
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-nez v0, :cond_5

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->longPressedRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v4

    .line 245
    :cond_5
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLinkYOffset:F

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/AboutLinkCell;->onLinkClick(Landroid/text/style/ClickableSpan;Landroid/text/Layout;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 247
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 249
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_7

    .line 256
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v3, 0x1

    :cond_8
    return v3
.end method

.method public setMoreButtonDisabled(Z)V
    .locals 0

    .line 819
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->moreButtonDisabled:Z

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 381
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 383
    :catchall_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;

    .line 385
    :goto_0
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    const/4 v1, 0x0

    .line 386
    invoke-static {v1, p1, v1, v1, p3}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;ZZZ)V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p1, p3, v2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 388
    iget p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastMaxWidth:I

    if-gtz p1, :cond_1

    .line 389
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/16 p3, 0x2e

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastMaxWidth:I

    .line 391
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastMaxWidth:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->checkTextLayout(IZ)V

    .line 392
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->updateHeight()I

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    .line 394
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 395
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 397
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 401
    iget p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->lastMaxWidth:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->checkTextLayout(IZ)V

    .line 403
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateCollapse(ZZ)V
    .locals 7

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->collapseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->collapseAnimator:Landroid/animation/ValueAnimator;

    .line 604
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz p2, :cond_3

    cmpl-float p1, v5, v0

    if-lez p1, :cond_2

    .line 608
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->didExtend()V

    .line 611
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->textHeight()I

    move-result p1

    int-to-float p1, p1

    .line 612
    sget p2, Lorg/telegram/ui/Cells/AboutLinkCell;->COLLAPSED_HEIGHT:I

    int-to-float p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 613
    invoke-static {p2, p1, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 614
    invoke-static {p2, p1, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    sub-float/2addr p1, v0

    .line 615
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 618
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->collapseAnimator:Landroid/animation/ValueAnimator;

    sub-float p1, v4, v5

    .line 619
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x449c4000    # 1250.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    .line 620
    new-instance v6, Lorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;

    const/high16 p2, 0x43be0000    # 380.0f

    const v0, 0x41a15c29    # 20.17f

    invoke-direct {v6, p0, p2, v0}, Lorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell;FF)V

    .line 621
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 622
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->collapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/AboutLinkCell$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/AboutLinkCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell;Ljava/util/concurrent/atomic/AtomicReference;FFLorg/telegram/ui/Cells/AboutLinkCell$SpringInterpolator;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 637
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->collapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/AboutLinkCell$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/AboutLinkCell$4;-><init>(Lorg/telegram/ui/Cells/AboutLinkCell;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 652
    iget-object p2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->collapseAnimator:Landroid/animation/ValueAnimator;

    float-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 653
    iget-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->collapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 655
    :cond_3
    iput v5, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->expandT:F

    .line 656
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->forceLayout()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateColors()V
    .locals 5

    const-string v0, "listSelectorSDK21"

    .line 77
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->rippleBackground:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->valueTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->bottomShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->showMoreBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
