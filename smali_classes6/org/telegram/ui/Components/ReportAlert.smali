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

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/ReportAlert;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x1

    .line 110
    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/4 v6, 0x0

    .line 111
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 112
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 114
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v7, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 116
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 118
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x33

    .line 119
    invoke-static {v9, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v7, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x78

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 125
    sget v10, Lorg/telegram/messenger/R$raw;->fork_template_name_input:I

    invoke-virtual {v7, v10, v9, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 127
    :cond_0
    sget v10, Lorg/telegram/messenger/R$raw;->report_police:I

    invoke-virtual {v7, v10, v9, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 128
    :goto_0
    invoke-virtual {v7}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    const/16 v11, 0xa0

    const/16 v12, 0xa0

    const/16 v13, 0x31

    const/16 v14, 0x11

    const/16 v15, 0xe

    const/16 v16, 0x11

    const/16 v17, 0x0

    .line 129
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "fonts/rmedium.ttf"

    .line 132
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v10, 0x41c00000    # 24.0f

    .line 133
    invoke-virtual {v9, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v10, "dialogTextBlack"

    .line 134
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x5

    const/4 v11, 0x6

    if-eqz v3, :cond_2

    if-eqz v4, :cond_1

    .line 138
    sget v12, Lorg/telegram/messenger/R$string;->EditName:I

    const-string v13, "EditName"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    :cond_1
    sget v12, Lorg/telegram/messenger/R$string;->create_chat_template:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 144
    sget v12, Lorg/telegram/messenger/R$string;->ReportTitleSpam:I

    const-string v13, "ReportTitleSpam"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne v2, v11, :cond_4

    .line 146
    sget v12, Lorg/telegram/messenger/R$string;->ReportTitleFake:I

    const-string v13, "ReportTitleFake"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-ne v2, v5, :cond_5

    .line 148
    sget v12, Lorg/telegram/messenger/R$string;->ReportTitleViolence:I

    const-string v13, "ReportTitleViolence"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/4 v12, 0x2

    if-ne v2, v12, :cond_6

    .line 150
    sget v12, Lorg/telegram/messenger/R$string;->ReportTitleChild:I

    const-string v13, "ReportTitleChild"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    if-ne v2, v10, :cond_7

    .line 152
    sget v12, Lorg/telegram/messenger/R$string;->ReportTitlePornography:I

    const-string v13, "ReportTitlePornography"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    const/16 v12, 0x64

    if-ne v2, v12, :cond_8

    .line 154
    sget v12, Lorg/telegram/messenger/R$string;->ReportChat:I

    const-string v13, "ReportChat"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x31

    const/16 v16, 0x11

    const/16 v17, 0xc5

    const/16 v18, 0x11

    const/16 v19, 0x0

    .line 156
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x41600000    # 14.0f

    .line 159
    invoke-virtual {v9, v5, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v12, "dialogTextGray3"

    .line 160
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v3, :cond_9

    .line 164
    sget v12, Lorg/telegram/messenger/R$string;->chat_template_name_info:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 166
    :cond_9
    sget v12, Lorg/telegram/messenger/R$string;->ReportInfo:I

    const-string v13, "ReportInfo"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x31

    const/16 v16, 0x1e

    const/16 v17, 0xeb

    const/16 v18, 0x1e

    const/16 v19, 0x2c

    .line 167
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v9, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v12, 0x41900000    # 18.0f

    .line 170
    invoke-virtual {v9, v5, v12}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 171
    iget-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v12, "windowBackgroundWhiteHintText"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 172
    iget-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v12, "windowBackgroundWhiteBlackText"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setTextColor(I)V

    .line 173
    iget-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v14, "windowBackgroundWhiteInputField"

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const-string v15, "windowBackgroundWhiteInputFieldActivated"

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v15

    const-string v10, "windowBackgroundWhiteRedText3"

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v14, v15, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    .line 175
    iget-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 176
    iget-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v5}, Landroid/widget/EditText;->setLines(I)V

    .line 177
    iget-object v9, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 178
    iget-object v6, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 179
    iget-object v6, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_a

    const/4 v10, 0x5

    goto :goto_3

    :cond_a
    const/4 v10, 0x3

    :goto_3
    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 180
    iget-object v6, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0x2c001

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 181
    iget-object v6, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    if-eqz v3, :cond_c

    if-eqz v4, :cond_b

    .line 185
    iget-object v6, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v6, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 188
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Components/ReportAlert$1;

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Components/ReportAlert$1;-><init>(Lorg/telegram/ui/Components/ReportAlert;Lorg/telegram/ui/Components/RLottieImageView;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/messenger/R$string;->chat_template_name_hint:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 203
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/messenger/R$string;->ReportHint:I

    const-string v7, "ReportHint"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 204
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 205
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 206
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 207
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReportAlert;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    iget-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v14, -0x1

    const/16 v15, 0x24

    const/16 v16, 0x33

    const/16 v17, 0x11

    const/16 v18, 0x131

    const/16 v19, 0x11

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v4, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    .line 217
    invoke-virtual {v4, v13}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_d

    .line 220
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    const-string v6, "Done"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 222
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    sget v4, Lorg/telegram/messenger/R$string;->ReportSend:I

    const-string v6, "ReportSend"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;->access$000(Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v3, v2}, Lorg/telegram/ui/Components/ReportAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReportAlert;ZI)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, v0, Lorg/telegram/ui/Components/ReportAlert;->clearButton:Lorg/telegram/ui/Components/ReportAlert$BottomSheetCell;

    const/4 v9, -0x1

    const/16 v10, 0x32

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/16 v13, 0x165

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iput-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

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
