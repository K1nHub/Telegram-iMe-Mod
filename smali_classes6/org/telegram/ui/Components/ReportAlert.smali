.class public Lorg/telegram/ui/Components/ReportAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ReportAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;
    }
.end annotation


# instance fields
.field private clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method public static synthetic $r8$lambda$MoqJ6CxOB6IDQIHyRcoYH4JsYDc(Lorg/telegram/ui/Components/ReportAlert;ZILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ReportAlert;->lambda$new$3(ZILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PzW4EtNMETs5nj8YgK6-arpZqE4(Lorg/telegram/ui/Components/ReportAlert;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ReportAlert;->lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f9gNu0vybeEjr7KPWO0a7LzO0SM(Lorg/telegram/ui/Components/ReportAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ReportAlert;->lambda$makeFocusable$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tjX8xxgrHt1L8CrwkY6Deoxv_10(Lorg/telegram/ui/Components/ReportAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ReportAlert;->lambda$makeFocusable$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 40
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReportAlert;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x1

    .line 110
    invoke-direct {v0, v1, v6, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v7, 0x0

    .line 111
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 112
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 114
    new-instance v8, Landroid/widget/ScrollView;

    invoke-direct {v8, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v8, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 116
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 118
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x33

    .line 119
    invoke-static {v10, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x78

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 125
    sget v11, Lorg/telegram/messenger/R$raw;->fork_template_name_input:I

    invoke-virtual {v8, v11, v10, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 127
    :cond_0
    sget v11, Lorg/telegram/messenger/R$raw;->report_police:I

    invoke-virtual {v8, v11, v10, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 128
    :goto_0
    invoke-virtual {v8}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/16 v12, 0xa0

    const/16 v13, 0xa0

    const/16 v14, 0x31

    const/16 v15, 0x11

    const/16 v16, 0xe

    const/16 v17, 0x11

    const/16 v18, 0x0

    .line 129
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v11, "fonts/rmedium.ttf"

    .line 132
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v11, 0x41c00000    # 24.0f

    .line 133
    invoke-virtual {v10, v6, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x5

    const/4 v12, 0x6

    if-eqz v4, :cond_2

    if-eqz v5, :cond_1

    .line 138
    sget v13, Lorg/telegram/messenger/R$string;->EditName:I

    const-string v14, "EditName"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    :cond_1
    sget v13, Lorg/telegram/messenger/R$string;->create_chat_template:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 144
    sget v13, Lorg/telegram/messenger/R$string;->ReportTitleSpam:I

    const-string v14, "ReportTitleSpam"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne v2, v12, :cond_4

    .line 146
    sget v13, Lorg/telegram/messenger/R$string;->ReportTitleFake:I

    const-string v14, "ReportTitleFake"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-ne v2, v6, :cond_5

    .line 148
    sget v13, Lorg/telegram/messenger/R$string;->ReportTitleViolence:I

    const-string v14, "ReportTitleViolence"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/4 v13, 0x2

    if-ne v2, v13, :cond_6

    .line 150
    sget v13, Lorg/telegram/messenger/R$string;->ReportTitleChild:I

    const-string v14, "ReportTitleChild"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    if-ne v2, v11, :cond_7

    .line 152
    sget v13, Lorg/telegram/messenger/R$string;->ReportTitlePornography:I

    const-string v14, "ReportTitlePornography"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    const/16 v13, 0x64

    if-ne v2, v13, :cond_8

    .line 154
    sget v13, Lorg/telegram/messenger/R$string;->ReportChat:I

    const-string v14, "ReportChat"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x31

    const/16 v17, 0x11

    const/16 v18, 0xc5

    const/16 v19, 0x11

    const/16 v20, 0x0

    .line 156
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41600000    # 14.0f

    .line 159
    invoke-virtual {v10, v6, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v4, :cond_9

    .line 164
    sget v13, Lorg/telegram/messenger/R$string;->chat_template_name_info:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 166
    :cond_9
    sget v13, Lorg/telegram/messenger/R$string;->ReportInfo:I

    const-string v14, "ReportInfo"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x31

    const/16 v17, 0x1e

    const/16 v18, 0xeb

    const/16 v19, 0x1e

    const/16 v20, 0x2c

    .line 167
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v10, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v13, 0x41900000    # 18.0f

    .line 170
    invoke-virtual {v10, v6, v13}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 171
    iget-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 172
    iget-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 173
    iget-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v10, v15, v11, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 175
    iget-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 176
    iget-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setLines(I)V

    .line 177
    iget-object v10, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 178
    iget-object v7, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 179
    iget-object v7, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_a

    const/4 v11, 0x5

    goto :goto_3

    :cond_a
    const/4 v11, 0x3

    :goto_3
    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 180
    iget-object v7, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v10, 0x2c001

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 181
    iget-object v7, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    if-eqz v4, :cond_c

    if-eqz v5, :cond_b

    .line 185
    iget-object v7, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v7, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 188
    :cond_b
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/Components/ReportAlert$1;

    invoke-direct {v7, v0, v8}, Lorg/telegram/ui/Components/ReportAlert$1;-><init>(Lorg/telegram/ui/Components/ReportAlert;Lorg/telegram/ui/Components/RLottieImageView;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v7, Lorg/telegram/messenger/R$string;->chat_template_name_hint:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 203
    :cond_c
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v7, Lorg/telegram/messenger/R$string;->ReportHint:I

    const-string v8, "ReportHint"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 204
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 205
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v7, 0x14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 206
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 207
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReportAlert;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    iget-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v10, -0x1

    const/16 v11, 0x24

    const/16 v12, 0x33

    const/16 v13, 0x11

    const/16 v14, 0x131

    const/16 v15, 0x11

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v9, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v5, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-direct {v5, v1, v3}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_d

    .line 220
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    sget v3, Lorg/telegram/messenger/R$string;->Done:I

    const-string v5, "Done"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 222
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    sget v3, Lorg/telegram/messenger/R$string;->ReportSend:I

    const-string v5, "ReportSend"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->access$000(Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v4, v2}, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReportAlert;ZI)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    const/4 v10, -0x1

    const/16 v11, 0x32

    const/16 v12, 0x33

    const/4 v13, 0x0

    const/16 v14, 0x165

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iput-boolean v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    return-void
.end method

.method private synthetic lambda$makeFocusable$0()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$makeFocusable$1()V
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 49
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 51
    new-instance v0, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ReportAlert;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->access$000(Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$3(ZILandroid/view/View;)V
    .locals 0

    .line 225
    iget-object p3, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->shake(Landroid/view/View;Z)V

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/ReportAlert;->onSend(ILjava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method public makeFocusable(Z)V
    .locals 3

    .line 46
    new-instance v0, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ReportAlert;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onSend(ILjava/lang/String;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
