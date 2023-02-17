.class public Lorg/telegram/ui/Cells/HintDialogCell;
.super Landroid/widget/FrameLayout;
.source "HintDialogCell.java"


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private backgroundColorKey:Ljava/lang/String;

.field checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field counterView:Lorg/telegram/ui/Components/CounterView;

.field private currentAccount:I

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private dialogId:J

.field private final drawCheckbox:Z

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastUnreadCount:I

.field private nameTextView:Landroid/widget/TextView;

.field showOnlineProgress:F

.field wasDraw:Z


# direct methods
.method public static synthetic $r8$lambda$YGuxevcOCrSpGqP_34pc_8seje4(Lorg/telegram/ui/Cells/HintDialogCell;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/HintDialogCell;->lambda$new$0(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 9

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 48
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    const-string v0, "windowBackgroundWhite"

    .line 183
    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->backgroundColorKey:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->drawCheckbox:Z

    .line 60
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x1b

    .line 61
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x36

    const/16 v2, 0x36

    const/16 v3, 0x31

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v0, Lorg/telegram/ui/Cells/HintDialogCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/HintDialogCell$1;-><init>(Lorg/telegram/ui/Cells/HintDialogCell;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    .line 71
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x33

    const/4 v4, 0x6

    const/16 v5, 0x40

    const/4 v6, 0x6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Lorg/telegram/ui/Components/CounterView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v2, -0x1

    const/16 v3, 0x1c

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 81
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->counterView:Lorg/telegram/ui/Components/CounterView;

    const-string v1, "chats_unreadCounterText"

    const-string v2, "chats_unreadCounter"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CounterView;->setGravity(I)V

    if-eqz p2, :cond_0

    .line 86
    new-instance p2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x15

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const-string p1, "dialogRoundCheckBox"

    const-string v0, "dialogBackground"

    const-string v1, "dialogRoundCheckBoxCheck"

    .line 87
    invoke-virtual {p2, p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    new-instance v0, Lorg/telegram/ui/Cells/HintDialogCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/HintDialogCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/HintDialogCell;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setProgressDelegate(Lorg/telegram/ui/Components/CheckBoxBase$ProgressDelegate;)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v0, 0x18

    const/16 v1, 0x18

    const/16 v2, 0x31

    const/16 v3, 0x13

    const/16 v4, 0x2a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 98
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(F)V
    .locals 1

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result p1

    const v0, 0x3e126e98    # 0.143f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 188
    iget-object p4, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne p2, p4, :cond_a

    .line 189
    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p2, :cond_0

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    if-gt p2, v0, :cond_1

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 190
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->wasDraw:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 191
    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    :cond_4
    const v0, 0x3dda740e

    if-eqz p2, :cond_6

    .line 193
    iget v3, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_6

    add-float/2addr v3, v0

    .line 194
    iput v3, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    cmpl-float p2, v3, v1

    if-lez p2, :cond_5

    .line 196
    iput v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    .line 198
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_6
    if-nez p2, :cond_8

    .line 199
    iget p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    cmpl-float v1, p2, v2

    if-eqz v1, :cond_8

    sub-float/2addr p2, v0

    .line 200
    iput p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_7

    .line 202
    iput v2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    .line 204
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 206
    :cond_8
    :goto_2
    iget p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_9

    const/16 p2, 0x35

    .line 207
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v0, 0x3b

    .line 208
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    iget v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->showOnlineProgress:F

    int-to-float v0, v0

    int-to-float p2, p2

    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 211
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->backgroundColorKey:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x7

    .line 212
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const-string v2, "chats_onlineCircle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x5

    .line 214
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 217
    :cond_9
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/HintDialogCell;->wasDraw:Z

    :cond_a
    return p3
.end method

.method public getDialogId()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->dialogId:J

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 224
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->drawCheckbox:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 226
    iget-object v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 227
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    const-string v3, "dialogRoundCheckBox"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v0, v0

    int-to-float v1, v1

    const/16 v2, 0x1c

    .line 229
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x56

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/16 p2, 0xd

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->horizontalPadding:F

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->drawCheckbox:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iput-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->backgroundColorKey:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const-string v0, "dialogRoundCheckBox"

    const-string v1, "dialogRoundCheckBoxCheck"

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDialog(JZLjava/lang/CharSequence;)V
    .locals 4

    .line 149
    iget-wide v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->dialogId:J

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_0

    .line 150
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->wasDraw:Z

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 153
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->dialogId:J

    .line 154
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 155
    iget v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p4, :cond_1

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 159
    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p4, p0, Lorg/telegram/ui/Cells/HintDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_2

    .line 166
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p4, :cond_4

    .line 168
    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 170
    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 p2, 0x0

    .line 175
    iput-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 176
    iget-object p2, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p4, p0, Lorg/telegram/ui/Cells/HintDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, p4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :goto_2
    if-eqz p3, :cond_6

    .line 179
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/HintDialogCell;->update(I)V

    :cond_6
    return-void
.end method

.method public update()V
    .locals 3

    .line 132
    iget-wide v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 136
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    :goto_0
    return-void
.end method

.method public update(I)V
    .locals 3

    .line 109
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    if-eqz p1, :cond_1

    .line 116
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NEW_MESSAGE:I

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    return-void

    .line 119
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->dialogId:J

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz p1, :cond_2

    .line 120
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-eqz p1, :cond_2

    .line 121
    iget v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->lastUnreadCount:I

    if-eq v0, p1, :cond_3

    .line 122
    iput p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->lastUnreadCount:I

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->wasDraw:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->lastUnreadCount:I

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Cells/HintDialogCell;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/HintDialogCell;->wasDraw:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CounterView;->setCount(IZ)V

    :cond_3
    :goto_0
    return-void
.end method
