.class public Lorg/telegram/ui/Cells/DrawerUserCell;
.super Landroid/widget/FrameLayout;
.source "DrawerUserCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private accountNumber:I

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

.field private currentMuteToast:Landroid/widget/Toast;

.field private final customType:I

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private muteButton:Landroid/widget/ImageView;

.field private rect:Landroid/graphics/RectF;

.field private status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private textView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$Q3HWNeOBfEG-851GMxmfnG6n_QE(Lorg/telegram/ui/Cells/DrawerUserCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DrawerUserCell;->lambda$addMuteButton$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/DrawerUserCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->rect:Landroid/graphics/RectF;

    .line 120
    iput p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->customType:I

    .line 121
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->isActionBarAccountSwitchType()Z

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 122
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p0, v1, p2, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->addMuteButton()V

    .line 127
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x14

    .line 128
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 130
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x12

    .line 131
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 132
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v3, 0x24

    const/16 v4, 0x24

    const/16 v5, 0x33

    const/16 v6, 0xe

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 135
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v1, v3, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "chats_menuItemText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 137
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 138
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    .line 140
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x13

    invoke-virtual {p2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 141
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v3, 0x18

    invoke-virtual {p2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(I)V

    .line 142
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x13

    const/16 v6, 0x48

    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->isActionBarAccountSwitchType()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    const/16 v8, 0x2a

    :goto_1
    add-int/lit8 v8, v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p2, v3, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 145
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    new-instance p2, Lorg/telegram/ui/Components/GroupCreateCheckBox;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    .line 148
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setChecked(ZZ)V

    .line 149
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const p2, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setCheckScale(F)V

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setInnerRadDiff(I)V

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const-string p2, "chats_unreadCounterText"

    const-string v0, "chats_unreadCounter"

    const-string v2, "chats_menuBackground"

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setColorKeysOverrides(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x33

    const/16 v5, 0x25

    const/16 v6, 0x1b

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private addMuteButton()V
    .locals 8

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    .line 74
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chats_menuItemIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Cells/DrawerUserCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DrawerUserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DrawerUserCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    const v3, 0x800015

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getForkCommonController()Lorg/fork/controller/ForkCommonController;
    .locals 1

    .line 69
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->accountNumber:I

    invoke-static {v0}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v0

    return-object v0
.end method

.method private isActionBarAccountSwitchType()Z
    .locals 2

    .line 100
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->customType:I

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->DRAWER_USER_CELL_ACTION_BAR_ACCOUNT_SWITCH:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addMuteButton$0(Landroid/view/View;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ForkCommonController;->isAccountMuted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/fork/controller/ForkCommonController;->setAccountMuted(Z)V

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkCommonController;->saveConfig()V

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->updateMuteButtonIcon()V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->currentMuteToast:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 84
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkCommonController;->isAccountMuted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedHint:I

    const-string v0, "NotificationsMutedHint"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsUnmutedHint:I

    const-string v0, "NotificationsUnmutedHint"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 87
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->currentMuteToast:Landroid/widget/Toast;

    .line 88
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateMuteButtonIcon()V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->getForkCommonController()Lorg/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ForkCommonController;->isAccountMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 197
    sget v0, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, v0, :cond_0

    .line 198
    iget p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->accountNumber:I

    if-ne p2, p1, :cond_2

    .line 199
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/DrawerUserCell;->setAccount(I)V

    goto :goto_0

    .line 201
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 203
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 204
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int/2addr p1, p2

    if-lez p1, :cond_2

    .line 205
    iget p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->accountNumber:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/DrawerUserCell;->setAccount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAccountNumber()I
    .locals 1

    .line 247
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->accountNumber:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "chats_menuItemText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const-string v1, "listSelectorSDK21"

    .line 168
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 172
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 173
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 180
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 182
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 183
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 190
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 252
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_4

    iget v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->accountNumber:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 256
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->accountNumber:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getMainUnreadCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    return-void

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->isActionBarAccountSwitchType()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x41840000    # 16.5f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41480000    # 12.5f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 264
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0xa

    .line 265
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    const/16 v5, 0x19

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 268
    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->muteButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    const/16 v5, 0x2a

    .line 269
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    :cond_3
    const/high16 v5, 0x40b00000    # 5.5f

    .line 273
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 274
    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->rect:Landroid/graphics/RectF;

    int-to-float v6, v4

    int-to-float v7, v1

    add-int/2addr v4, v3

    const/16 v8, 0xe

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/16 v8, 0x17

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 275
    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->rect:Landroid/graphics/RectF;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x41380000    # 11.5f

    mul-float v7, v5, v6

    mul-float/2addr v5, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 277
    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->rect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v2, v2

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    add-float/2addr v5, v4

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x1a

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    return-void

    .line 253
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 284
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x10

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 159
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->isActionBarAccountSwitchType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAccount(I)V
    .locals 7

    .line 211
    iput p1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->accountNumber:I

    .line 212
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 217
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 219
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :catch_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 223
    invoke-static {p1}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v1

    .line 224
    invoke-static {p1}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v3

    .line 226
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 229
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 231
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 233
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 239
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->status:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const-string v3, "chats_verifiedBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 240
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerUserCell;->checkBox:Lorg/telegram/ui/Components/GroupCreateCheckBox;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerUserCell;->updateMuteButtonIcon()V

    return-void
.end method
