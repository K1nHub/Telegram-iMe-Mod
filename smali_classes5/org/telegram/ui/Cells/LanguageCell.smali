.class public Lorg/telegram/ui/Cells/LanguageCell;
.super Landroid/widget/FrameLayout;
.source "LanguageCell.java"


# instance fields
.field private currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field private marginEndDp:I

.field private marginStartDp:I

.field private needDivider:Z

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private textView:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3e

    .line 32
    iput v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginStartDp:I

    const/16 v0, 0x17

    iput v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginEndDp:I

    .line 36
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 37
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createCommonResources(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 42
    new-instance v1, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/LanguageCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v2, 0x14

    .line 43
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 44
    iget-object v1, p0, Lorg/telegram/ui/Cells/LanguageCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const-string v3, "dialogRadioBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "dialogRadioBackgroundChecked"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 45
    iget-object v1, p0, Lorg/telegram/ui/Cells/LanguageCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v3, 0x16

    const/16 v4, 0x16

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, 0x5

    const/4 v11, 0x3

    if-eqz v5, :cond_1

    const/4 v6, 0x5

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    :goto_0
    or-int/lit8 v6, v6, 0x10

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/16 v7, 0x14

    :goto_1
    const/4 v8, 0x0

    if-eqz v5, :cond_3

    const/16 v0, 0x14

    :cond_3
    const/4 v9, 0x0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    const-string v1, "dialogTextBlack"

    .line 48
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_2

    :cond_4
    const/4 v1, 0x3

    :goto_2
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    const/4 v5, 0x5

    goto :goto_3

    :cond_5
    const/4 v5, 0x3

    :goto_3
    or-int/lit8 v5, v5, 0x30

    if-eqz v1, :cond_6

    iget v6, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginEndDp:I

    goto :goto_4

    :cond_6
    iget v6, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginStartDp:I

    :goto_4
    const/4 v7, 0x0

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginStartDp:I

    goto :goto_5

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginEndDp:I

    :goto_5
    move v8, v1

    const/16 v9, 0x11

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    const-string p1, "dialogTextGray3"

    .line 56
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 59
    iget-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 60
    iget-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_6

    :cond_8
    const/4 v0, 0x3

    :goto_6
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    const/4 v10, 0x3

    :goto_7
    or-int/lit8 v3, v10, 0x30

    if-eqz v2, :cond_a

    iget v4, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginEndDp:I

    goto :goto_8

    :cond_a
    iget v4, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginStartDp:I

    :goto_8
    const/16 v5, 0x14

    if-eqz v2, :cond_b

    iget v2, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginStartDp:I

    goto :goto_9

    :cond_b
    iget v2, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginEndDp:I

    :goto_9
    move v6, v2

    const/4 v7, 0x0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getCurrentLocale()Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 95
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginStartDp:I

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Cells/LanguageCell;->marginStartDp:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/LanguageCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;Z)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p2, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iput-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 73
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/LanguageCell;->needDivider:Z

    return-void
.end method

.method public setLanguageSelected(ZZ)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Cells/LanguageCell;->currentLocale:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 81
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/LanguageCell;->needDivider:Z

    return-void
.end method
