.class public Lorg/telegram/ui/Cells/CheckBoxCell;
.super Landroid/widget/FrameLayout;
.source "CheckBoxCell.java"


# instance fields
.field private checkBox:Landroid/view/View;

.field private checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

.field private checkBoxSize:I

.field private checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private click1Container:Landroid/view/View;

.field private click2Container:Landroid/view/View;

.field private collapsedArrow:Landroid/view/View;

.field private currentType:I

.field private isMultiline:Z

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 88
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 51
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v10, p4

    move-object/from16 v3, p5

    .line 96
    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v3, 0x12

    .line 79
    iput v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    .line 97
    iput-object v10, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 99
    iput v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    .line 101
    new-instance v3, Lorg/telegram/ui/Cells/CheckBoxCell$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell$1;-><init>(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    .line 114
    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 115
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-eq v2, v12, :cond_1

    if-ne v2, v11, :cond_0

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_1
    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 118
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 119
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 120
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 122
    iget v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    sget v13, Lcom/iMe/common/IdFabric$ViewTypes;->TON_ADDRESS_VERSION:I

    const/16 v14, 0x10

    const/4 v15, 0x0

    if-ne v3, v13, :cond_2

    .line 123
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 124
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5, v15, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    .line 128
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x33

    const/16 v19, 0x1d

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v15, v15, v15, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_a

    .line 132
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    move v5, v11

    goto :goto_2

    :cond_4
    move v5, v7

    :goto_2
    or-int/2addr v5, v14

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v2, v9, :cond_8

    .line 134
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/16 v16, -0x1

    const/16 v17, -0x1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    move v6, v11

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    or-int/lit8 v18, v6, 0x30

    const/16 v6, 0x8

    const/16 v19, 0x1d

    if-eqz v5, :cond_6

    move/from16 v20, v6

    goto :goto_4

    :cond_6
    move/from16 v20, v19

    :goto_4
    const/16 v21, 0x0

    if-eqz v5, :cond_7

    move/from16 v6, v19

    :cond_7
    const/16 v22, 0x0

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v6

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_8
    if-ne v2, v8, :cond_9

    const/16 v3, 0x38

    goto :goto_5

    :cond_9
    const/16 v3, 0x2e

    .line 137
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    if-ne v2, v8, :cond_a

    const/4 v6, -0x2

    goto :goto_6

    :cond_a
    const/4 v6, -0x1

    :goto_6
    move/from16 v16, v6

    const/16 v17, -0x1

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_b

    move/from16 v18, v11

    goto :goto_7

    :cond_b
    move/from16 v18, v7

    :goto_7
    or-int/lit8 v18, v18, 0x30

    if-eqz v6, :cond_c

    move/from16 v19, p3

    goto :goto_8

    :cond_c
    add-int/lit8 v19, p3, -0x11

    add-int v19, v3, v19

    :goto_8
    const/16 v20, 0x0

    if-eqz v6, :cond_d

    add-int/lit8 v6, p3, -0x11

    add-int/2addr v3, v6

    move/from16 v21, v3

    goto :goto_9

    :cond_d
    move/from16 v21, p3

    :goto_9
    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :goto_a
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    if-eq v2, v12, :cond_f

    if-ne v2, v11, :cond_e

    goto :goto_b

    .line 142
    :cond_e
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    goto :goto_c

    :cond_f
    :goto_b
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    :goto_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 143
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 145
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 146
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 147
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    iget-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_10

    move v4, v7

    goto :goto_d

    :cond_10
    move v4, v11

    :goto_d
    or-int/2addr v4, v14

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v6, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_11

    move v5, v7

    goto :goto_e

    :cond_11
    move v5, v11

    :goto_e
    or-int/lit8 v5, v5, 0x30

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v6

    move/from16 v6, p3

    move/from16 v7, v16

    move v11, v8

    move/from16 v8, p3

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    if-ne v3, v13, :cond_13

    .line 153
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 154
    sget v1, Lorg/telegram/messenger/R$drawable;->account_check:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 156
    iput-object v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    const/16 v4, 0x14

    .line 157
    iput v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    .line 158
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_12

    const/4 v11, 0x5

    goto :goto_f

    :cond_12
    const/4 v11, 0x3

    :goto_f
    or-int/lit8 v5, v11, 0x11

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, v4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1b

    :cond_13
    if-ne v2, v11, :cond_17

    .line 161
    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v3, 0x15

    invoke-direct {v2, v1, v3, v10}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    iput-object v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    .line 162
    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 163
    iget-object v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v12, v15}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 164
    iget-object v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/16 v4, 0x15

    .line 165
    iput v4, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    .line 166
    iget-object v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14

    const/4 v11, 0x5

    goto :goto_10

    :cond_14
    const/4 v11, 0x3

    :goto_10
    or-int/lit8 v5, v11, 0x30

    if-eqz v2, :cond_15

    move v6, v15

    goto :goto_11

    :cond_15
    move/from16 v6, p3

    :goto_11
    const/16 v7, 0x10

    if-eqz v2, :cond_16

    move/from16 v8, p3

    goto :goto_12

    :cond_16
    move v8, v15

    :goto_12
    const/4 v9, 0x0

    move v3, v4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1b

    .line 168
    :cond_17
    new-instance v3, Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v4, 0x5

    if-eq v2, v12, :cond_19

    if-ne v2, v4, :cond_18

    goto :goto_13

    :cond_18
    move v12, v15

    :cond_19
    :goto_13
    invoke-direct {v3, v1, v12, v10}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    iput-object v3, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    const/16 v6, 0x12

    .line 169
    iput v6, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    if-ne v2, v4, :cond_1d

    .line 171
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1a

    move v11, v4

    const/16 v2, 0x10

    goto :goto_14

    :cond_1a
    const/16 v2, 0x10

    const/4 v11, 0x3

    :goto_14
    or-int/lit8 v7, v11, 0x10

    if-eqz v1, :cond_1b

    move v8, v15

    goto :goto_15

    :cond_1b
    move/from16 v8, p3

    :goto_15
    const/4 v9, 0x0

    if-eqz v1, :cond_1c

    move/from16 v10, p3

    goto :goto_16

    :cond_1c
    move v10, v15

    :goto_16
    const/4 v11, 0x0

    move v5, v6

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_1d
    const/4 v1, 0x3

    if-ne v2, v1, :cond_1e

    const/16 v7, 0x33

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, v6

    .line 173
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    :cond_1e
    const/4 v5, 0x2

    if-ne v2, v5, :cond_20

    .line 175
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1f

    move v11, v4

    goto :goto_17

    :cond_1f
    move v11, v1

    :goto_17
    or-int/lit8 v7, v11, 0x30

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v5, v6

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    .line 177
    :cond_20
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_21

    move v11, v4

    goto :goto_18

    :cond_21
    move v11, v1

    :goto_18
    or-int/lit8 v7, v11, 0x30

    if-eqz v2, :cond_22

    move v8, v15

    goto :goto_19

    :cond_22
    move/from16 v8, p3

    :goto_19
    const/16 v9, 0x10

    if-eqz v2, :cond_23

    move/from16 v10, p3

    goto :goto_1a

    :cond_23
    move v10, v15

    :goto_1a
    const/4 v11, 0x0

    move v5, v6

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateTextColor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/16 v3, 0x11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    .line 92
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v2, 0x4

    const/16 v3, 0x11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateCollapseArrowTranslation()V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private updateCollapseArrowTranslation()V
    .locals 2

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 252
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    .line 256
    :catch_0
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 261
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getCheckBoxView()Landroid/view/View;
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValueTextView()Landroid/widget/TextView;
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 411
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 445
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    if-eqz v0, :cond_3

    .line 446
    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 447
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    int-to-float v1, v0

    :goto_1
    move v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sub-int/2addr v1, v0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 453
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.CheckBox"

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 456
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 267
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 269
    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TON_ADDRESS_VERSION:I

    const/16 v2, 0x8

    const/16 v3, 0x22

    const/high16 v4, -0x80000000

    const/16 v5, 0x32

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 272
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 279
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 280
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    const/16 v0, 0x1d

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 284
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->isMultiline:Z

    if-eqz v0, :cond_2

    .line 285
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_0

    .line 287
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/16 v3, 0x3c

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p1, v0

    .line 294
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    div-int/lit8 v1, p1, 0x2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->measure(II)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 296
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSize:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 299
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, p1

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 303
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    if-eqz p1, :cond_6

    const/16 p2, 0x38

    .line 304
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 306
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-eqz p1, :cond_7

    const/16 p2, 0x10

    .line 308
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 309
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 307
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_7
    return-void
.end method

.method public setCheckBoxColor(III)V
    .locals 0

    .line 428
    iget-object p2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    .line 429
    invoke-virtual {p2, p1, p1, p3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    :goto_0
    return-void
.end method

.method public setCollapsed(Ljava/lang/Boolean;)V
    .locals 4

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    goto :goto_1

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    if-nez v0, :cond_1

    .line 231
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    .line 232
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    const/16 v1, 0x10

    invoke-static {v1, v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->updateCollapseArrowTranslation()V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->collapsedArrow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/high16 p1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x154

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 388
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setIcon(I)V

    return-void
.end method

.method public setMultiline(Z)V
    .locals 4

    .line 357
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->isMultiline:Z

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 360
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->isMultiline:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 364
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 365
    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 366
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, -0x2

    .line 367
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0xa

    .line 368
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0xc

    .line 369
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 372
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 374
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 375
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, -0x1

    .line 378
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 379
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0xf

    .line 380
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 382
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    return-void
.end method

.method public setOnSectionsClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 198
    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-nez v2, :cond_1

    .line 202
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    .line 203
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    const/16 v3, 0x77

    invoke-static {v1, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 211
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 212
    iput-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    goto :goto_2

    .line 215
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    if-nez p1, :cond_5

    .line 216
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    const/16 v0, 0x38

    .line 217
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    :goto_1
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setPad(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x28

    .line 339
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    if-eqz v0, :cond_1

    int-to-float v1, p1

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 343
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click1Container:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 347
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->click2Container:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    return-void
.end method

.method public setSquareCheckBoxColor(III)V
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/CheckBoxSquare;->setColors(III)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 319
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TON_ADDRESS_VERSION:I

    if-ne p1, v0, :cond_1

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBox:Landroid/view/View;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 327
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxRound:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_2

    .line 328
    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    goto :goto_1

    .line 330
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->checkBoxSquare:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 332
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    .line 334
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public toggle(Z)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public updateTextColor()V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->textView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    goto :goto_3

    :cond_3
    :goto_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    :goto_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 187
    iget v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->currentType:I

    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TON_ADDRESS_VERSION:I

    if-ne v0, v1, :cond_4

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 190
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Cells/CheckBoxCell;->valueTextView:Landroid/widget/TextView;

    if-eq v0, v3, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    goto :goto_5

    :cond_6
    :goto_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    :goto_5
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    return-void
.end method
