.class public Lorg/telegram/ui/Cells/NotificationsCheckCell;
.super Landroid/widget/FrameLayout;
.source "NotificationsCheckCell.java"


# instance fields
.field private animationsEnabled:Z

.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private currentHeight:I

.field private drawLine:Z

.field private imageView:Landroid/widget/ImageView;

.field private isMultiline:Z

.field private needDivider:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/16 v2, 0x15

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 61
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 69
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 73
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 54
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    .line 74
    iput-object v2, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    .line 76
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move/from16 v5, p3

    .line 77
    iput v5, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eqz p4, :cond_1

    .line 80
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 82
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    const/16 v8, 0x30

    const/16 v9, 0x30

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_0

    move v10, v5

    goto :goto_0

    :cond_0
    move v10, v6

    :goto_0
    or-int/lit8 v10, v10, 0x10

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_1
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    .line 87
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 90
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 91
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 92
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 94
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    const/4 v8, -0x1

    const/4 v9, -0x2

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    move v11, v5

    goto :goto_2

    :cond_3
    move v11, v6

    :goto_2
    or-int/lit8 v11, v11, 0x30

    const/16 v15, 0x40

    const/16 v16, 0x50

    if-eqz v10, :cond_4

    move/from16 v12, v16

    goto :goto_3

    :cond_4
    if-eqz p4, :cond_5

    move v12, v15

    goto :goto_3

    :cond_5
    move/from16 v12, p2

    :goto_3
    iget v13, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    add-int/lit8 v13, v13, -0x46

    const/16 v17, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0xd

    if-eqz v10, :cond_7

    if-eqz p4, :cond_6

    move v14, v15

    goto :goto_4

    :cond_6
    move/from16 v14, p2

    goto :goto_4

    :cond_7
    move/from16 v14, v16

    :goto_4
    const/16 v18, 0x0

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v18

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    .line 97
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_8

    move v8, v5

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 101
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 102
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 103
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v7, -0x2

    const/4 v8, -0x2

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_9

    move v10, v5

    goto :goto_6

    :cond_9
    move v10, v6

    :goto_6
    or-int/lit8 v10, v10, 0x30

    if-eqz v9, :cond_a

    move/from16 v11, v16

    goto :goto_7

    :cond_a
    if-eqz p4, :cond_b

    move v11, v15

    goto :goto_7

    :cond_b
    move/from16 v11, p2

    :goto_7
    if-eqz p4, :cond_c

    move/from16 v12, v17

    goto :goto_8

    :cond_c
    move v12, v4

    :goto_8
    rsub-int/lit8 v12, v12, 0x26

    iget v13, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    add-int/lit8 v13, v13, -0x46

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    if-eqz v9, :cond_e

    if-eqz p4, :cond_d

    goto :goto_9

    :cond_d
    move/from16 v15, p2

    goto :goto_9

    :cond_e
    move/from16 v15, v16

    :goto_9
    const/4 v13, 0x0

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v15

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 108
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v1, v2, v7, v7}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    .line 109
    iget-object v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v7, 0x25

    const/16 v8, 0x28

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    move v5, v6

    :cond_f
    or-int/lit8 v9, v5, 0x10

    const/16 v10, 0x15

    const/4 v11, 0x0

    const/16 v12, 0x15

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isInSwitch(F)Z
    .locals 3

    const/16 v0, 0x4c

    .line 36
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 37
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 179
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->needDivider:Z

    if-eqz v0, :cond_4

    .line 181
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x40

    const/16 v2, 0x14

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 182
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    sub-int/2addr v0, v1

    int-to-float v6, v0

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 180
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    if-eqz v0, :cond_6

    .line 189
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x4c

    if-eqz v0, :cond_5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 190
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x16

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v0

    int-to-float v5, v1

    add-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    .line 191
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v7, v1

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 115
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->animationsEnabled:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZI)V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    return-void
.end method

.method public setDrawLine(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 127
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 131
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;IZIZZ)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 123
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method

.method public setTextAndValueAndIconAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;IZIZZ)V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->imageView:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-boolean p3, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->animationsEnabled:Z

    invoke-virtual {p2, p4, p5, p3}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    .line 142
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iput-boolean p7, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->needDivider:Z

    .line 144
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    if-eqz p6, :cond_1

    .line 146
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLines(I)V

    .line 147
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 148
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 149
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 150
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/16 p4, 0xe

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {p2, p3, p3, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setLines(I)V

    .line 153
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 154
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 155
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object p4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 156
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 158
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
