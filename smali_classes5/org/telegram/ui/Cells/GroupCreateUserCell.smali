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

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private premiumBlocked:Z

.field private final premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showPremiumBlocked:Z

.field private showSelfAsSaved:Z

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$TAW2F0Ojc6c0FBxvBDgRdOXoegg(Lorg/telegram/ui/Cells/GroupCreateUserCell;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lambda$showPremiumBlocked$0([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VcANfpqFgWJngf3N--1R8p5Hfjo(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lambda$setChecked$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 111
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p6

    .line 115
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    .line 82
    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 116
    iput-object v10, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 117
    iput v9, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBoxType:I

    move/from16 v0, p5

    .line 118
    iput-boolean v0, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    move/from16 v1, p3

    .line 121
    iput v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    move/from16 v1, p4

    .line 122
    iput-boolean v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->showSelfAsSaved:Z

    .line 123
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 125
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x18

    .line 126
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 127
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    or-int/lit8 v13, v5, 0x30

    if-eqz v2, :cond_1

    move v14, v0

    goto :goto_1

    :cond_1
    iget v5, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v5, v5, 0xd

    move v14, v5

    :goto_1
    const/4 v15, 0x6

    if-eqz v2, :cond_2

    iget v2, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v2, v2, 0xd

    move/from16 v16, v2

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    :goto_2
    const/16 v17, 0x0

    const/16 v11, 0x2e

    const/16 v12, 0x2e

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v1, Lorg/telegram/ui/Cells/GroupCreateUserCell$1;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Cells/GroupCreateUserCell$1;-><init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 136
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 137
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    goto :goto_3

    :cond_3
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_3
    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 138
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 140
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_4
    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 141
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v10, -0x1

    const/16 v11, 0x14

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, v4

    :goto_5
    or-int/lit8 v12, v5, 0x30

    const/16 v5, 0x1c

    const/16 v6, 0x48

    if-eqz v2, :cond_6

    move v13, v5

    goto :goto_6

    :cond_6
    move v13, v6

    :goto_6
    iget v14, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v13, v14

    const/16 v15, 0xa

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_7

    :cond_7
    move v2, v5

    :goto_7
    add-int/2addr v2, v14

    const/16 v16, 0x0

    move v14, v15

    move v15, v2

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v2, 0xe

    .line 144
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 145
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    move v2, v4

    :goto_8
    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 146
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v10, -0x1

    const/16 v11, 0x14

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    move v12, v3

    goto :goto_9

    :cond_9
    move v12, v4

    :goto_9
    or-int/lit8 v12, v12, 0x30

    if-eqz v2, :cond_a

    move v13, v5

    goto :goto_a

    :cond_a
    move v13, v6

    :goto_a
    iget v14, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v13, v14

    const/16 v15, 0x20

    if-eqz v2, :cond_b

    move v5, v6

    :cond_b
    add-int v2, v5, v14

    const/16 v16, 0x0

    move v14, v15

    move v15, v2

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    if-ne v9, v1, :cond_f

    .line 149
    new-instance v1, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0x15

    invoke-direct {v1, v8, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v2, -0x1

    .line 150
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v1, v2, v5, v6}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 151
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 152
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 153
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v8, 0x18

    const/16 v9, 0x18

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    goto :goto_b

    :cond_c
    move v3, v4

    :goto_b
    or-int/lit8 v10, v3, 0x30

    if-eqz v2, :cond_d

    move v11, v0

    goto :goto_c

    :cond_d
    iget v3, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v3, v3, 0x28

    move v11, v3

    :goto_c
    const/16 v12, 0x21

    if-eqz v2, :cond_e

    iget v2, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v2, v2, 0x27

    move v13, v2

    goto :goto_d

    :cond_e
    move v13, v0

    :goto_d
    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_f
    const/4 v2, 0x2

    if-ne v9, v2, :cond_10

    .line 155
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->paint:Landroid/graphics/Paint;

    .line 156
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v1, v7, Lorg/telegram/ui/Cells/GroupCreateUserCell;->paint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    :cond_10
    :goto_e
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$setChecked$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 198
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 199
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

    .line 200
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sub-float p1, v1, p1

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkProgress:F

    .line 203
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$showPremiumBlocked$0([Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->updatePremiumBlocked(Z)V

    return-void
.end method

.method private updatePremiumBlocked(Z)V
    .locals 5

    .line 100
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlocked:Z

    .line 101
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->showPremiumBlocked:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isUserPremiumBlocked(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlocked:Z

    if-eq v0, v1, :cond_2

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 492
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 494
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlocked:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 496
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 497
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v6, v4

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x413547ae    # 11.33f

    .line 501
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 502
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v4, :cond_0

    .line 503
    new-instance v4, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget-object v13, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 505
    :cond_0
    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v6, v7

    float-to-int v15, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    float-to-int v7, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    float-to-int v8, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v3

    float-to-int v9, v9

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 506
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v3, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 507
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 509
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 511
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 512
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    const/high16 v8, 0x3f600000    # 0.875f

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float v7, v6, v7

    float-to-int v7, v7

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float/2addr v9, v8

    mul-float/2addr v9, v2

    sub-float v9, v3, v9

    float-to-int v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 514
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    mul-float/2addr v10, v8

    mul-float/2addr v10, v2

    add-float/2addr v6, v10

    float-to-int v6, v6

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 515
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    mul-float/2addr v10, v8

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    float-to-int v3, v3

    .line 511
    invoke-virtual {v4, v7, v9, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 517
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 518
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public getCheckBox()Lorg/telegram/ui/Components/CheckBox2;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlocked:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    return v0

    .line 233
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 468
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->premiumBlocked:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBoxType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 473
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/16 v2, 0x12

    .line 476
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

    .line 478
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    if-eqz v0, :cond_6

    .line 479
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v0, v0, 0x48

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 480
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/lit8 v1, v1, 0x48

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 481
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v1, :cond_5

    .line 482
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerExtraPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v0

    .line 483
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

    goto :goto_3

    :cond_5
    int-to-float v5, v0

    .line 485
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

    :cond_6
    :goto_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 530
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 531
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 532
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 533
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 247
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

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    goto/16 :goto_4

    .line 187
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBoxType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 188
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 191
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p2, :cond_3

    new-array p1, v1, [F

    .line 196
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    .line 197
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/GroupCreateUserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/GroupCreateUserCell$2;-><init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 215
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

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 217
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iput v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkProgress:F

    .line 219
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

    .line 241
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setForbiddenCheck(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setForbidden(Z)V

    return-void
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    .line 170
    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    .line 171
    iput-object p2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 172
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    .line 173
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    return-void
.end method

.method public setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 165
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->drawDivider:Z

    return-void
.end method

.method public showPremiumBlocked()Lorg/telegram/ui/Cells/GroupCreateUserCell;
    .locals 3

    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->showPremiumBlocked:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->showPremiumBlocked:Z

    .line 93
    iget v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    new-instance v2, Lorg/telegram/ui/Cells/GroupCreateUserCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/GroupCreateUserCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/GroupCreateUserCell;)V

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-object p0
.end method

.method public update(I)V
    .locals 11

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    instance-of v0, v0, Ljava/lang/String;

    const-string v1, "50_50"

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_b

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 264
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

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x19

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 267
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x1f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 270
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 274
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "channels"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    move v0, v7

    goto :goto_1

    :sswitch_1
    const-string v6, "muted"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v8

    goto :goto_1

    :sswitch_2
    const-string v6, "read"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v9

    goto :goto_1

    :sswitch_3
    const-string v6, "bots"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v10

    goto :goto_1

    :sswitch_4
    const-string v6, "contacts"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v6, "non_contacts"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v6, "groups"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    move v0, v5

    goto :goto_1

    :sswitch_7
    const-string v6, "archived"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 286
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2

    .line 292
    :pswitch_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2

    .line 295
    :pswitch_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2

    .line 289
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2

    .line 277
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2

    .line 280
    :pswitch_5
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2

    .line 283
    :pswitch_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto :goto_2

    .line 298
    :pswitch_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 301
    :goto_2
    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v4, v1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    .line 306
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    const/16 v6, 0x13

    if-eqz v0, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 309
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 311
    :goto_3
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

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_e

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v7, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v2, v7

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 314
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v2, 0x28

    if-eqz v0, :cond_d

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v7, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->padding:I

    add-int/2addr v2, v7

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 317
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

    .line 321
    :cond_e
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentObject:Ljava/lang/Object;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_26

    .line 322
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 323
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->showSelfAsSaved:Z

    if-eqz v2, :cond_f

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v3, "SavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v4, v1, v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void

    .line 331
    :cond_f
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_10

    .line 332
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_5

    :cond_10
    move-object v1, v4

    :goto_5
    if-eqz p1, :cond_19

    .line 336
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_14

    .line 337
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

    goto :goto_6

    :cond_14
    move v1, v3

    .line 341
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez v2, :cond_16

    if-nez v1, :cond_16

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_16

    .line 343
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_15

    .line 344
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_7

    :cond_15
    move v2, v3

    .line 346
    :goto_7
    iget v6, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    if-eq v2, v6, :cond_16

    move v1, v5

    :cond_16
    if-nez v1, :cond_17

    .line 350
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_17

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_17

    .line 351
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move v1, v5

    goto :goto_8

    :cond_17
    move-object p1, v4

    :cond_18
    :goto_8
    if-nez v1, :cond_1a

    return-void

    :cond_19
    move-object p1, v4

    .line 360
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 361
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v1, :cond_1b

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_9

    :cond_1b
    move v1, v3

    :goto_9
    iput v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastStatus:I

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    .line 364
    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    goto :goto_a

    :cond_1c
    if-nez p1, :cond_1d

    .line 367
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 371
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez p1, :cond_25

    .line 372
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_1f

    .line 373
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_1e

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_1e
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 375
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v2, "Bot"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_c

    .line 377
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

    .line 382
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_22

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_22
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_c

    .line 378
    :cond_23
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_24

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    :cond_24
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->Online:I

    const-string v2, "Online"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 389
    :cond_25
    :goto_c
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto/16 :goto_12

    .line 391
    :cond_26
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 392
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_27

    .line 393
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_d

    :cond_27
    move-object v1, v4

    :goto_d
    if-eqz p1, :cond_2e

    .line 397
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_2b

    .line 398
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

    .line 402
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_2c

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_2c

    .line 403
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 404
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

    .line 413
    :cond_2f
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentAccount:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 415
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_30

    .line 416
    iput-object v4, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    goto :goto_10

    :cond_30
    if-nez p1, :cond_31

    .line 419
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_31
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->lastName:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 423
    :goto_10
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-nez p1, :cond_39

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v2, :cond_32

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_32
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 426
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_34

    .line 427
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_33

    .line 428
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Subscribers"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_11

    .line 430
    :cond_33
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Members"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 432
    :cond_34
    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz p1, :cond_35

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v2, "MegaLocation"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 434
    :cond_35
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 435
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_36

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v2, "ChannelPrivate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 438
    :cond_36
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v2, "MegaPrivate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 441
    :cond_37
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_38

    .line 442
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v2, "ChannelPublic"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_11

    .line 444
    :cond_38
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v2, "MegaPublic"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 449
    :cond_39
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    move-object v4, v0

    .line 453
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

    .line 454
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3c

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->forceDarkTheme:Z

    if-eqz v1, :cond_3b

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    :cond_3b
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupCreateUserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 460
    :cond_3c
    invoke-direct {p0, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->updatePremiumBlocked(Z)V

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
