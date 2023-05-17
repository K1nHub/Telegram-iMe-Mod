.class public Lorg/telegram/ui/Cells/SharedDocumentCell;
.super Landroid/widget/FrameLayout;
.source "SharedDocumentCell.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# instance fields
.field private TAG:I

.field private caption:Ljava/lang/CharSequence;

.field private captionTextView:Landroid/widget/TextView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private currentAccount:I

.field private dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

.field private dotSpan:Landroid/text/SpannableStringBuilder;

.field private downloadedSize:J

.field private drawDownloadIcon:Z

.field enterAlpha:F

.field private extTextView:Landroid/widget/TextView;

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field ignoreRequestLayout:Z

.field private loaded:Z

.field private loading:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private nameTextView:Landroid/widget/TextView;

.field private needDivider:Z

.field private placeholderImageView:Landroid/widget/ImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public rightDateTextView:Landroid/widget/TextView;

.field showReorderIcon:Z

.field showReorderIconProgress:F

.field private statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 110
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 74
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDownloadIcon:Z

    .line 78
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 704
    iput v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    move-object/from16 v6, p3

    .line 111
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 113
    iput v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    .line 114
    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->TAG:I

    .line 116
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    const/16 v6, 0xc

    const/4 v9, 0x0

    if-ne v2, v3, :cond_3

    const/16 v10, 0x2a

    const/16 v11, 0x2a

    .line 118
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_0

    const/4 v13, 0x5

    goto :goto_0

    :cond_0
    const/4 v13, 0x3

    :goto_0
    or-int/lit8 v13, v13, 0x30

    const/16 v14, 0xf

    if-eqz v12, :cond_1

    move v15, v9

    goto :goto_1

    :cond_1
    move v15, v14

    :goto_1
    const/16 v16, 0xc

    if-eqz v12, :cond_2

    move/from16 v17, v14

    goto :goto_2

    :cond_2
    move/from16 v17, v9

    :goto_2
    const/16 v18, 0x0

    move v12, v13

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_3
    const/16 v11, 0x28

    const/16 v12, 0x28

    .line 120
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_4

    const/4 v13, 0x5

    goto :goto_3

    :cond_4
    const/4 v13, 0x3

    :goto_3
    or-int/lit8 v13, v13, 0x30

    if-eqz v10, :cond_5

    move v14, v9

    goto :goto_4

    :cond_5
    move v14, v6

    :goto_4
    const/16 v15, 0x8

    if-eqz v10, :cond_6

    move/from16 v16, v6

    goto :goto_5

    :cond_6
    move/from16 v16, v9

    :goto_5
    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :goto_6
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    .line 124
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v4, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 128
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 129
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 130
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v12, 0x11

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 132
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    const/16 v4, 0x10

    if-ne v2, v3, :cond_a

    .line 134
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v14, 0x20

    const/4 v15, -0x2

    sget-boolean v16, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v16, :cond_7

    const/16 v17, 0x5

    goto :goto_7

    :cond_7
    const/16 v17, 0x3

    :goto_7
    or-int/lit8 v17, v17, 0x30

    const/16 v18, 0x14

    if-eqz v16, :cond_8

    move/from16 v19, v9

    goto :goto_8

    :cond_8
    move/from16 v19, v18

    :goto_8
    const/16 v20, 0x1c

    if-eqz v16, :cond_9

    move/from16 v21, v18

    goto :goto_9

    :cond_9
    move/from16 v21, v9

    :goto_9
    const/16 v22, 0x0

    move/from16 v16, v17

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 136
    :cond_a
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v14, 0x20

    const/4 v15, -0x2

    sget-boolean v16, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v16, :cond_b

    const/16 v17, 0x5

    goto :goto_a

    :cond_b
    const/16 v17, 0x3

    :goto_a
    or-int/lit8 v17, v17, 0x30

    if-eqz v16, :cond_c

    move/from16 v18, v9

    goto :goto_b

    :cond_c
    move/from16 v18, v4

    :goto_b
    const/16 v19, 0x16

    if-eqz v16, :cond_d

    move/from16 v20, v4

    goto :goto_c

    :cond_d
    move/from16 v20, v9

    :goto_c
    const/16 v21, 0x0

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :goto_d
    new-instance v13, Lorg/telegram/ui/Cells/SharedDocumentCell$1;

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell$1;-><init>(Lorg/telegram/ui/Cells/SharedDocumentCell;Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v14, 0x4

    .line 153
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v13, v15}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    if-ne v2, v3, :cond_11

    .line 155
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v15, 0x2a

    const/16 v16, 0x2a

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_e

    const/16 v17, 0x5

    goto :goto_e

    :cond_e
    const/16 v17, 0x3

    :goto_e
    or-int/lit8 v17, v17, 0x30

    if-eqz v13, :cond_f

    move/from16 v18, v9

    goto :goto_f

    :cond_f
    move/from16 v18, v4

    :goto_f
    const/16 v19, 0xc

    if-eqz v13, :cond_10

    move/from16 v20, v4

    goto :goto_10

    :cond_10
    move/from16 v20, v9

    :goto_10
    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v6, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 157
    :cond_11
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v15, 0x28

    const/16 v16, 0x28

    sget-boolean v17, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v17, :cond_12

    const/16 v18, 0x5

    goto :goto_11

    :cond_12
    const/16 v18, 0x3

    :goto_11
    or-int/lit8 v18, v18, 0x30

    if-eqz v17, :cond_13

    move/from16 v19, v9

    goto :goto_12

    :cond_13
    move/from16 v19, v6

    :goto_12
    const/16 v20, 0x8

    if-eqz v17, :cond_14

    goto :goto_13

    :cond_14
    move v6, v9

    :goto_13
    const/16 v21, 0x0

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v6

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v13, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :goto_14
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    .line 161
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v13}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v6, v3, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 165
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_15

    const/4 v11, 0x5

    goto :goto_15

    :cond_15
    const/4 v11, 0x3

    :goto_15
    or-int/2addr v11, v4

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41500000    # 13.0f

    const/16 v11, 0x8

    if-ne v2, v3, :cond_19

    .line 169
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 170
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 171
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/16 v16, -0x1

    const/16 v17, -0x2

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_16

    const/4 v13, 0x5

    goto :goto_16

    :cond_16
    const/4 v13, 0x3

    :goto_16
    or-int/lit8 v18, v13, 0x30

    if-eqz v10, :cond_17

    move/from16 v19, v11

    goto :goto_17

    :cond_17
    const/16 v19, 0x48

    :goto_17
    const/16 v20, 0x9

    if-eqz v10, :cond_18

    const/16 v21, 0x48

    goto :goto_18

    :cond_18
    move/from16 v21, v11

    :goto_18
    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_24

    :cond_19
    if-ne v2, v12, :cond_22

    .line 174
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v16, -0x1

    const/16 v17, -0x2

    .line 176
    sget-boolean v18, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v18, :cond_1a

    const/16 v19, 0x5

    goto :goto_19

    :cond_1a
    const/16 v19, 0x3

    :goto_19
    or-int/lit8 v19, v19, 0x30

    if-eqz v18, :cond_1b

    move/from16 v20, v4

    goto :goto_1a

    :cond_1b
    const/16 v20, 0x48

    :goto_1a
    const/16 v21, 0x5

    if-eqz v18, :cond_1c

    const/16 v22, 0x48

    goto :goto_1b

    :cond_1c
    move/from16 v22, v4

    :goto_1b
    const/16 v23, 0x0

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    .line 179
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, -0x2

    if-nez v8, :cond_1d

    .line 182
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {v10, v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c

    .line 185
    :cond_1d
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-static {v10, v10, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x4

    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    :goto_1c
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 190
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    .line 191
    invoke-direct {v0, v13}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 193
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 194
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 195
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 196
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1e

    const/4 v7, 0x5

    goto :goto_1d

    :cond_1e
    const/4 v7, 0x3

    :goto_1d
    or-int/2addr v7, v4

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 197
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    const/16 v24, -0x1

    const/16 v25, -0x2

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1f

    const/4 v8, 0x5

    goto :goto_1e

    :cond_1f
    const/4 v8, 0x3

    :goto_1e
    or-int/lit8 v26, v8, 0x30

    if-eqz v7, :cond_20

    move/from16 v27, v11

    goto :goto_1f

    :cond_20
    const/16 v27, 0x48

    :goto_1f
    const/16 v28, 0x1e

    if-eqz v7, :cond_21

    const/16 v29, 0x48

    goto :goto_20

    :cond_21
    move/from16 v29, v11

    :goto_20
    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    .line 201
    :cond_22
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 202
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    const/16 v24, -0x1

    const/16 v25, -0x2

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_23

    const/4 v8, 0x5

    goto :goto_21

    :cond_23
    const/4 v8, 0x3

    :goto_21
    or-int/lit8 v26, v8, 0x30

    if-eqz v7, :cond_24

    move/from16 v27, v11

    goto :goto_22

    :cond_24
    const/16 v27, 0x48

    :goto_22
    const/16 v28, 0x5

    if-eqz v7, :cond_25

    const/16 v29, 0x48

    goto :goto_23

    :cond_25
    move/from16 v29, v11

    :goto_23
    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :goto_24
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v25, Lorg/telegram/messenger/R$raw;->download_arrow:I

    const/16 v7, 0xe

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v27

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v28

    const/16 v29, 0x1

    const/16 v30, 0x0

    const-string v26, "download_arrow"

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v30}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 206
    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 207
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 208
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_startStopLoadIcon:I

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v10

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v5, 0x46

    if-ne v2, v3, :cond_29

    .line 211
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v24, 0xe

    const/16 v25, 0xe

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_26

    const/4 v13, 0x5

    goto :goto_25

    :cond_26
    const/4 v13, 0x3

    :goto_25
    or-int/lit8 v26, v13, 0x30

    if-eqz v10, :cond_27

    move/from16 v27, v11

    goto :goto_26

    :cond_27
    move/from16 v27, v5

    :goto_26
    const/16 v28, 0x25

    if-eqz v10, :cond_28

    const/16 v29, 0x48

    goto :goto_27

    :cond_28
    move/from16 v29, v11

    :goto_27
    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    .line 213
    :cond_29
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v24, 0xe

    const/16 v25, 0xe

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2a

    const/4 v13, 0x5

    goto :goto_28

    :cond_2a
    const/4 v13, 0x3

    :goto_28
    or-int/lit8 v26, v13, 0x30

    if-eqz v10, :cond_2b

    move/from16 v27, v11

    goto :goto_29

    :cond_2b
    move/from16 v27, v5

    :goto_29
    const/16 v28, 0x21

    if-eqz v10, :cond_2c

    const/16 v29, 0x48

    goto :goto_2a

    :cond_2c
    move/from16 v29, v11

    :goto_2a
    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :goto_2b
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    .line 217
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 219
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 220
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 221
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 222
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2d

    const/4 v7, 0x5

    goto :goto_2c

    :cond_2d
    const/4 v7, 0x3

    :goto_2c
    or-int/2addr v4, v7

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v2, v3, :cond_31

    .line 224
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 225
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/16 v24, -0x1

    const/16 v25, -0x2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2e

    const/4 v6, 0x5

    goto :goto_2d

    :cond_2e
    const/4 v6, 0x3

    :goto_2d
    or-int/lit8 v26, v6, 0x30

    if-eqz v5, :cond_2f

    move/from16 v27, v11

    goto :goto_2e

    :cond_2f
    const/16 v27, 0x48

    :goto_2e
    const/16 v28, 0x22

    if-eqz v5, :cond_30

    const/16 v29, 0x48

    goto :goto_2f

    :cond_30
    move/from16 v29, v11

    :goto_2f
    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_33

    .line 227
    :cond_31
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/16 v24, -0x1

    const/16 v25, -0x2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_32

    const/4 v6, 0x5

    goto :goto_30

    :cond_32
    const/4 v6, 0x3

    :goto_30
    or-int/lit8 v26, v6, 0x30

    if-eqz v5, :cond_33

    move/from16 v27, v11

    goto :goto_31

    :cond_33
    const/16 v27, 0x48

    :goto_31
    const/16 v28, 0x1e

    if-eqz v5, :cond_34

    const/16 v29, 0x48

    goto :goto_32

    :cond_34
    move/from16 v29, v11

    :goto_32
    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    :goto_33
    new-instance v4, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 232
    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 233
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v24, -0x1

    const/16 v25, 0x2

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_35

    const/4 v6, 0x5

    goto :goto_34

    :cond_35
    const/4 v6, 0x3

    :goto_34
    or-int/lit8 v26, v6, 0x30

    if-eqz v5, :cond_36

    move/from16 v27, v9

    goto :goto_35

    :cond_36
    const/16 v27, 0x48

    :goto_35
    const/16 v28, 0x36

    if-eqz v5, :cond_37

    const/16 v29, 0x48

    goto :goto_36

    :cond_37
    move/from16 v29, v9

    :goto_36
    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v4, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v5, 0x15

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 236
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v4, -0x1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v1, v4, v5, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 238
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 239
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    if-ne v2, v3, :cond_3b

    .line 241
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v13, 0x18

    const/16 v14, 0x18

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_38

    const/4 v7, 0x5

    goto :goto_37

    :cond_38
    const/4 v7, 0x3

    :goto_37
    or-int/lit8 v15, v7, 0x30

    const/16 v5, 0x26

    if-eqz v4, :cond_39

    move/from16 v16, v9

    goto :goto_38

    :cond_39
    move/from16 v16, v5

    :goto_38
    const/16 v17, 0x24

    if-eqz v4, :cond_3a

    move/from16 v18, v5

    goto :goto_39

    :cond_3a
    move/from16 v18, v9

    :goto_39
    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3d

    .line 243
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v13, 0x18

    const/16 v14, 0x18

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3c

    const/4 v7, 0x5

    goto :goto_3a

    :cond_3c
    const/4 v7, 0x3

    :goto_3a
    or-int/lit8 v15, v7, 0x30

    const/16 v5, 0x21

    if-eqz v4, :cond_3d

    move/from16 v16, v9

    goto :goto_3b

    :cond_3d
    move/from16 v16, v5

    :goto_3b
    const/16 v17, 0x1c

    if-eqz v4, :cond_3e

    move/from16 v18, v5

    goto :goto_3c

    :cond_3e
    move/from16 v18, v9

    :goto_3c
    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3d
    if-ne v2, v12, :cond_3f

    .line 247
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    .line 248
    new-instance v2, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v2}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-virtual {v1, v2, v9, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3f
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SharedDocumentCell;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/SharedDocumentCell;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 7

    .line 750
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    .line 751
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private updateDateView()V
    .locals 10

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 506
    iget-wide v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v5, :cond_1

    .line 507
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "%s / %s"

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    if-ne v3, v8, :cond_2

    .line 512
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    .line 515
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dotSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 514
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->rightDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 519
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const-string v1, "formatDateAtTime"

    invoke-static {v1, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v0, "%s, %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 712
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 713
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    sub-float v0, v1, v0

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v0, v9

    float-to-int v7, v0

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 718
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 719
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    mul-float/2addr v0, v9

    float-to-int v7, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 720
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 721
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDivider(Landroid/graphics/Canvas;)V

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 724
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 725
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDivider(Landroid/graphics/Canvas;)V

    .line 728
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIcon:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_4

    :cond_1
    const v3, 0x3dda740e

    if-eqz v0, :cond_2

    .line 729
    iget v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_2

    add-float/2addr v4, v3

    .line 730
    iput v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    .line 731
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 732
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_3

    sub-float/2addr v0, v3

    .line 733
    iput v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    .line 734
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 736
    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    .line 738
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 739
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 742
    iget v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    int-to-float v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 743
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 744
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 745
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 688
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->TAG:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 599
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 371
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 365
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 366
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 658
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    const-wide/16 p1, 0x0

    .line 659
    iput-wide p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    .line 660
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 693
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 695
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 642
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 643
    iget p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 644
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    const/16 p2, 0x16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 645
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 646
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getRight()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 647
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    const/4 p3, 0x3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p1, p2

    .line 649
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p5}, Landroid/widget/TextView;->getRight()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 650
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getTop()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getRight()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-boolean p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    sub-int/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 612
    iget p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v0, :cond_0

    .line 613
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 p2, 0x40

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x38

    if-nez p2, :cond_1

    .line 615
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 617
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/16 p1, 0x22

    .line 618
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    add-int/2addr p1, p2

    .line 619
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 620
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->ignoreRequestLayout:Z

    .line 621
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/16 v5, 0x82

    invoke-static {v0, v1, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->ellipsizeCenterEnd(Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/text/TextPaint;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->ignoreRequestLayout:Z

    .line 624
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 626
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 2

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 674
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    .line 676
    :cond_0
    iput-wide p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    .line 677
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    .line 678
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/high16 v1, 0x3f800000    # 1.0f

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 665
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 666
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    const-wide/16 v0, 0x0

    .line 667
    iput-wide v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    .line 668
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 634
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->ignoreRequestLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setDocument(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 385
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    move/from16 v1, p2

    move v14, v12

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    move v14, v13

    .line 386
    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    .line 387
    iput-object v11, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    .line 388
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 389
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-nez v14, :cond_1

    const-wide/16 v1, 0x0

    .line 391
    iput-wide v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->downloadedSize:J

    .line 394
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v15, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v1, :cond_18

    .line 398
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    move-object v7, v5

    if-eqz v6, :cond_5

    move v6, v13

    .line 399
    :goto_1
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    .line 400
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 401
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v9, :cond_4

    .line 402
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 403
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 409
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v6, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 410
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v5

    .line 412
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v8, :cond_c

    const-string v6, "video"

    .line 413
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "AttachGif"

    if-eqz v6, :cond_8

    .line 414
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 415
    sget v6, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 417
    :cond_7
    sget v6, Lorg/telegram/messenger/R$string;->AttachVideo:I

    const-string v8, "AttachVideo"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 419
    :cond_8
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v9, "image"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 420
    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 421
    sget v6, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 423
    :cond_9
    sget v6, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    const-string v8, "AttachPhoto"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 425
    :cond_a
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v8, "audio"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 426
    sget v6, Lorg/telegram/messenger/R$string;->AttachAudio:I

    const-string v8, "AttachAudio"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 428
    :cond_b
    sget v6, Lorg/telegram/messenger/R$string;->AttachDocument:I

    const-string v8, "AttachDocument"

    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :cond_c
    :goto_3
    if-nez v7, :cond_d

    move-object v7, v6

    .line 434
    :cond_d
    iget-object v8, v11, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 436
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 438
    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {v6, v8, v13}, Lorg/telegram/messenger/AndroidUtilities;->getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_f

    goto :goto_5

    :cond_f
    add-int/2addr v8, v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v6, 0x140

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    .line 446
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v7, 0x28

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    if-ne v6, v4, :cond_10

    move-object v4, v5

    .line 450
    :cond_10
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v7, :cond_15

    if-nez v6, :cond_11

    goto :goto_8

    .line 456
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-nez v4, :cond_12

    move v3, v12

    goto :goto_6

    :cond_12
    move v3, v13

    :goto_6
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 457
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-nez v4, :cond_13

    move v3, v12

    goto :goto_7

    :cond_13
    move v3, v13

    :goto_7
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 459
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_14

    .line 461
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v11, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "40_40"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_9

    .line 463
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {v6, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const-string v5, "40_40"

    const-string v10, "40_40_b"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v10

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_9

    .line 451
    :cond_15
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 453
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 454
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 466
    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateDateView()V

    .line 468
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->hasHighlightedWords()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 469
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 470
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->highlightedWords:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    .line 471
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_19

    if-nez v1, :cond_16

    goto :goto_a

    :cond_16
    move v15, v13

    .line 472
    :goto_a
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 475
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 476
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 480
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 486
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 487
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 489
    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->caption:Ljava/lang/CharSequence;

    .line 490
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->captionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 491
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    :cond_19
    :goto_b
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    xor-int/2addr v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 496
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 497
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    return-void
.end method

.method public setDrawDownloadIcon(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDownloadIcon:Z

    return-void
.end method

.method public setEnterAnimationAlpha(F)V
    .locals 1

    .line 756
    iget v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 757
    iput p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->enterAlpha:F

    .line 758
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 5

    const-string v0, "mp4"

    .line 774
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vthumb://0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const-string v0, ".jpg"

    .line 777
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 781
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 778
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumb://0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 779
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 8

    .line 315
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 316
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    goto :goto_1

    .line 318
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 319
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const-string v4, ":"

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v5, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v6, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v0, v5, v6, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumb://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 326
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, ""

    .line 332
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    iget v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    const-string v5, ", "

    if-eqz v4, :cond_4

    iget v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    if-eqz v4, :cond_4

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 339
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const-string v1, "%dx%d"

    invoke-static {v4, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_4
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_6

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 345
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_5
    iget v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_6
    iget-wide v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_8

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 351
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_7
    iget-wide v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 356
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    iget-wide v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :goto_0
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    if-nez p5, :cond_1

    .line 267
    iget-object p6, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-static {p1, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getThumbForNameOrMime(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p6, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 270
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 p6, 0x3

    if-nez p4, :cond_3

    if-eqz p5, :cond_2

    goto :goto_2

    .line 303
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->extTextView:Landroid/widget/TextView;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 304
    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->placeholderImageView:Landroid/widget/ImageView;

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 305
    iget p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    if-eq p4, p6, :cond_a

    .line 306
    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_3
    :goto_2
    if-eqz p4, :cond_4

    .line 274
    iget p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->viewType:I

    if-eq p2, p6, :cond_9

    .line 275
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string p5, "42_42"

    invoke-virtual {p2, p4, p5, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_4
    const/16 p2, 0x2a

    .line 278
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, p5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Lorg/telegram/ui/Components/CombinedDrawable;

    move-result-object p2

    .line 281
    sget p3, Lorg/telegram/messenger/R$drawable;->files_storage:I

    if-ne p5, p3, :cond_5

    .line 282
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    .line 283
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachIcon:I

    goto :goto_3

    .line 284
    :cond_5
    sget p3, Lorg/telegram/messenger/R$drawable;->files_gallery:I

    if-ne p5, p3, :cond_6

    .line 285
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    .line 286
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachIcon:I

    goto :goto_3

    .line 287
    :cond_6
    sget p3, Lorg/telegram/messenger/R$drawable;->files_music:I

    if-ne p5, p3, :cond_7

    .line 288
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    .line 289
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachIcon:I

    goto :goto_3

    .line 290
    :cond_7
    sget p3, Lorg/telegram/messenger/R$drawable;->files_internal:I

    if-ne p5, p3, :cond_8

    .line 291
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryBackground:I

    .line 292
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachIcon:I

    goto :goto_3

    .line 294
    :cond_8
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIconBackground:I

    .line 295
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    .line 297
    :goto_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result p3

    invoke-static {p2, p3, v0}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 298
    invoke-direct {p0, p4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getThemedColor(I)I

    move-result p3

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 299
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :cond_9
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->thumbImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_a
    :goto_5
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->needDivider:Z

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public showReorderIcon(ZZ)V
    .locals 1

    .line 763
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 766
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIcon:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 768
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIconProgress:F

    .line 770
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public updateFileExistIcon(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 524
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 525
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 526
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v3, 0x96

    .line 527
    invoke-virtual {v2, v3, v4}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 528
    new-instance v5, Landroid/transition/Fade;

    invoke-direct {v5}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v5, v3, v4}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 529
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 530
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 531
    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 533
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x48

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-eqz v1, :cond_e

    iget-object v7, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_e

    .line 534
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 535
    iget-boolean v7, v1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-nez v7, :cond_a

    iget-boolean v7, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->drawDownloadIcon:Z

    if-nez v7, :cond_1

    goto/16 :goto_4

    .line 549
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 550
    iget v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v1, v7, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 551
    iget v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    .line 552
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v7, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    const/16 v8, 0xf

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 554
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    if-eqz p1, :cond_3

    .line 556
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_2

    .line 558
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v8, v0

    :goto_1
    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 559
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 561
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_7

    .line 563
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v4, 0x56

    if-eqz v3, :cond_5

    move v3, v6

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 564
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    move v6, v4

    :cond_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 567
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    if-eqz p1, :cond_9

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_8

    .line 571
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 573
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    goto/16 :goto_9

    .line 575
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 536
    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_d

    .line 541
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_b

    move v1, v6

    goto :goto_5

    :cond_b
    move v1, v4

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 542
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move v4, v6

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 545
    :cond_d
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    .line 546
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 547
    iget p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    goto :goto_9

    .line 579
    :cond_e
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loading:Z

    .line 580
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->loaded:Z

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 583
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->statusImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_11

    .line 586
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_f

    move v0, v6

    goto :goto_7

    :cond_f
    move v0, v4

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 587
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    move v4, v6

    :goto_8
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->dateTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 590
    :cond_11
    iget p1, p0, Lorg/telegram/ui/Cells/SharedDocumentCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    :goto_9
    return-void
.end method
