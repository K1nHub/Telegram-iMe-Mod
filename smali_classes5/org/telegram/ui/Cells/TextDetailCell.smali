.class public Lorg/telegram/ui/Cells/TextDetailCell;
.super Landroid/widget/FrameLayout;
.source "TextDetailCell.java"


# instance fields
.field private contentDescriptionValueFirst:Z

.field private final imageView:Landroid/widget/ImageView;

.field private multiline:Z

.field private needDivider:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView:Landroid/widget/TextView;

.field private final valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;


# direct methods
.method public static synthetic $r8$lambda$tdEzD8eBkhCSoycJPNTyiL46E4M(Lorg/telegram/ui/Cells/TextDetailCell;Landroid/text/style/ClickableSpan;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextDetailCell;->lambda$new$0(Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLandroid/util/AttributeSet;)V
    .locals 11

    .line 79
    invoke-direct {p0, p1, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-object p2, p0, Lorg/telegram/ui/Cells/TextDetailCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 82
    new-instance p4, Landroid/widget/TextView;

    invoke-direct {p4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    const-string v0, "windowBackgroundWhiteBlackText"

    .line 83
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 84
    invoke-virtual {p4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 87
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 88
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 89
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x2

    .line 90
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    .line 91
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    const/16 v7, 0x17

    const/16 v8, 0x8

    const/16 v9, 0x17

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, p4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance p4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p4, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 94
    new-instance v4, Lorg/telegram/ui/Cells/TextDetailCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Cells/TextDetailCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/TextDetailCell;)V

    invoke-virtual {p4, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setOnLinkLongPressListener(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;)V

    .line 102
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextDetailCell;->multiline:Z

    if-eqz p3, :cond_2

    const/16 p3, 0x3c

    .line 103
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 106
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_2
    const-string p3, "windowBackgroundWhiteGrayText2"

    .line 108
    invoke-static {p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 109
    invoke-virtual {p4, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_3

    :cond_3
    move p2, v3

    :goto_3
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 112
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 113
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    const/16 v7, 0x17

    const/16 v8, 0x21

    const/16 v9, 0x17

    const/16 v10, 0xa

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 117
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v0, 0x42400000    # 48.0f

    const/high16 v1, 0x42400000    # 48.0f

    const v2, 0x800015

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    .line 118
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/text/style/ClickableSpan;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 97
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 196
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 198
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v3, v0

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 197
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 209
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextDetailCell;->contentDescriptionValueFirst:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/TextDetailCell;->contentDescriptionValueFirst:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 134
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->multiline:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x3c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->needDivider:Z

    add-int/2addr p2, v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 132
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->hit(II)Landroid/text/style/ClickableSpan;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 127
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setContentDescriptionValueFirst(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->contentDescriptionValueFirst:Z

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/TextDetailCell;->setImage(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 7

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x17

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p2, 0x30

    if-nez p1, :cond_2

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    goto :goto_2

    .line 158
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/TextDetailCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v6, "listSelectorSDK21"

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v4, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 161
    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    .line 162
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_4

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 165
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 167
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setImageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextDetailCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Cells/TextDetailCell;->valueTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextDetailCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method
