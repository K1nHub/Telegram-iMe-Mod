.class public Lorg/telegram/ui/Cells/RadioCell;
.super Landroid/widget/FrameLayout;
.source "RadioCell.java"


# instance fields
.field private needDivider:Z

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x15

    .line 39
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x15

    .line 43
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v9, p4

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v9, v0, Lorg/telegram/ui/Cells/RadioCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 54
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const-string v3, "dialogTextBlack"

    .line 56
    invoke-static {v3, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const-string v3, "windowBackgroundWhiteBlackText"

    .line 58
    invoke-static {v3, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 62
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 64
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    iget-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    :goto_1
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v13, v0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    :goto_2
    or-int/lit8 v4, v4, 0x30

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v5, p3

    move/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v2, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v1, 0x14

    .line 69
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    if-eqz p2, :cond_3

    .line 71
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const-string v2, "dialogRadioBackground"

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const-string v3, "dialogRadioBackgroundChecked"

    invoke-static {v3, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_3

    .line 73
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const-string v2, "radioBackground"

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const-string v3, "radioBackgroundChecked"

    invoke-static {v3, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 75
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v2, 0x16

    const/16 v3, 0x16

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    const/4 v11, 0x3

    :cond_4
    or-int/lit8 v5, v11, 0x30

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    add-int/lit8 v7, p3, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    const/16 v8, 0xe

    if-eqz v4, :cond_6

    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v4, p3, 0x1

    move v9, v4

    :goto_5
    const/4 v10, 0x0

    move v4, v5

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hideRadioButton()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 122
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/RadioCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 123
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_0
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

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.RadioButton"

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/RadioCell;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x32

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/RadioCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    const/16 p2, 0x22

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 83
    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v0, 0x16

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 84
    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

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

    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p2, :cond_2

    .line 109
    iget-object v2, p0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

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

    .line 110
    iget-object v2, p0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    aput v0, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 112
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    return-void
.end method

.method public setText(Ljava/lang/String;ZZ)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    .line 94
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/RadioCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
