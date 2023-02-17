.class public Lorg/telegram/ui/PremiumFeatureCell;
.super Landroid/widget/FrameLayout;
.source "PremiumFeatureCell.java"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field public data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

.field private final description:Landroid/widget/TextView;

.field drawDivider:Z

.field public imageView:Landroid/widget/ImageView;

.field private initialTitleSubtitleContainerLeftMargin:I

.field private nextIcon:Landroid/widget/ImageView;

.field private final title:Landroid/widget/TextView;

.field private titleSubtitleContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PremiumFeatureCell;->title:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    .line 64
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 65
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "windowBackgroundWhiteBlackText"

    .line 66
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 67
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PremiumFeatureCell;->description:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    .line 70
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "windowBackgroundWhiteGrayText"

    .line 71
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    .line 72
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 73
    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/16 v7, 0x8

    const/16 v8, 0x30

    const/16 v9, 0x9

    .line 75
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PremiumFeatureCell;->imageView:Landroid/widget/ImageView;

    .line 78
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-object v1, p0, Lorg/telegram/ui/PremiumFeatureCell;->imageView:Landroid/widget/ImageView;

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "switchTrack"

    .line 84
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/16 v6, 0x15

    const/16 v9, 0x12

    .line 85
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, p0, Lorg/telegram/ui/PremiumFeatureCell;->initialTitleSubtitleContainerLeftMargin:I

    .line 88
    iput-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->titleSubtitleContainer:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, p0, Lorg/telegram/ui/PremiumFeatureCell;->nextIcon:Landroid/widget/ImageView;

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const-string p1, "switchTrackChecked"

    const-string v1, "windowBackgroundWhite"

    .line 91
    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/telegram/ui/Components/Switch;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/PremiumFeatureCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/PremiumFeatureCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v3, v0, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/16 v1, 0x25

    const/16 v2, 0x14

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 109
    iget-boolean v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->drawDivider:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    .line 110
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setCheckBoxVisible(Z)V
    .locals 4

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->titleSubtitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PremiumFeatureCell;->initialTitleSubtitleContainerLeftMargin:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x16

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->nextIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V
    .locals 2

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/PremiumFeatureCell;->data:Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->description:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/PremiumFeatureCell;->imageView:Landroid/widget/ImageView;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->icon:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iput-boolean p2, p0, Lorg/telegram/ui/PremiumFeatureCell;->drawDivider:Z

    return-void
.end method
