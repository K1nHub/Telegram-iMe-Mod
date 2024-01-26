.class public Lorg/telegram/ui/Cells/ProfileSearchCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ProfileSearchCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field actionButton:Lorg/telegram/ui/Components/CanvasButton;

.field private actionLayout:Landroid/text/StaticLayout;

.field private actionLeft:I

.field public albumMode:Z

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field public avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private contact:Lorg/telegram/messenger/ContactsController$Contact;

.field private countLayout:Landroid/text/StaticLayout;

.field private countLeft:I

.field private countTop:I

.field private countWidth:I

.field private currentAccount:I

.field private currentName:Ljava/lang/CharSequence;

.field private customPaints:Z

.field private dialog_id:J

.field private drawCheck:Z

.field private drawCount:Z

.field private drawNameLock:Z

.field private encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private isOnline:[Z

.field private isShowPremiumBadgeEnabled:Z

.field private isShowPremiumStatusEnabled:Z

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private lastUnreadCount:I

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private namePaint:Landroid/text/TextPaint;

.field private nameTop:I

.field private nameWidth:I

.field private premiumBlocked:Z

.field private final premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field private promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

.field private promoSubscribeIconLeft:I

.field private promoSubscribeIconSize:I

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private savedMessages:Z

.field private showPremiumBlocked:Z

.field private statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private statusLayout:Landroid/text/StaticLayout;

.field private statusLeft:I

.field private statusPaint:Landroid/text/TextPaint;

.field private subLabel:Ljava/lang/CharSequence;

.field private sublabelOffsetX:I

.field private sublabelOffsetY:I

.field public useSeparator:Z

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public static synthetic $r8$lambda$jVmMpRBTsSwP6tV-1qS6WeHhizo(Lorg/telegram/ui/Cells/ProfileSearchCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->lambda$buildLayout$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 165
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 119
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    const/16 v0, 0x13

    .line 137
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    .line 147
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x15e

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 154
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 156
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    .line 166
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 168
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v2, 0x17

    .line 169
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 170
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 172
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0x15

    invoke-direct {v0, p1, v2, p2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 173
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 p2, 0x14

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 179
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private synthetic lambda$buildLayout$0()V
    .locals 2

    .line 414
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 416
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-interface {v1, p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->callOnClick()Z

    :goto_0
    return-void
.end method


# virtual methods
.method public buildLayout()V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 363
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 364
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 366
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    .line 368
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v3, 0x1

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 369
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 370
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v6, v2

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 371
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_0

    .line 372
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 373
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v2, v6

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    add-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v2, v6

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v2, v6

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 376
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_0
    const/high16 v2, 0x41b00000    # 22.0f

    .line 378
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 379
    invoke-virtual {v0, v1, v5, v5, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_4

    .line 380
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    .line 381
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v6, v6

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 382
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 383
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_2

    .line 384
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_1

    .line 386
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 388
    :goto_1
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v2, v5, v6, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_4

    .line 389
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    .line 390
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 391
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_4

    .line 392
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_2

    .line 394
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_2
    const/16 v2, 0x15

    .line 396
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 397
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 399
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    .line 400
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    .line 402
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v2, :cond_5

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    .line 403
    :cond_5
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2, v6, v5, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_4

    .line 404
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_8

    const-wide/16 v6, 0x0

    .line 405
    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 406
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_7

    .line 407
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_3

    .line 409
    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 411
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v2, :cond_8

    .line 412
    new-instance v2, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 413
    new-instance v6, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ProfileSearchCell;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 423
    :cond_8
    :goto_4
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_9

    .line 424
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_5

    .line 426
    :cond_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 429
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    const/16 v6, 0x20

    const/16 v7, 0xa

    if-eqz v2, :cond_a

    goto :goto_7

    .line 433
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_b

    .line 434
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_6

    .line 435
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_d

    .line 437
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->albumMode:Z

    if-eqz v8, :cond_c

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 438
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v8, "SavedMessages"

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 440
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_d
    const-string v2, ""

    .line 442
    :goto_6
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 444
    :goto_7
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_f

    .line 445
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 446
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 448
    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v8, "HiddenName"

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 451
    :cond_f
    :goto_8
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    const/16 v9, 0x10

    if-eqz v8, :cond_12

    .line 452
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    if-nez v8, :cond_10

    .line 453
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    const-string v10, "fonts/rmedium.ttf"

    .line 454
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 456
    :cond_10
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 457
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v8, :cond_11

    .line 458
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_9

    .line 460
    :cond_11
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 462
    :goto_9
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->namePaint:Landroid/text/TextPaint;

    goto :goto_a

    .line 463
    :cond_12
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v8, :cond_13

    .line 464
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    goto :goto_a

    .line 466
    :cond_13
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    :goto_a
    move-object v12, v8

    .line 470
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_14

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v8, v10

    const/16 v10, 0xe

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    goto :goto_b

    .line 473
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v8, v10

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 475
    :goto_b
    iget-boolean v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v10, :cond_15

    .line 476
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    const/4 v11, 0x6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v11, v13

    sub-int/2addr v10, v11

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 478
    :cond_15
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const/16 v18, 0x13

    if-eqz v10, :cond_17

    .line 479
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget v11, Lorg/telegram/messenger/R$string;->Invite:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v10, v13

    float-to-int v10, v10

    .line 481
    new-instance v13, Landroid/text/StaticLayout;

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v13

    move/from16 v22, v10

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    .line 482
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_16

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v11, v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v11, v9

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    goto :goto_c

    .line 485
    :cond_16
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v11, v9

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    .line 486
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 487
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    add-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 489
    :goto_c
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v10

    sub-int/2addr v9, v6

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 492
    :cond_17
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    sub-int/2addr v8, v6

    .line 496
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_19

    .line 497
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 498
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_18

    .line 499
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v6, v9

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconLeft:I

    goto :goto_d

    .line 501
    :cond_18
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 502
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    add-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 506
    :cond_19
    :goto_d
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    const/16 v9, 0xc

    if-eqz v6, :cond_1c

    .line 507
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v6, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 508
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v6

    if-eqz v6, :cond_1b

    .line 510
    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 511
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v1

    const-string v6, "%d"

    invoke-static {v10, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 512
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    .line 513
    new-instance v10, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v10

    move-object/from16 v20, v6

    move/from16 v22, v11

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 514
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    .line 515
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v10, v6

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v8, v6

    .line 517
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v10, :cond_1a

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sub-int/2addr v6, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v6, v10

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    goto :goto_e

    .line 520
    :cond_1a
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 521
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v10, v6

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 522
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    add-int/2addr v10, v6

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_e

    .line 525
    :cond_1b
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 526
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    goto :goto_e

    .line 529
    :cond_1c
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 530
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 533
    :goto_e
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    if-gez v6, :cond_1d

    .line 534
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 536
    :cond_1d
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v6, v10

    int-to-float v6, v6

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v12, v6, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v6, 0x14

    if-eqz v2, :cond_1e

    .line 538
    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v2, v10, v11, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1e
    move-object v11, v2

    .line 540
    new-instance v2, Landroid/text/StaticLayout;

    iget v13, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    .line 543
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    .line 544
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v10, :cond_27

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v11, :cond_1f

    goto/16 :goto_10

    .line 575
    :cond_1f
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->albumMode:Z

    if-eqz v11, :cond_20

    .line 576
    sget v10, Lorg/telegram/messenger/R$string;->cloud_album:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_f

    .line 578
    :cond_20
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v11, :cond_23

    .line 579
    iget v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v11, :cond_21

    const-string v10, "Subscribers"

    .line 580
    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 582
    :cond_21
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 583
    sget v10, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v11, "ChannelPrivate"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 585
    :cond_22
    sget v10, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v11, "ChannelPublic"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 589
    :cond_23
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v11, :cond_24

    const-string v10, "Members"

    .line 590
    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 592
    :cond_24
    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v11, :cond_25

    .line 593
    sget v10, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v11, "MegaLocation"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 594
    :cond_25
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 595
    sget v10, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v11, "MegaPrivate"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    .line 597
    :cond_26
    sget v10, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v11, "MegaPublic"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 601
    :goto_f
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iput v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    goto/16 :goto_13

    .line 545
    :cond_27
    :goto_10
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v10, :cond_28

    goto/16 :goto_12

    .line 547
    :cond_28
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v10, :cond_30

    .line 548
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 549
    sget v10, Lorg/telegram/messenger/R$string;->SupportStatus:I

    const-string v11, "SupportStatus"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_12

    .line 550
    :cond_29
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v11, :cond_2a

    .line 551
    sget v10, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v11, "Bot"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_12

    .line 552
    :cond_2a
    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v13, 0x514c8

    cmp-long v13, v11, v13

    if-eqz v13, :cond_2f

    const-wide/32 v13, 0xbdb28

    cmp-long v11, v11, v13

    if-nez v11, :cond_2b

    goto :goto_11

    .line 555
    :cond_2b
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    if-nez v11, :cond_2c

    new-array v11, v3, [Z

    .line 556
    iput-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    .line 558
    :cond_2c
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aput-boolean v1, v11, v1

    .line 559
    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v12, v10, v11}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;

    move-result-object v10

    .line 560
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aget-boolean v11, v11, v1

    if-eqz v11, :cond_2d

    .line 561
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 563
    :cond_2d
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v11, :cond_31

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v13, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_2e

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v11, :cond_31

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v12

    if-le v11, v12, :cond_31

    .line 564
    :cond_2e
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 565
    sget v10, Lorg/telegram/messenger/R$string;->Online:I

    const-string v11, "Online"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_12

    .line 553
    :cond_2f
    :goto_11
    sget v10, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    const-string v11, "ServiceNotifications"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_12

    :cond_30
    move-object v10, v5

    .line 569
    :cond_31
    :goto_12
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v11, :cond_32

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 571
    :cond_32
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    move-object v10, v5

    .line 603
    :cond_33
    :goto_13
    iget-boolean v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    if-eqz v11, :cond_37

    .line 604
    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    if-nez v11, :cond_34

    .line 605
    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    .line 607
    :cond_34
    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    const/16 v11, 0xf

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 608
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    if-ne v2, v3, :cond_35

    .line 609
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_14

    .line 610
    :cond_35
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    if-ne v2, v3, :cond_36

    .line 611
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText3:I

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 613
    :cond_36
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusPaint:Landroid/text/TextPaint;

    .line 616
    :cond_37
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 617
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v8, v3

    int-to-float v3, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v10, v2, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 618
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v3

    move-object/from16 v21, v2

    move/from16 v22, v8

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    const/16 v2, 0x9

    .line 619
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 620
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_15

    .line 622
    :cond_38
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 623
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    .line 627
    :goto_15
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_39

    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x39

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_16

    .line 630
    :cond_39
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 632
    :goto_16
    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    int-to-float v4, v2

    const/4 v5, 0x7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0x2e

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v2, v9

    int-to-float v2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 636
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3b

    .line 637
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3a

    .line 638
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3a

    .line 640
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 641
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v6, v2

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3a

    .line 642
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v6, v6

    int-to-double v9, v2

    sub-double/2addr v9, v4

    add-double/2addr v6, v9

    double-to-int v2, v6

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 646
    :cond_3a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3d

    .line 647
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3d

    .line 649
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    int-to-double v3, v8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_3d

    .line 651
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v3, v1

    add-double/2addr v5, v3

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_17

    .line 656
    :cond_3b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3c

    .line 657
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    .line 658
    iget v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c

    .line 659
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 660
    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v5, v4

    cmpg-double v5, v2, v5

    if-gez v5, :cond_3c

    .line 661
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v5, v5

    int-to-double v9, v4

    sub-double/2addr v9, v2

    sub-double/2addr v5, v9

    double-to-int v2, v5

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 665
    :cond_3c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3d

    .line 666
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v8

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3d

    .line 668
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    int-to-double v3, v8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_3d

    .line 670
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v3, v1

    sub-double/2addr v5, v3

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 676
    :cond_3d
    :goto_17
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 677
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 678
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 312
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_1

    .line 314
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    if-ne p1, p2, :cond_4

    .line 315
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    .line 316
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->isUserPremiumBlocked(J)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object p3, p3, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->isUserPremiumBlocked(J)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    if-eq p2, p1, :cond_4

    .line 318
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 963
    iget-wide v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    return-wide v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 935
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    return v0
.end method

.method public isPointInsideAvatar(FF)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 301
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 303
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 304
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 290
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 292
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 293
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 814
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v1, :cond_0

    return-void

    .line 818
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 820
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v2, :cond_1

    const-string v1, "paintDivider"

    .line 821
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 824
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_2
    move-object v6, v1

    .line 826
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 829
    :cond_3
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 833
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v1, :cond_5

    .line 834
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 835
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 838
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_8

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 840
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v1, v1

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v4, v4

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 841
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 845
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 846
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    cmpl-float v1, v1, v2

    const/4 v5, 0x3

    if-nez v1, :cond_6

    .line 847
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_1

    .line 849
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    .line 850
    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    add-int/2addr v4, v6

    int-to-double v9, v4

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-double v4, v1

    sub-double/2addr v9, v4

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v4, v1

    sub-double/2addr v9, v4

    double-to-int v1, v9

    goto :goto_1

    .line 853
    :cond_7
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v4}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v4

    add-float/2addr v1, v4

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 855
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-float v1, v1

    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    invoke-static {v4, v1, v5}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 856
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 859
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_9

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 861
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetX:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    const/16 v4, 0x21

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetY:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 862
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 863
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 866
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    const/16 v4, 0x17

    const/4 v5, 0x4

    if-eqz v1, :cond_b

    .line 867
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    const/high16 v6, 0x40b00000    # 5.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    .line 868
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    int-to-float v9, v1

    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    add-int/2addr v1, v11

    const/16 v11, 0xb

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v1, v11

    int-to-float v1, v1

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v1, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 869
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v9, 0x41380000    # 11.5f

    mul-float v10, v6, v9

    mul-float/2addr v6, v9

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    const-wide/16 v13, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_a
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v7, v1, v10, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 871
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    int-to-float v1, v1

    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 872
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 876
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    const/16 v6, 0x10

    if-eqz v1, :cond_c

    .line 877
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v1, v9, v10}, Lorg/telegram/ui/Components/CanvasButton;->setColor(II)V

    .line 878
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    int-to-float v10, v9

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getWidth()I

    move-result v12

    add-int/2addr v9, v12

    int-to-float v9, v9

    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v12, v4

    int-to-float v4, v12

    invoke-virtual {v1, v10, v11, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 879
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v1, v4, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 880
    iget-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 881
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/CanvasButton;->setRounded(Z)V

    .line 882
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 885
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    int-to-float v1, v1

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 886
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 890
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_d

    .line 891
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static {v4, v5, v7, v1, v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_3

    .line 892
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_e

    .line 893
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static {v4, v5, v7, v1, v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_3

    .line 895
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 896
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 899
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlockedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_11

    .line 901
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    const/16 v4, 0xe

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 902
    iget-object v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 904
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 905
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const v5, 0x413547ae    # 11.33f

    .line 906
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 907
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v5, :cond_f

    .line 908
    new-instance v5, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    iget-object v14, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 910
    :cond_f
    iget-object v15, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v2, v8

    float-to-int v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    float-to-int v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    float-to-int v10, v10

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-virtual/range {v15 .. v21}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 911
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 912
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_10

    .line 913
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 914
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 916
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 917
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    const/high16 v8, 0x3f600000    # 0.875f

    mul-float/2addr v6, v8

    mul-float/2addr v6, v1

    sub-float v6, v4, v6

    float-to-int v6, v6

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 918
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v3

    mul-float/2addr v9, v8

    mul-float/2addr v9, v1

    sub-float v9, v2, v9

    float-to-int v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 919
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    mul-float/2addr v10, v8

    mul-float/2addr v10, v1

    add-float/2addr v4, v10

    float-to-int v4, v4

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 920
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    mul-float/2addr v10, v8

    mul-float/2addr v10, v1

    add-float/2addr v2, v10

    float-to-int v2, v2

    .line 916
    invoke-virtual {v5, v6, v9, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 922
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 923
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 924
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 927
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    .line 928
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 929
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 940
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 945
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 946
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string v3, "AccDescrVerified"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    .line 949
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 950
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 954
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 956
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.CheckBox"

    .line 958
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 975
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 333
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez p3, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p3, :cond_2

    .line 337
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p5, 0x2a

    if-eqz p3, :cond_1

    sub-int/2addr p4, p2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p4, p2

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    :goto_0
    const/16 p2, 0x24

    .line 338
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 339
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p4, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    if-eqz p1, :cond_3

    .line 342
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/16 v0, 0x18

    .line 326
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 328
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x3c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 983
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 986
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    .line 970
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 4

    .line 200
    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    .line 201
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 202
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 203
    iput-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 204
    iput-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 205
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isUserPremiumBlocked(J)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    goto :goto_2

    .line 206
    :cond_1
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_2

    .line 207
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 208
    iput-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 209
    iput-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 210
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    goto :goto_2

    .line 211
    :cond_2
    instance-of p3, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p3, :cond_4

    .line 212
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 213
    iput-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 214
    iput-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 215
    iget-boolean p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    iget-object p3, p3, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isUserPremiumBlocked(J)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->premiumBlocked:Z

    .line 217
    :cond_4
    :goto_2
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 218
    iput-object p4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    .line 219
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    .line 220
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    .line 221
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    return-void
.end method

.method public setPromoSubscribeIcon(I)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    :cond_0
    return-void
.end method

.method public setSublabelOffset(II)V
    .locals 0

    .line 355
    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetX:I

    .line 356
    iput p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetY:I

    return-void
.end method

.method public showPremiumBlock(Z)Lorg/telegram/ui/Cells/ProfileSearchCell;
    .locals 0

    .line 183
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlocked:Z

    return-object p0
.end method

.method public update(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 703
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 704
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 705
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 707
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 708
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 710
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 712
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 713
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_2

    .line 714
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 715
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    move-object v12, v6

    goto :goto_0

    :cond_2
    move-object v12, v1

    .line 719
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v13, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v14, 0x0

    const-string v9, "50_50"

    const-string v11, "50_50"

    invoke-virtual/range {v7 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 721
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_7

    .line 722
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 723
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_4

    .line 724
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 725
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_5

    move-object v13, v6

    goto :goto_1

    :cond_4
    move-object v7, v3

    :cond_5
    move-object v13, v5

    .line 729
    :goto_1
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 731
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 733
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 734
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 736
    :cond_6
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1, v4}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    iget-object v14, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v15, 0x0

    const-string v10, "50_50"

    const-string v12, "50_50"

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;I)V

    move-object v3, v7

    goto :goto_2

    .line 737
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_8

    .line 738
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 741
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v5, v6, v3, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v7, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 745
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_9

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x10

    goto :goto_3

    :cond_9
    const/16 v2, 0x17

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    .line 748
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int v2, p1, v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_b

    :cond_a
    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_AVATAR:I

    and-int v2, p1, v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_f

    .line 749
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_e

    :cond_c
    if-nez v2, :cond_d

    if-nez v3, :cond_e

    :cond_d
    if-eqz v2, :cond_f

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_e

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v2, v5, :cond_f

    :cond_e
    move v2, v4

    goto :goto_4

    :cond_f
    move v2, v1

    :goto_4
    if-nez v2, :cond_11

    .line 753
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_11

    .line 755
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_10

    .line 756
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    :cond_10
    move v5, v1

    .line 758
    :goto_5
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    if-eq v5, v6, :cond_11

    move v2, v4

    :cond_11
    if-nez v2, :cond_14

    .line 762
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_14

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_14

    :cond_12
    if-eqz v5, :cond_13

    .line 763
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    goto :goto_6

    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    :goto_6
    iget-object v7, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v6, v5, v7, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_14
    if-nez v2, :cond_15

    .line 765
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v5, p1, v5

    if-eqz v5, :cond_15

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_16

    :cond_15
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int v5, p1, v5

    if-eqz v5, :cond_18

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_18

    .line 767
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_17

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 770
    :cond_17
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 772
    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    move v2, v4

    :cond_18
    if-nez v2, :cond_19

    .line 776
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v5, :cond_19

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I

    and-int v5, p1, v5

    if-eqz v5, :cond_19

    .line 777
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v5, :cond_19

    .line 778
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    if-eq v5, v6, :cond_19

    goto :goto_8

    :cond_19
    move v4, v2

    :goto_8
    if-nez v4, :cond_1a

    return-void

    .line 788
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1c

    .line 789
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_1b

    .line 790
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    goto :goto_9

    .line 792
    :cond_1b
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 794
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    goto :goto_a

    .line 795
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1d

    .line 796
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 799
    :cond_1d
    :goto_a
    iput-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_b

    .line 804
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_c

    .line 802
    :cond_1f
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    .line 806
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method public updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 6

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 684
    new-instance p1, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {p1, p2, p3, v2, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, p1, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 685
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 686
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 688
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 689
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_2

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 691
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 692
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->isPremiumUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 696
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v1, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public useCustomPaints()Lorg/telegram/ui/Cells/ProfileSearchCell;
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->customPaints:Z

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
