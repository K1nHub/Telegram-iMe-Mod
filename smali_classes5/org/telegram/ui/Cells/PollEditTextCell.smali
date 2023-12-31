.class public Lorg/telegram/ui/Cells/PollEditTextCell;
.super Landroid/widget/FrameLayout;
.source "PollEditTextCell.java"


# instance fields
.field private alwaysShowText2:Z

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkBoxAnimation:Landroid/animation/AnimatorSet;

.field private deleteImageView:Landroid/widget/ImageView;

.field private moveImageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field public needVerticalDivider:Z

.field private showNextButton:Z

.field private textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$gnRIfJuSeH8__o8HbjOp7HTgrs0(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/view/View$OnClickListener;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 69
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    .line 72
    new-instance v5, Lorg/telegram/ui/Cells/PollEditTextCell$1;

    invoke-direct {v5, v0, v1, v3}, Lorg/telegram/ui/Cells/PollEditTextCell$1;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 113
    check-cast v5, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setAllowTextEntitiesIntersection(Z)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v5, Lorg/telegram/ui/Cells/PollEditTextCell$2;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Cells/PollEditTextCell$2;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 143
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 144
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 145
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 147
    iget-object v5, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getImeOptions()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 149
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v5

    or-int/lit16 v5, v5, 0x4000

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 150
    iget-object v3, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/16 v7, 0xa

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v8, 0xb

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v3, 0x5

    const/4 v5, 0x3

    if-eqz v2, :cond_d

    .line 153
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v7, -0x1

    const/4 v8, -0x2

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    or-int/lit8 v10, v10, 0x10

    const/16 v11, 0x3a

    const/16 v12, 0x40

    if-eqz v9, :cond_2

    move v13, v11

    goto :goto_2

    :cond_2
    move v13, v12

    :goto_2
    const/4 v14, 0x0

    if-nez v9, :cond_3

    move v12, v11

    :cond_3
    const/4 v15, 0x0

    move v9, v10

    move v10, v13

    move v11, v14

    move v13, v15

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    .line 156
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 157
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$drawable;->poll_reorder:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 160
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    const/16 v10, 0x30

    const/16 v11, 0x30

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v5

    :goto_3
    or-int/lit8 v12, v8, 0x30

    const/4 v13, 0x6

    const/4 v14, 0x2

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    .line 163
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 164
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menuSelector:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/messenger/R$drawable;->poll_remove:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v6, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 169
    iget-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v8, "Delete"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    const/16 v10, 0x30

    const/16 v11, 0x32

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v3

    :goto_4
    or-int/lit8 v12, v8, 0x30

    if-eqz v6, :cond_6

    move v13, v5

    goto :goto_5

    :cond_6
    move v13, v7

    :goto_5
    const/4 v14, 0x0

    if-eqz v6, :cond_7

    move v15, v7

    goto :goto_6

    :cond_7
    move v15, v5

    :goto_6
    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v6, 0xd

    .line 173
    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 174
    iget-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_7

    :cond_8
    move v6, v3

    :goto_7
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 175
    iget-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v10, 0x30

    const/16 v11, 0x18

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_9

    move v8, v5

    goto :goto_8

    :cond_9
    move v8, v3

    :goto_8
    or-int/lit8 v12, v8, 0x30

    const/16 v8, 0x14

    if-eqz v6, :cond_a

    move v13, v8

    goto :goto_9

    :cond_a
    move v13, v7

    :goto_9
    const/16 v14, 0x2b

    if-eqz v6, :cond_b

    move v15, v7

    goto :goto_a

    :cond_b
    move v15, v8

    :goto_a
    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v6, 0x15

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, -0x1

    .line 178
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v1, v9, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 179
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrQuizCorrectAnswer:I

    const-string v6, "AccDescrQuizCorrectAnswer"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 181
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v4, v7}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 182
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 183
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 184
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v6, 0x30

    const/16 v7, 0x30

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    goto :goto_b

    :cond_c
    move v3, v5

    :goto_b
    or-int/lit8 v8, v3, 0x30

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    new-instance v2, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Cells/PollEditTextCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    .line 192
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, -0x1

    const/4 v7, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    move v3, v5

    :goto_c
    or-int/lit8 v8, v3, 0x10

    const/16 v9, 0x13

    const/4 v10, 0x0

    const/16 v11, 0x13

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_d
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PollEditTextCell;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->showNextButton:Z

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p0, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->onCheckBoxClick(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method


# virtual methods
.method public addTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public callOnDelete()V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method public createErrorTextView()V
    .locals 11

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->alwaysShowText2:Z

    .line 198
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xd

    .line 199
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x30

    const/16 v5, 0x18

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int/lit8 v6, v2, 0x30

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    const/16 v8, 0x11

    if-eqz v1, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected drawDivider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method protected isChecked(Lorg/telegram/ui/Cells/PollEditTextCell;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onActionModeStart(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 237
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->shouldShowCheckBox()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowCheckBox(ZZ)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->isChecked(Lorg/telegram/ui/Cells/PollEditTextCell;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method protected onCheckBoxClick(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 1

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 370
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->needVerticalDivider:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 372
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 373
    div-int/lit8 v2, v0, 0x4

    int-to-float v4, v1

    int-to-float v5, v2

    add-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    sub-int/2addr v0, v2

    int-to-float v7, v0

    .line 374
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 377
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->needDivider:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->drawDivider()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x3f

    const/16 v2, 0x14

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected onEditTextDraw(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onFieldTouchUp(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 208
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 210
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 211
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 213
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p2, :cond_2

    .line 214
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/view/View;->measure(II)V

    .line 216
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_3

    .line 217
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/view/View;->measure(II)V

    .line 220
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez p2, :cond_4

    const/16 p2, 0x2a

    goto :goto_0

    .line 222
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-nez p2, :cond_5

    const/16 p2, 0x46

    goto :goto_0

    :cond_5
    const/16 p2, 0x7a

    .line 227
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr v2, p2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/EditText;->measure(II)V

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p2

    const/16 v0, 0x32

    .line 229
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->alwaysShowText2:Z

    if-nez v0, :cond_7

    const/16 v0, 0x34

    .line 231
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-lt p2, v0, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setShowCheckBox(ZZ)V
    .locals 9

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 313
    iput-object v3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    .line 315
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    .line 317
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    .line 318
    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_4

    move v8, v0

    goto :goto_1

    :cond_4
    move v8, v3

    :goto_1
    aput v8, v7, v1

    .line 319
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    if-eqz p1, :cond_5

    move v0, v3

    :cond_5
    aput v0, v7, v1

    .line 320
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v4, v2

    .line 318
    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 322
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBoxAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 324
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_7

    move v1, v0

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    move v0, v3

    :cond_8
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_3
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->showNextButton:Z

    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView2:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 343
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 344
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    .line 345
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    return-void
.end method

.method protected shouldShowCheckBox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
