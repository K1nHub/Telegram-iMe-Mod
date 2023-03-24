.class public Lorg/telegram/ui/Cells/RadioButtonCell;
.super Landroid/widget/FrameLayout;
.source "RadioButtonCell.java"


# instance fields
.field private needDivider:Z

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private textView:Landroid/widget/TextView;

.field public valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 38
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v2, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v3, 0x14

    .line 41
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    if-eqz p2, :cond_0

    .line 43
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const-string v4, "dialogRadioBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "dialogRadioBackgroundChecked"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const-string v4, "radioBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "radioBackgroundChecked"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 47
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v4, 0x16

    const/16 v5, 0x16

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eqz v6, :cond_1

    move v7, v11

    goto :goto_1

    :cond_1
    move v7, v12

    :goto_1
    or-int/lit8 v7, v7, 0x30

    const/4 v13, 0x0

    if-eqz v6, :cond_2

    move v8, v13

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    const/16 v9, 0xa

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v3, v13

    :goto_3
    const/4 v10, 0x0

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    const-string v3, "dialogTextBlack"

    .line 51
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    const-string v3, "windowBackgroundWhiteBlackText"

    .line 53
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 57
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 58
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 59
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    move v3, v11

    goto :goto_5

    :cond_5
    move v3, v12

    :goto_5
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    const/4 v14, -0x2

    const/4 v15, -0x2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    move v5, v11

    goto :goto_6

    :cond_6
    move v5, v12

    :goto_6
    or-int/lit8 v16, v5, 0x30

    const/16 v5, 0x17

    const/16 v6, 0x3d

    if-eqz v3, :cond_7

    move/from16 v17, v5

    goto :goto_7

    :cond_7
    move/from16 v17, v6

    :goto_7
    const/16 v18, 0xa

    if-eqz v3, :cond_8

    move/from16 v19, v6

    goto :goto_8

    :cond_8
    move/from16 v19, v5

    :goto_8
    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    const-string v1, "dialogTextGray2"

    .line 64
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_9
    const-string v1, "windowBackgroundWhiteGrayText2"

    .line 66
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_a

    move v2, v11

    goto :goto_a

    :cond_a
    move v2, v12

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLines(I)V

    .line 71
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 73
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v13, v13, v13, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    const/4 v13, -0x2

    const/4 v14, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    move v11, v12

    :goto_b
    or-int/lit8 v15, v11, 0x30

    const/16 v3, 0x11

    if-eqz v2, :cond_c

    move/from16 v16, v3

    goto :goto_c

    :cond_c
    move/from16 v16, v6

    :goto_c
    const/16 v17, 0x23

    if-eqz v2, :cond_d

    move/from16 v18, v6

    goto :goto_d

    :cond_d
    move/from16 v18, v3

    :goto_d
    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 95
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 96
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x0

    const/16 v2, 0x3c

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.RadioButton"

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 86
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/RadioButtonCell;->needDivider:Z

    return-void
.end method
