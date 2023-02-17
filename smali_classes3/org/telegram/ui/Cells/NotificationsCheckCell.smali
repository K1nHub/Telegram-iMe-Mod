.class public Lorg/telegram/ui/Cells/NotificationsCheckCell;
.super Landroid/widget/FrameLayout;
.source "NotificationsCheckCell.java"


# instance fields
.field private animationsEnabled:Z

.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private currentHeight:I

.field private drawLine:Z

.field private isMultiline:Z

.field private moveImageView:Landroid/widget/ImageView;

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

    .line 58
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

    .line 66
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 70
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 51
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    .line 71
    iput-object v2, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    .line 73
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move/from16 v5, p3

    .line 74
    iput v5, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eqz p4, :cond_1

    .line 77
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->moveImageView:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 79
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->moveImageView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->moveImageView:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$drawable;->poll_reorder:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->moveImageView:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    const-string v9, "windowBackgroundWhiteGrayIcon"

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 82
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->moveImageView:Landroid/widget/ImageView;

    const/16 v8, 0x30

    const/16 v9, 0x30

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_0

    :cond_0
    const/4 v10, 0x3

    :goto_0
    or-int/lit8 v10, v10, 0x10

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_1
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    const-string v8, "windowBackgroundWhiteBlackText"

    .line 86
    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 89
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 91
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x5

    goto :goto_1

    :cond_2
    const/4 v8, 0x3

    :goto_1
    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    const/4 v8, -0x1

    const/4 v9, -0x2

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_3

    const/4 v11, 0x5

    goto :goto_2

    :cond_3
    const/4 v11, 0x3

    :goto_2
    or-int/lit8 v11, v11, 0x30

    const/16 v15, 0x40

    const/16 v16, 0x50

    if-eqz v10, :cond_4

    const/16 v12, 0x50

    goto :goto_3

    :cond_4
    if-eqz p4, :cond_5

    const/16 v12, 0x40

    goto :goto_3

    :cond_5
    move/from16 v12, p2

    :goto_3
    iget v13, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    add-int/lit8 v13, v13, -0x46

    div-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0xd

    if-eqz v10, :cond_7

    if-eqz p4, :cond_6

    const/16 v14, 0x40

    goto :goto_4

    :cond_6
    move/from16 v14, p2

    goto :goto_4

    :cond_7
    const/16 v14, 0x50

    :goto_4
    const/16 v17, 0x0

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v17

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const-string v8, "windowBackgroundWhiteGrayText2"

    .line 96
    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v7, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_8

    const/4 v8, 0x5

    goto :goto_5

    :cond_8
    const/4 v8, 0x3

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 100
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 101
    iget-object v7, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 102
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 103
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    iget-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v7, -0x2

    const/4 v8, -0x2

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_9

    const/4 v10, 0x5

    goto :goto_6

    :cond_9
    const/4 v10, 0x3

    :goto_6
    or-int/lit8 v10, v10, 0x30

    if-eqz v9, :cond_a

    const/16 v11, 0x50

    goto :goto_7

    :cond_a
    if-eqz p4, :cond_b

    const/16 v11, 0x40

    goto :goto_7

    :cond_b
    move/from16 v11, p2

    :goto_7
    iget v12, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->currentHeight:I

    add-int/lit8 v12, v12, -0x46

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x26

    if-eqz v9, :cond_d

    if-eqz p4, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v15, p2

    goto :goto_8

    :cond_d
    const/16 v15, 0x50

    :goto_8
    const/4 v13, 0x0

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v15

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const-string v1, "switchTrack"

    const-string v2, "switchTrackChecked"

    const-string v7, "windowBackgroundWhite"

    .line 107
    invoke-virtual {v3, v1, v2, v7, v7}, Lorg/telegram/ui/Components/Switch;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/16 v7, 0x25

    const/16 v8, 0x28

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_e

    const/4 v5, 0x3

    :cond_e
    or-int/lit8 v9, v5, 0x10

    const/16 v10, 0x15

    const/4 v11, 0x0

    const/16 v12, 0x15

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public checkSwitchLocation(F)Z
    .locals 3

    const/16 v0, 0x4c

    .line 37
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 38
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

.method public isChecked()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 171
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->needDivider:Z

    if-eqz v0, :cond_2

    .line 172
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

    .line 174
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->drawLine:Z

    if-eqz v0, :cond_4

    .line 175
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x4c

    if-eqz v0, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 176
    :goto_2
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

    .line 177
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v7, v1

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 114
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 117
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

    .line 182
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->animationsEnabled:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZI)V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    return-void
.end method

.method public setDrawLine(Z)V
    .locals 0

    .line 154
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

    .line 126
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->animationsEnabled:Z

    invoke-virtual {p2, p3, p4, v0}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    .line 133
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->needDivider:Z

    .line 135
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isMultiline:Z

    if-eqz p5, :cond_0

    .line 138
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setLines(I)V

    .line 139
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 140
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 141
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/16 p4, 0xe

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {p2, p3, p3, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setLines(I)V

    .line 145
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 146
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 147
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object p4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/NotificationsCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

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

    .line 122
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V

    return-void
.end method
