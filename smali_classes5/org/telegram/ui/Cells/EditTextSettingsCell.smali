.class public Lorg/telegram/ui/Cells/EditTextSettingsCell;
.super Landroid/widget/FrameLayout;
.source "EditTextSettingsCell.java"


# instance fields
.field private needDivider:Z

.field private textView:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 51
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 53
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 54
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLines(I)V

    .line 55
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 56
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 57
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 58
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 59
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 61
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    or-int/lit16 v0, v0, 0x4000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 62
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/lit8 v5, v1, 0x30

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/16 v8, 0x15

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 112
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 113
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

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

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

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x32

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0x2a

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 70
    iget-object p2, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/EditText;->measure(II)V

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->needDivider:Z

    xor-int/lit8 p1, p2, 0x1

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextAndHint(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 102
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextSettingsCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    return-void
.end method
