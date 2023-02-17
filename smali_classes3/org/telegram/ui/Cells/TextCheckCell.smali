.class public Lorg/telegram/ui/Cells/TextCheckCell;
.super Landroid/widget/FrameLayout;
.source "TextCheckCell.java"


# static fields
.field public static final ANIMATION_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Cells/TextCheckCell;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animatedColorBackground:I

.field private animationPaint:Landroid/graphics/Paint;

.field private animationProgress:F

.field private animator:Landroid/animation/ObjectAnimator;

.field attached:Z

.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private drawCheckRipple:Z

.field private drawSwitchDivider:Z

.field private height:I

.field imageView:Landroid/widget/ImageView;

.field private isAnimatingToThumbInsteadOfTouch:Z

.field private isMultiline:Z

.field private isRTL:Z

.field private lastTouchX:F

.field private needDivider:Z

.field private padding:I

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final switchWidth:I

.field private textView:Landroid/widget/TextView;

.field private type:I

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell$1;

    const-string v1, "animationProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Cells/TextCheckCell;->ANIMATION_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x15

    .line 140
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 156
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 62
    iput v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;->type:I

    const/16 v3, 0x32

    .line 114
    iput v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    .line 157
    iput-object v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move/from16 v3, p2

    .line 159
    iput v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    .line 161
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const-string v5, "dialogTextBlack"

    goto :goto_0

    :cond_0
    const-string v5, "windowBackgroundWhiteBlackText"

    .line 162
    :goto_0
    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 165
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 166
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 167
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 169
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v9, -0x1

    const/4 v10, -0x1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    const/4 v11, 0x5

    goto :goto_2

    :cond_2
    const/4 v11, 0x3

    :goto_2
    or-int/lit8 v11, v11, 0x30

    const/16 v12, 0x46

    if-eqz v5, :cond_3

    const/16 v13, 0x46

    goto :goto_3

    :cond_3
    move v13, v3

    :goto_3
    const/4 v14, 0x0

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    const/16 v5, 0x46

    :goto_4
    const/4 v15, 0x0

    move v12, v13

    move v13, v14

    move v14, v5

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    const-string v5, "dialogIcon"

    goto :goto_5

    :cond_5
    const-string v5, "windowBackgroundWhiteGrayText2"

    .line 172
    :goto_5
    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    goto :goto_6

    :cond_6
    const/4 v5, 0x3

    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 176
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 177
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 178
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 179
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 180
    iget-object v4, v0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v9, -0x2

    const/4 v10, -0x2

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_7

    const/4 v11, 0x5

    goto :goto_7

    :cond_7
    const/4 v11, 0x3

    :goto_7
    or-int/lit8 v11, v11, 0x30

    const/16 v12, 0x40

    if-eqz v6, :cond_8

    const/16 v13, 0x40

    goto :goto_8

    :cond_8
    move v13, v3

    :goto_8
    const/16 v14, 0x24

    if-eqz v6, :cond_9

    goto :goto_9

    :cond_9
    const/16 v3, 0x40

    :goto_9
    const/4 v15, 0x0

    move v12, v13

    move v13, v14

    move v14, v3

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const-string v1, "switchTrack"

    const-string v2, "switchTrackChecked"

    const-string v4, "windowBackgroundWhite"

    .line 183
    invoke-virtual {v3, v1, v2, v4, v4}, Lorg/telegram/ui/Components/Switch;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v9, 0x25

    const/16 v10, 0x14

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    const/4 v7, 0x3

    :cond_a
    or-int/lit8 v11, v7, 0x10

    const/16 v12, 0x16

    const/4 v13, 0x0

    const/16 v14, 0x16

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v1, v0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;->switchWidth:I

    .line 190
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 192
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/TextCheckCell;F)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/TextCheckCell;)F
    .locals 0

    .line 49
    iget p0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/TextCheckCell;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/TextCheckCell;I)I
    .locals 0

    .line 49
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    return p1
.end method

.method private getLastTouchX()F
    .locals 2

    .line 418
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isAnimatingToThumbInsteadOfTouch:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x2a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->lastTouchX:F

    :goto_1
    return v0
.end method

.method private setAnimationProgress(F)V
    .locals 3

    .line 382
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    .line 383
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getLastTouchX()F

    move-result p1

    .line 384
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/16 v1, 0x28

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 386
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 387
    iget v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    mul-float v0, v0, v2

    .line 388
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    int-to-float v1, v1

    invoke-virtual {v2, p1, v1, v0}, Lorg/telegram/ui/Components/Switch;->setOverrideColorProgress(FFF)V

    return-void
.end method


# virtual methods
.method public checkSwitchLocation(F)Z
    .locals 4

    .line 73
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getSwitchDividerX()I

    move-result v0

    .line 74
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    int-to-float v0, v0

    if-eqz v1, :cond_0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getSwitchDividerX()I
    .locals 2

    .line 78
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->switchWidth:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->switchWidth:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 471
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 477
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 478
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->attached:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 424
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->drawSwitchDivider:Z

    if-eqz v0, :cond_0

    .line 425
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 426
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getSwitchDividerX()I

    move-result v1

    .line 427
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v1

    int-to-float v5, v2

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    add-int/2addr v2, v0

    int-to-float v7, v2

    .line 428
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 431
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    if-eqz v0, :cond_1

    .line 432
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getLastTouchX()F

    move-result v0

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/16 v2, 0x28

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 435
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 436
    iget v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    mul-float v1, v1, v3

    int-to-float v2, v2

    .line 437
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 439
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    if-eqz v0, :cond_7

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 441
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    int-to-float v2, v0

    move v4, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    iget v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    :cond_3
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 443
    :cond_4
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x14

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    move v5, v2

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_6
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
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 454
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 464
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 207
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 208
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 210
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/16 p2, 0x40

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    add-int/2addr p2, v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->lastTouchX:F

    .line 217
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnimatingToThumbInsteadOfTouch(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isAnimatingToThumbInsteadOfTouch:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    const/4 v0, 0x0

    .line 349
    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    .line 350
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundColorAnimated(ZI)V
    .locals 3

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 358
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 361
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 362
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    .line 364
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOverrideColor(I)V

    .line 365
    iput p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 367
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationProgress:F

    .line 368
    sget-object p1, Lorg/telegram/ui/Cells/TextCheckCell;->ANIMATION_PROGRESS:Landroid/util/Property;

    new-array p2, v2, [F

    fill-array-data p2, :array_0

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 369
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/TextCheckCell$2;-><init>(Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBackgroundColorAnimatedReverse(I)V
    .locals 3

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 397
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 398
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    .line 399
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animationPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Switch;->setOverrideColor(I)V

    .line 403
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animatedColorBackground:I

    .line 404
    sget-object v0, Lorg/telegram/ui/Cells/TextCheckCell;->ANIMATION_PROGRESS:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    .line 405
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell$3;-><init>(Lorg/telegram/ui/Cells/TextCheckCell;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setCheckBoxIcon(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setColorfullIcon(II)V
    .locals 8

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 483
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    .line 484
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    or-int/lit8 v3, v3, 0x10

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/16 v6, 0x13

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x41

    .line 486
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x46

    if-eqz v1, :cond_1

    const/16 v1, 0x46

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    iget v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 490
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 494
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/Switch;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setDivider(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setDrawCheckRipple(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->drawCheckRipple:Z

    return-void
.end method

.method public setDrawSwitchDivider(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->drawSwitchDivider:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

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

    .line 322
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_3

    .line 324
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    if-eqz p1, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_0
    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    if-eqz p1, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_1
    aput v6, v5, v7

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 327
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_2
    aput v0, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 330
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    :goto_6
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 279
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->drawCheckRipple:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setDrawRipple(Z)V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return-void
.end method

.method public setTextAndCheck(Ljava/lang/String;ZZ)V
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 227
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->attached:Z

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 230
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    const-string v0, "windowBackgroundChecked"

    goto :goto_0

    :cond_0
    const-string v0, "windowBackgroundUnchecked"

    .line 232
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 233
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    :goto_1
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Switch;->setOverrideColor(I)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    const-string p2, "windowBackgroundWhite"

    .line 236
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 237
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    .line 238
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Switch;->setOverrideColor(I)V

    .line 241
    :cond_3
    :goto_2
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 242
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 244
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 245
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    xor-int/lit8 p1, p3, 0x1

    .line 247
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 298
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    .line 302
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 303
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 304
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 305
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 306
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/16 p4, 0xb

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {p3, p2, p2, p2, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 309
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 310
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 311
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object p4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 312
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 314
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    .line 315
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p3, 0xa

    .line 316
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 317
    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    xor-int/2addr p1, p5

    .line 318
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 7

    .line 82
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x38

    .line 84
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    .line 85
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    const-string v2, "windowBackgroundCheckText"

    const-string v3, "switchTrackBlue"

    const-string v4, "switchTrackBlueChecked"

    const-string v5, "switchTrackBlueThumb"

    const-string v6, "switchTrackBlueThumbChecked"

    move-object v1, p0

    .line 86
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fonts/rmedium.ttf"

    .line 87
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x32

    .line 89
    iput p1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->height:I

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    const-string v1, "windowBackgroundWhiteBlackText"

    const-string v2, "switchTrack"

    const-string v3, "switchTrackChecked"

    const-string v4, "windowBackgroundWhite"

    const-string v5, "windowBackgroundWhite"

    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public toggleCheckbox()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 98
    iget v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->type:I

    if-ne v0, v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "windowBackgroundChecked"

    goto :goto_0

    :cond_0
    const-string v0, "windowBackgroundUnchecked"

    .line 100
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColorAnimated(ZI)V

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public updateRTL()V
    .locals 11

    .line 251
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 254
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isRTL:Z

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v6, 0x5

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    :goto_1
    or-int/lit8 v6, v6, 0x30

    const/16 v7, 0x46

    if-eqz v1, :cond_3

    const/16 v8, 0x46

    goto :goto_2

    :cond_3
    iget v8, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    :goto_2
    const/4 v9, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    goto :goto_3

    :cond_4
    const/16 v1, 0x46

    :goto_3
    const/4 v10, 0x0

    move v7, v8

    move v8, v9

    move v9, v1

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    goto :goto_4

    :cond_5
    const/4 v1, 0x3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    const/4 v6, 0x5

    goto :goto_5

    :cond_6
    const/4 v6, 0x3

    :goto_5
    or-int/lit8 v6, v6, 0x30

    const/16 v7, 0x40

    if-eqz v1, :cond_7

    const/16 v8, 0x40

    goto :goto_6

    :cond_7
    iget v8, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    :goto_6
    const/16 v9, 0x24

    if-eqz v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->padding:I

    goto :goto_7

    :cond_8
    const/16 v1, 0x40

    :goto_7
    const/4 v10, 0x0

    move v7, v8

    move v8, v9

    move v9, v1

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v4, 0x25

    const/16 v5, 0x14

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    :cond_9
    or-int/lit8 v6, v2, 0x10

    const/16 v7, 0x16

    const/4 v8, 0x0

    const/16 v9, 0x16

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
