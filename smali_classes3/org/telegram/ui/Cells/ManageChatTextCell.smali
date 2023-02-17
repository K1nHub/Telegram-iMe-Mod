.class public Lorg/telegram/ui/Cells/ManageChatTextCell;
.super Landroid/widget/FrameLayout;
.source "ManageChatTextCell.java"


# instance fields
.field private divider:Z

.field private dividerColor:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 36
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "windowBackgroundWhiteValueText"

    .line 42
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    :cond_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 47
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    .line 48
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "windowBackgroundWhiteGrayIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 50
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getValueTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 126
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->divider:Z

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->dividerColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/16 v0, 0x47

    .line 130
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

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->dividerColor:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :goto_0
    move-object v6, v0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p1

    sub-int p1, p5, p1

    div-int/lit8 p1, p1, 0x2

    .line 83
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p3, 0x18

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 84
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 87
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p1, :cond_1

    const/16 p1, 0x47

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 88
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p2, p1, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    const/16 p1, 0x9

    .line 90
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 91
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p3, 0x15

    if-nez p2, :cond_2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int p2, p4, p2

    .line 92
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x30

    .line 68
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/widget/ImageView;->measure(II)V

    const/16 p2, 0x38

    .line 74
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->divider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 103
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setDividerColor(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->dividerColor:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 114
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->valueTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {p2, p1, p4, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->divider:Z

    xor-int/lit8 p1, p5, 0x1

    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 107
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatTextCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method
