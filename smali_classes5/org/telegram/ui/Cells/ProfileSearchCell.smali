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

.field private nameLayout:Landroid/text/StaticLayout;

.field private nameLeft:I

.field private nameLockLeft:I

.field private nameLockTop:I

.field private nameTop:I

.field private nameWidth:I

.field private promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

.field private promoSubscribeIconLeft:I

.field private promoSubscribeIconSize:I

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private savedMessages:Z

.field private statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private statusLayout:Landroid/text/StaticLayout;

.field private statusLeft:I

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

    .line 152
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 156
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 114
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    const/16 v0, 0x13

    .line 132
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    .line 145
    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    .line 157
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 159
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v2, 0x17

    .line 160
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 161
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 163
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0x15

    invoke-direct {v0, p1, v2, p2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 164
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 p2, 0x14

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 170
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private synthetic lambda$buildLayout$0()V
    .locals 2

    .line 378
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 380
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-interface {v1, p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_0

    .line 382
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

    .line 327
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 328
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 330
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    .line 332
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v3, 0x1

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 333
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 334
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v6, v2

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 335
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_0

    .line 336
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 337
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

    .line 339
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

    .line 340
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_0
    const/high16 v2, 0x41b00000    # 22.0f

    .line 342
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 343
    invoke-virtual {v0, v1, v5, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    goto/16 :goto_4

    .line 344
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    .line 345
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v6, v6

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 346
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 347
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_2

    .line 348
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_1

    .line 350
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 352
    :goto_1
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    invoke-virtual {v0, v2, v5, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    goto/16 :goto_4

    .line 353
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    .line 354
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 355
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_4

    .line 356
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_2

    .line 358
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_2
    const/16 v2, 0x15

    .line 360
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 361
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 363
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    .line 364
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v2}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    .line 366
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

    .line 367
    :cond_5
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2, v6, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_4

    .line 368
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_8

    const-wide/16 v6, 0x0

    .line 369
    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 370
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_7

    .line 371
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_3

    .line 373
    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 375
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v2, :cond_8

    .line 376
    new-instance v2, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 377
    new-instance v6, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ProfileSearchCell;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 387
    :cond_8
    :goto_4
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_9

    .line 388
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_5

    .line 390
    :cond_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 393
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    const/16 v6, 0x20

    const/16 v7, 0xa

    if-eqz v2, :cond_a

    goto :goto_7

    .line 397
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_b

    .line 398
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_6

    .line 399
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_d

    .line 401
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->albumMode:Z

    if-eqz v8, :cond_c

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 402
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v8, "SavedMessages"

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 404
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_d
    const-string v2, ""

    .line 406
    :goto_6
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 408
    :goto_7
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_f

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    .line 410
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

    .line 412
    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v8, "HiddenName"

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 415
    :cond_f
    :goto_8
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v8, :cond_10

    .line 416
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    goto :goto_9

    .line 418
    :cond_10
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    :goto_9
    move-object v11, v8

    .line 422
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_11

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v8, v9

    const/16 v9, 0xe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    goto :goto_a

    .line 425
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v8, v9

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 427
    :goto_a
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v9, :cond_12

    .line 428
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    const/4 v10, 0x6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v10, v12

    sub-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 430
    :cond_12
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const/16 v17, 0x13

    if-eqz v9, :cond_14

    .line 431
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget v10, Lorg/telegram/messenger/R$string;->Invite:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v9, v12

    float-to-int v9, v9

    .line 433
    new-instance v12, Landroid/text/StaticLayout;

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v12

    move/from16 v21, v9

    invoke-direct/range {v18 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    .line 434
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v12, 0x10

    if-nez v10, :cond_13

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v10, v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v10, v12

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    goto :goto_b

    .line 437
    :cond_13
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    .line 438
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v10, v9

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 439
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    add-int/2addr v10, v9

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 441
    :goto_b
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v9

    sub-int/2addr v10, v6

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 444
    :cond_14
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 445
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    sub-int/2addr v8, v6

    .line 448
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_16

    .line 449
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 450
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_15

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v6, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconLeft:I

    goto :goto_c

    .line 453
    :cond_15
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 454
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    add-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 458
    :cond_16
    :goto_c
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    const/16 v18, 0xc

    if-eqz v6, :cond_19

    .line 459
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v6, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 460
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v6

    if-eqz v6, :cond_18

    .line 462
    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 463
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v1

    const-string v6, "%d"

    invoke-static {v9, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    .line 465
    new-instance v9, Landroid/text/StaticLayout;

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sget-object v23, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v9

    move-object/from16 v20, v6

    move/from16 v22, v10

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 466
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 467
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v9, v6

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v8, v6

    .line 469
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_17

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sub-int/2addr v6, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    goto :goto_d

    .line 472
    :cond_17
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 473
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v9, v6

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 474
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    add-int/2addr v9, v6

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_d

    .line 477
    :cond_18
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 478
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    goto :goto_d

    .line 481
    :cond_19
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 482
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 485
    :goto_d
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    if-gez v6, :cond_1a

    .line 486
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 488
    :cond_1a
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v11, v6, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v6, 0x14

    if-eqz v2, :cond_1b

    .line 490
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v2, v9, v10, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1b
    move-object v10, v2

    .line 492
    new-instance v2, Landroid/text/StaticLayout;

    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    .line 495
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    .line 496
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1c

    goto/16 :goto_f

    .line 527
    :cond_1c
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->albumMode:Z

    if-eqz v3, :cond_1d

    .line 528
    sget v3, Lorg/telegram/messenger/R$string;->cloud_album:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e

    .line 530
    :cond_1d
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_20

    .line 531
    iget v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v9, :cond_1e

    const-string v3, "Subscribers"

    .line 532
    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 534
    :cond_1e
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 535
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v9, "ChannelPrivate"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 537
    :cond_1f
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v9, "ChannelPublic"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 541
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v9, :cond_21

    const-string v3, "Members"

    .line 542
    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 544
    :cond_21
    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v9, :cond_22

    .line 545
    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v9, "MegaLocation"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 546
    :cond_22
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 547
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v9, "MegaPrivate"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 549
    :cond_23
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v9, "MegaPublic"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 553
    :goto_e
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    goto/16 :goto_12

    .line 497
    :cond_24
    :goto_f
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_25

    move-object v3, v9

    goto/16 :goto_11

    .line 499
    :cond_25
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_2d

    .line 500
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 501
    sget v3, Lorg/telegram/messenger/R$string;->SupportStatus:I

    const-string v9, "SupportStatus"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_11

    .line 502
    :cond_26
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v10, :cond_27

    .line 503
    sget v3, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v9, "Bot"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 504
    :cond_27
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v12, 0x514c8

    cmp-long v12, v10, v12

    if-eqz v12, :cond_2c

    const-wide/32 v12, 0xbdb28

    cmp-long v10, v10, v12

    if-nez v10, :cond_28

    goto :goto_10

    .line 507
    :cond_28
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    if-nez v10, :cond_29

    new-array v3, v3, [Z

    .line 508
    iput-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    .line 510
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aput-boolean v1, v3, v1

    .line 511
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v10, v9, v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;

    move-result-object v3

    .line 512
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aget-boolean v9, v9, v1

    if-eqz v9, :cond_2a

    .line 513
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 515
    :cond_2a
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_2e

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2b

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_2e

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    if-le v9, v10, :cond_2e

    .line 516
    :cond_2b
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 517
    sget v3, Lorg/telegram/messenger/R$string;->Online:I

    const-string v9, "Online"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 505
    :cond_2c
    :goto_10
    sget v3, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    const-string v9, "ServiceNotifications"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_2d
    move-object v3, v5

    .line 521
    :cond_2e
    :goto_11
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v9, :cond_2f

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 523
    :cond_2f
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    move-object v3, v5

    .line 556
    :cond_30
    :goto_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_31

    .line 557
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v8, v5

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v2, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 558
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

    .line 559
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 560
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_13

    .line 562
    :cond_31
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 563
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    .line 567
    :goto_13
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_32

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x39

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_14

    .line 570
    :cond_32
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 572
    :goto_14
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

    .line 576
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_34

    .line 577
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_33

    .line 578
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_33

    .line 580
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 581
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v6, v2

    cmpg-double v6, v4, v6

    if-gez v6, :cond_33

    .line 582
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v6, v6

    int-to-double v9, v2

    sub-double/2addr v9, v4

    add-double/2addr v6, v9

    double-to-int v2, v6

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 586
    :cond_33
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_36

    .line 587
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_36

    .line 589
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    int-to-double v3, v8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_36

    .line 591
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v3, v1

    add-double/2addr v5, v3

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_15

    .line 596
    :cond_34
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_35

    .line 597
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    .line 598
    iget v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    .line 599
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 600
    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v5, v4

    cmpg-double v5, v2, v5

    if-gez v5, :cond_35

    .line 601
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v5, v5

    int-to-double v9, v4

    sub-double/2addr v9, v2

    sub-double/2addr v5, v9

    double-to-int v2, v5

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 605
    :cond_35
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_36

    .line 606
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v8

    cmpl-float v2, v2, v3

    if-nez v2, :cond_36

    .line 608
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    int-to-double v3, v8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_36

    .line 610
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v3, v1

    sub-double/2addr v5, v3

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 616
    :cond_36
    :goto_15
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 617
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 618
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 282
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 860
    iget-wide v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    return-wide v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public isPointInsideAvatar(FF)Z
    .locals 1

    .line 87
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

    .line 274
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 276
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 266
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 268
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 751
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v0, :cond_0

    return-void

    .line 755
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 756
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 757
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 759
    :cond_1
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 763
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v0, :cond_3

    .line 764
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 765
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 768
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 769
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 770
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 772
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 775
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    const/4 v3, 0x3

    if-nez v0, :cond_4

    .line 777
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    .line 779
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 780
    iget v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    add-int/2addr v4, v5

    int-to-double v4, v4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-double v6, v0

    sub-double/2addr v4, v6

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v6, v0

    sub-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_1

    .line 783
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v3

    add-float/2addr v0, v3

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 785
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v3, v0, v4}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;FF)V

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 789
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    .line 790
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 791
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetX:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/16 v3, 0x21

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 796
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    const/16 v3, 0x17

    const/4 v4, 0x4

    if-eqz v0, :cond_9

    .line 797
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    const/high16 v5, 0x40b00000    # 5.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v0, v5

    .line 798
    iget-object v5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    int-to-float v6, v0

    iget v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    add-int/2addr v0, v8

    const/16 v8, 0xb

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v0, v8

    int-to-float v0, v0

    iget v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v0, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x41380000    # 11.5f

    mul-float v7, v5, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v6, v8, v9, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_8
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v0, v7, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 800
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 801
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 803
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 806
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_a

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/CanvasButton;->setColor(II)V

    .line 808
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    int-to-float v5, v2

    iget v6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    iget v7, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v7, v3

    int-to-float v3, v7

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v2, 0x10

    .line 809
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 810
    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CanvasButton;->setRounded(Z)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 814
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 815
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 817
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 819
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b

    .line 820
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static {v0, v1, p1, v2, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_3

    .line 821
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_c

    .line 822
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-static {v0, v1, p1, v2, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    goto :goto_3

    .line 824
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 828
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 829
    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconLeft:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 837
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 842
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 843
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string v3, "AccDescrVerified"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    .line 846
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 847
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 851
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 853
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.CheckBox"

    .line 855
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 872
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 297
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez p3, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p3, :cond_2

    .line 301
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

    .line 302
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 303
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

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 289
    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/16 v0, 0x18

    .line 290
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

    .line 292
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

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->checkOnTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 880
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 883
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 179
    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    .line 180
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 181
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 182
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 183
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    goto :goto_0

    .line 184
    :cond_0
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_1

    .line 185
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 186
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 187
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    goto :goto_0

    .line 188
    :cond_1
    instance-of p3, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p3, :cond_2

    .line 189
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 190
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 191
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 193
    :cond_2
    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 194
    iput-object p4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    .line 195
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    .line 196
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    const/4 p1, 0x0

    .line 197
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    return-void
.end method

.method public setPromoSubscribeIcon(I)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    :cond_0
    return-void
.end method

.method public setSublabelOffset(II)V
    .locals 0

    .line 319
    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetX:I

    .line 320
    iput p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetY:I

    return-void
.end method

.method public update(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 643
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 644
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 645
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 647
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 648
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 650
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 652
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 653
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_2

    .line 654
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 655
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    move-object v12, v6

    goto :goto_0

    :cond_2
    move-object v12, v1

    .line 659
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

    .line 661
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_7

    .line 662
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 663
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_4

    .line 664
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 665
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_5

    move-object v13, v6

    goto :goto_1

    :cond_4
    move-object v7, v3

    :cond_5
    move-object v13, v5

    .line 669
    :goto_1
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 671
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 673
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 674
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 676
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

    .line 677
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_8

    .line 678
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 681
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v5, v6, v3, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v7, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 685
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

    if-eqz p1, :cond_18

    .line 688
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

    .line 689
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

    .line 693
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_11

    .line 695
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_10

    .line 696
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    :cond_10
    move v5, v1

    .line 698
    :goto_5
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    if-eq v5, v6, :cond_11

    move v2, v4

    :cond_11
    if-nez v2, :cond_12

    .line 702
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_12

    .line 703
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    invoke-virtual {v0, v6, v5, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    :cond_12
    if-nez v2, :cond_13

    .line 705
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int v5, p1, v5

    if-eqz v5, :cond_13

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_14

    :cond_13
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT_NAME:I

    and-int v5, p1, v5

    if-eqz v5, :cond_16

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_16

    .line 707
    :cond_14
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_15

    .line 708
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

    goto :goto_6

    .line 710
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 712
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    move v2, v4

    :cond_16
    if-nez v2, :cond_17

    .line 716
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v5, :cond_17

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I

    and-int v5, p1, v5

    if-eqz v5, :cond_17

    .line 717
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v5, :cond_17

    .line 718
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    if-eq v5, v6, :cond_17

    goto :goto_7

    :cond_17
    move v4, v2

    :goto_7
    if-nez v4, :cond_18

    return-void

    .line 728
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1a

    .line 729
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_19

    .line 730
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    goto :goto_8

    .line 732
    :cond_19
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 734
    :goto_8
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

    goto :goto_9

    .line 735
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1b

    .line 736
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 739
    :cond_1b
    :goto_9
    iput-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_a

    .line 744
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_b

    .line 742
    :cond_1d
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    .line 746
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method public updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 624
    new-instance p1, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-direct {p1, p2, v2, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 626
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    if-le p1, v0, :cond_1

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    invoke-virtual {p1, v0, v1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 629
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_2

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    if-eqz v0, :cond_2

    .line 630
    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    invoke-virtual {p2, v0, v1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 632
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

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 636
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 637
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

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 175
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
