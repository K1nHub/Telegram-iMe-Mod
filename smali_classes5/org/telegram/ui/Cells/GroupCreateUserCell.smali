.class public Lorg/telegram/ui/Cells/GroupCreateUserCell;
.super Landroid/widget/FrameLayout;
.source "GroupCreateUserCell.java"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkBoxType:I

.field private checkProgress:F

.field private currentAccount:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentObject:Ljava/lang/Object;

.field private currentStatus:Ljava/lang/CharSequence;

.field private drawDivider:Z

.field private forceDarkTheme:Z

.field private isChecked:Z

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private showSelfAsSaved:Z

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$5M_j8w1216bL31kKWHdVWNfrFdQ(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lambda$setChecked$0(Landroid/animation/ValueAnimator;)V

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

    .line 74
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 78
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    .line 79
    iput v2, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBoxType:I

    move/from16 v3, p5

    .line 80
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    const/4 v3, 0x0

    .line 82
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    move/from16 v4, p3

    .line 83
    iput v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    move/from16 v4, p4

    .line 84
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->showSelfAsSaved:Z

    .line 85
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 87
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v5, 0x18

    .line 88
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 89
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v5, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    or-int/lit8 v11, v8, 0x30

    if-eqz v5, :cond_1

    move v12, v3

    goto :goto_1

    :cond_1
    iget v8, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v8, v8, 0xd

    move v12, v8

    :goto_1
    const/4 v13, 0x6

    if-eqz v5, :cond_2

    iget v5, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v5, v5, 0xd

    move v14, v5

    goto :goto_2

    :cond_2
    move v14, v3

    :goto_2
    const/4 v15, 0x0

    const/16 v9, 0x2e

    const/16 v10, 0x2e

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v4, Lorg/telegram/ui/Cells/GroupCreateUserCell$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell$1;-><init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 98
    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 99
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v5, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v5, :cond_3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    goto :goto_3

    :cond_3
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_3
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 100
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 102
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    move v5, v7

    :goto_4
    or-int/lit8 v5, v5, 0x30

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 103
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, -0x1

    const/16 v9, 0x14

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    move v10, v6

    goto :goto_5

    :cond_5
    move v10, v7

    :goto_5
    or-int/lit8 v10, v10, 0x30

    const/16 v15, 0x1c

    const/16 v16, 0x48

    if-eqz v5, :cond_6

    move v11, v15

    goto :goto_6

    :cond_6
    move/from16 v11, v16

    :goto_6
    iget v12, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v11, v12

    const/16 v13, 0xa

    if-eqz v5, :cond_7

    move/from16 v5, v16

    goto :goto_7

    :cond_7
    move v5, v15

    :goto_7
    add-int/2addr v5, v12

    const/4 v14, 0x0

    move v12, v13

    move v13, v5

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v4, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xe

    .line 106
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 107
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_8

    :cond_8
    move v5, v7

    :goto_8
    or-int/lit8 v5, v5, 0x30

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 108
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v8, -0x1

    const/16 v9, 0x14

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    move v10, v6

    goto :goto_9

    :cond_9
    move v10, v7

    :goto_9
    or-int/lit8 v10, v10, 0x30

    if-eqz v5, :cond_a

    move v11, v15

    goto :goto_a

    :cond_a
    move/from16 v11, v16

    :goto_a
    iget v12, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v11, v12

    const/16 v13, 0x20

    if-eqz v5, :cond_b

    move/from16 v15, v16

    :cond_b
    add-int v5, v15, v12

    const/4 v14, 0x0

    move v12, v13

    move v13, v5

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 111
    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x15

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, -0x1

    .line 112
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v1, v4, v5}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 113
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 114
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 115
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v8, 0x18

    const/16 v9, 0x18

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    goto :goto_b

    :cond_c
    move v6, v7

    :goto_b
    or-int/lit8 v10, v6, 0x30

    if-eqz v2, :cond_d

    move v11, v3

    goto :goto_c

    :cond_d
    iget v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v4, v4, 0x28

    move v11, v4

    :goto_c
    const/16 v12, 0x21

    if-eqz v2, :cond_e

    iget v2, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v2, v2, 0x27

    move v13, v2

    goto :goto_d

    :cond_e
    move v13, v3

    :goto_d
    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_f
    const/4 v1, 0x2

    if-ne v2, v1, :cond_10

    .line 117
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->paint:Landroid/graphics/Paint;

    .line 118
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    :cond_10
    :goto_e
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$setChecked$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 160
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 161
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e3851ec    # 0.18f

    if-eqz v0, :cond_0

    mul-float/2addr v2, p1

    sub-float v0, v1, v2

    goto :goto_0

    :cond_0
    const v0, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 162
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 163
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 164
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sub-float p1, v1, p1

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkProgress:F

    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0

    .line 195
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 426
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 427
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBoxType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkProgress:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->paint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 430
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    int-to-float v1, v2

    const/16 v2, 0x12

    .line 431
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 433
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    if-eqz v0, :cond_5

    .line 434
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v0, v0, 0x48

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 435
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v1, v1, 0x48

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 436
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v1, :cond_4

    .line 437
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v0

    .line 438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    int-to-float v7, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v8, v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    int-to-float v5, v0

    .line 440
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    int-to-float v7, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v8, v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 452
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 453
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 209
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    goto/16 :goto_4

    .line 149
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBoxType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 150
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 153
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p2, :cond_3

    new-array p1, v1, [F

    .line 158
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    .line 159
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/GroupCreateUserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/GroupCreateUserCell$2;-><init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 177
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    const v0, 0x3f51eb85    # 0.82f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 179
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iput v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkProgress:F

    .line 181
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_7
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDrawDivider(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setForbiddenCheck(Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setForbidden(Z)V

    return-void
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    .line 132
    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 133
    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    .line 135
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    return-void
.end method

.method public setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 127
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    return-void
.end method

.method public update(I)V
    .locals 11

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    instance-of v0, v0, Ljava/lang/String;

    const-string v1, "50_50"

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    .line 225
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v6, 0x26

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x19

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 229
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_1

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x1f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 232
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 236
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v3, v0

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "channels"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v7

    goto :goto_2

    :sswitch_1
    const-string v3, "muted"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v8

    goto :goto_2

    :sswitch_2
    const-string v3, "read"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v9

    goto :goto_2

    :sswitch_3
    const-string v3, "bots"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v10

    goto :goto_2

    :sswitch_4
    const-string v3, "contacts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_5
    const-string v3, "non_contacts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_6
    const-string v3, "groups"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    move v3, v5

    goto :goto_2

    :sswitch_7
    const-string v6, "archived"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 248
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 254
    :pswitch_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 257
    :pswitch_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 251
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 239
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 242
    :pswitch_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 245
    :pswitch_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_3

    .line 260
    :pswitch_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 263
    :goto_3
    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 264
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v4, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    .line 268
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    const/16 v6, 0x13

    if-eqz v0, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 271
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 273
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v7, 0x2e

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_e

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v7, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v2, v7

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 276
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x28

    if-eqz v0, :cond_d

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v7, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v2, v7

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .line 279
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v7, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v2, v7

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 283
    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_26

    .line 284
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 285
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->showSelfAsSaved:Z

    if-eqz v2, :cond_f

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v3, "SavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 287
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v4, v1, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 290
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void

    .line 293
    :cond_f
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_10

    .line 294
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_6

    :cond_10
    move-object v1, v4

    :goto_6
    if-eqz p1, :cond_19

    .line 298
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_14

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_11

    if-eqz v1, :cond_13

    :cond_11
    if-nez v2, :cond_12

    if-nez v1, :cond_13

    :cond_12
    if-eqz v2, :cond_14

    if-eqz v1, :cond_14

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_13

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v2, v1, :cond_14

    :cond_13
    move v1, v5

    goto :goto_7

    :cond_14
    move v1, v3

    .line 303
    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez v2, :cond_16

    if-nez v1, :cond_16

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_16

    .line 305
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_15

    .line 306
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_8

    :cond_15
    move v2, v3

    .line 308
    :goto_8
    iget v6, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    if-eq v2, v6, :cond_16

    move v1, v5

    :cond_16
    if-nez v1, :cond_17

    .line 312
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_17

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_17

    .line 313
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    .line 314
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move v1, v5

    goto :goto_9

    :cond_17
    move-object p1, v4

    :cond_18
    :goto_9
    if-nez v1, :cond_1a

    return-void

    :cond_19
    move-object p1, v4

    .line 322
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 323
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_1b

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_1b
    iput v3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    .line 326
    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    goto :goto_a

    :cond_1c
    if-nez p1, :cond_1d

    .line 329
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 333
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez p1, :cond_25

    .line 334
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_1f

    .line 335
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_1e

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_1e
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v2, "Bot"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_c

    .line 339
    :cond_1f
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long p1, v1, v6

    if-eqz p1, :cond_23

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p1, :cond_20

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-gt p1, v1, :cond_23

    :cond_20
    iget p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_b

    .line 344
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_22

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_22
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 346
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_c

    .line 340
    :cond_23
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_24

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    :cond_24
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->Online:I

    const-string v2, "Online"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 351
    :cond_25
    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto/16 :goto_12

    .line 353
    :cond_26
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 354
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_27

    .line 355
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_d

    :cond_27
    move-object v1, v4

    :goto_d
    if-eqz p1, :cond_2e

    .line 359
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_2b

    .line 360
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_28

    if-eqz v1, :cond_2a

    :cond_28
    if-nez v2, :cond_29

    if-nez v1, :cond_2a

    :cond_29
    if-eqz v2, :cond_2b

    if-eqz v1, :cond_2b

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2a

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v2, v1, :cond_2b

    :cond_2a
    move v1, v5

    goto :goto_e

    :cond_2b
    move v1, v3

    :goto_e
    if-nez v1, :cond_2c

    .line 364
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_2c

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_2c

    .line 365
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 366
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v1, v5

    goto :goto_f

    :cond_2c
    move-object p1, v4

    :cond_2d
    :goto_f
    if-nez v1, :cond_2f

    return-void

    :cond_2e
    move-object p1, v4

    .line 375
    :cond_2f
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 377
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_30

    .line 378
    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    goto :goto_10

    :cond_30
    if-nez p1, :cond_31

    .line 381
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_31
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 385
    :goto_10
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez p1, :cond_39

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 387
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_32

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_32
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 388
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_34

    .line 389
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_33

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Subscribers"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_11

    .line 392
    :cond_33
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Members"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 394
    :cond_34
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz p1, :cond_35

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v2, "MegaLocation"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 396
    :cond_35
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 397
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_36

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v2, "ChannelPrivate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 400
    :cond_36
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v2, "MegaPrivate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 403
    :cond_37
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_38

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v2, "ChannelPublic"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 406
    :cond_38
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v2, "MegaPublic"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 411
    :cond_39
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    move-object v4, v0

    .line 416
    :goto_12
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v4, :cond_3a

    iget-boolean v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_3a

    const/16 v0, 0xe

    goto :goto_13

    :cond_3a
    const/16 v0, 0x18

    :goto_13
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3c

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v1, :cond_3b

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_3b
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_3c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x664cc81e -> :sswitch_7
        -0x49c2262c -> :sswitch_6
        -0x4760427b -> :sswitch_5
        -0x21d29fad -> :sswitch_4
        0x2e3b8c -> :sswitch_3
        0x355996 -> :sswitch_2
        0x636f16b -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
