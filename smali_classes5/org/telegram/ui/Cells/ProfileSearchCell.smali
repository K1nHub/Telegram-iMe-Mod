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

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

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

    .line 141
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 104
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    const/16 v0, 0x13

    .line 122
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    .line 146
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 148
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v1, 0x17

    .line 149
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 150
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 152
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v1, 0x15

    invoke-direct {v0, p1, v1, p2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p1, 0x0

    const-string p2, "windowBackgroundWhite"

    const-string v1, "checkboxCheck"

    .line 153
    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 p2, 0x14

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method

.method private synthetic lambda$buildLayout$0()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 360
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-interface {v1, p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_0

    .line 362
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

    .line 308
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 309
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 311
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    .line 313
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v3, 0x1

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 314
    iput-boolean v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    .line 315
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v6, v2

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 316
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_0

    .line 317
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    .line 318
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

    .line 320
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

    .line 321
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_0
    const/high16 v2, 0x41b00000    # 22.0f

    .line 323
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 324
    invoke-virtual {v0, v1, v5, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    goto/16 :goto_4

    .line 325
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    .line 326
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v6, v6

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 327
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 328
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_2

    .line 329
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_1

    .line 331
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 333
    :goto_1
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    invoke-virtual {v0, v2, v5, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    goto/16 :goto_4

    .line 334
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_6

    .line 335
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    .line 336
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_4

    .line 337
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_2

    .line 339
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    :goto_2
    const/16 v2, 0x15

    .line 341
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    .line 342
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    .line 344
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumBadgeEnabled:Z

    .line 345
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v2}, Lorg/fork/controller/ForkCommonController;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    .line 347
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

    .line 348
    :cond_5
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2, v6, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_4

    .line 349
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_8

    .line 350
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_7

    .line 351
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_3

    .line 353
    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 355
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v2, :cond_8

    .line 356
    new-instance v2, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 357
    new-instance v6, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ProfileSearchCell;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 368
    :cond_8
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    const/16 v6, 0x20

    const/16 v7, 0xa

    if-eqz v2, :cond_9

    goto :goto_6

    .line 372
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_a

    .line 373
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_5

    .line 374
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_c

    .line 376
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->albumMode:Z

    if-eqz v8, :cond_b

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 377
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v8, "SavedMessages"

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 379
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_c
    const-string v2, ""

    .line 381
    :goto_5
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 383
    :goto_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_e

    .line 384
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 385
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

    goto :goto_7

    .line 387
    :cond_d
    sget v2, Lorg/telegram/messenger/R$string;->HiddenName:I

    const-string v8, "HiddenName"

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 390
    :cond_e
    :goto_7
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v8, :cond_f

    .line 391
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    goto :goto_8

    .line 393
    :cond_f
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    :goto_8
    move-object v11, v8

    .line 397
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v8, :cond_10

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v8, v9

    const/16 v9, 0xe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    goto :goto_9

    .line 400
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    sub-int/2addr v8, v9

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 402
    :goto_9
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v9, :cond_11

    .line 403
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

    .line 405
    :cond_11
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const/16 v17, 0x13

    if-eqz v9, :cond_13

    .line 406
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget v10, Lorg/telegram/messenger/R$string;->Invite:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v9, v12

    float-to-int v9, v9

    .line 408
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

    .line 409
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v12, 0x10

    if-nez v10, :cond_12

    .line 410
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

    goto :goto_a

    .line 412
    :cond_12
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v10, v12

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    .line 413
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v10, v9

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 415
    :goto_a
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v9

    sub-int/2addr v10, v6

    iput v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 418
    :cond_13
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    sub-int/2addr v8, v6

    .line 422
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_15

    .line 423
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 424
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_14

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v6, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconLeft:I

    goto :goto_b

    .line 427
    :cond_14
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 428
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    add-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 432
    :cond_15
    :goto_b
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    const/16 v18, 0xc

    if-eqz v6, :cond_18

    .line 433
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v6, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 434
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/telegram/messenger/MessagesController;->getDialogUnreadCount(Lorg/telegram/tgnet/TLRPC$Dialog;)I

    move-result v6

    if-eqz v6, :cond_17

    .line 436
    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 437
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v1

    const-string v6, "%d"

    invoke-static {v9, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 438
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

    .line 439
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

    .line 440
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    const/16 v9, 0x12

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 441
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v9, v6

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sub-int/2addr v8, v6

    .line 443
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_16

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countWidth:I

    sub-int/2addr v6, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    goto :goto_c

    .line 446
    :cond_16
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    .line 447
    iget v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    add-int/2addr v9, v6

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    goto :goto_c

    .line 450
    :cond_17
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 451
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    goto :goto_c

    .line 454
    :cond_18
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastUnreadCount:I

    .line 455
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    .line 458
    :goto_c
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    if-gez v6, :cond_19

    .line 459
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    .line 461
    :cond_19
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v11, v6, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v6, 0x14

    if-eqz v2, :cond_1a

    .line 463
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v2, v9, v10, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1a
    move-object v10, v2

    .line 465
    new-instance v2, Landroid/text/StaticLayout;

    iget v12, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    .line 468
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    .line 469
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v9, :cond_1b

    .line 470
    sget v9, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_d

    .line 472
    :cond_1b
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 475
    :goto_d
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1c

    goto/16 :goto_f

    .line 506
    :cond_1c
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->albumMode:Z

    if-eqz v3, :cond_1d

    .line 507
    sget v3, Lorg/telegram/messenger/R$string;->cloud_album:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e

    .line 509
    :cond_1d
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_20

    .line 510
    iget v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v9, :cond_1e

    const-string v3, "Subscribers"

    .line 511
    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 513
    :cond_1e
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 514
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    const-string v9, "ChannelPrivate"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 516
    :cond_1f
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    const-string v9, "ChannelPublic"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 520
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v9, :cond_21

    const-string v3, "Members"

    .line 521
    invoke-static {v3, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 523
    :cond_21
    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v9, :cond_22

    .line 524
    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    const-string v9, "MegaLocation"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 525
    :cond_22
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 526
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    const-string v9, "MegaPrivate"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 528
    :cond_23
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    const-string v9, "MegaPublic"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 532
    :goto_e
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    goto/16 :goto_12

    .line 476
    :cond_24
    :goto_f
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_25

    move-object v3, v9

    goto/16 :goto_11

    .line 478
    :cond_25
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_2d

    .line 479
    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 480
    sget v3, Lorg/telegram/messenger/R$string;->SupportStatus:I

    const-string v9, "SupportStatus"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_11

    .line 481
    :cond_26
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v10, :cond_27

    .line 482
    sget v3, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v9, "Bot"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 483
    :cond_27
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v12, 0x514c8

    cmp-long v14, v10, v12

    if-eqz v14, :cond_2c

    const-wide/32 v12, 0xbdb28

    cmp-long v14, v10, v12

    if-nez v14, :cond_28

    goto :goto_10

    .line 486
    :cond_28
    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    if-nez v10, :cond_29

    new-array v3, v3, [Z

    .line 487
    iput-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    .line 489
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aput-boolean v1, v3, v1

    .line 490
    iget v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v10, v9, v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;

    move-result-object v3

    .line 491
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isOnline:[Z

    aget-boolean v9, v9, v1

    if-eqz v9, :cond_2a

    .line 492
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 494
    :cond_2a
    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_2e

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2b

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

    .line 495
    :cond_2b
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    .line 496
    sget v3, Lorg/telegram/messenger/R$string;->Online:I

    const-string v9, "Online"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 484
    :cond_2c
    :goto_10
    sget v3, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    const-string v9, "ServiceNotifications"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_2d
    move-object v3, v5

    .line 500
    :cond_2e
    :goto_11
    iget-boolean v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez v9, :cond_2f

    iget-object v9, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 502
    :cond_2f
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    move-object v3, v5

    .line 535
    :cond_30
    :goto_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_31

    .line 536
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v8, v5

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v2, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 537
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

    .line 538
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 539
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    goto :goto_13

    .line 541
    :cond_31
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    .line 542
    iput-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    .line 546
    :goto_13
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_32

    .line 547
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

    .line 549
    :cond_32
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 552
    :goto_14
    iget-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v2, v2

    const/4 v4, 0x7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x2e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v2, v4, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 556
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_34

    .line 557
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_33

    .line 558
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_33

    .line 560
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 561
    iget v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v6, v2

    cmpg-double v9, v4, v6

    if-gez v9, :cond_33

    .line 562
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v6, v6

    int-to-double v9, v2

    sub-double/2addr v9, v4

    add-double/2addr v6, v9

    double-to-int v2, v6

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 566
    :cond_33
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_36

    .line 567
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_36

    .line 569
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    int-to-double v3, v8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_36

    .line 571
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v3, v1

    add-double/2addr v5, v3

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    goto :goto_15

    .line 576
    :cond_34
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_35

    .line 577
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    .line 578
    iget v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    .line 579
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 580
    iget v4, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameWidth:I

    int-to-double v5, v4

    cmpg-double v7, v2, v5

    if-gez v7, :cond_35

    .line 581
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-double v5, v5

    int-to-double v9, v4

    sub-double/2addr v9, v2

    sub-double/2addr v5, v9

    double-to-int v2, v5

    iput v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 585
    :cond_35
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_36

    .line 586
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v8

    cmpl-float v2, v2, v3

    if-nez v2, :cond_36

    .line 588
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    int-to-double v3, v8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_36

    .line 590
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    int-to-double v5, v5

    sub-double/2addr v3, v1

    sub-double/2addr v5, v3

    double-to-int v1, v5

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 596
    :cond_36
    :goto_15
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    .line 597
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLeft:I

    .line 598
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 263
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 832
    iget-wide v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    return-wide v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 256
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 258
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 249
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 251
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 735
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 736
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

    .line 738
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

    .line 742
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawNameLock:Z

    if-eqz v0, :cond_3

    .line 743
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockLeft:I

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLockTop:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 744
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 747
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 748
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 749
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 754
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x6

    if-eqz v0, :cond_5

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 756
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    .line 758
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 759
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

    .line 762
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLeft:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v4

    add-float/2addr v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 764
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

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 768
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    .line 769
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 770
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

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 772
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 775
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    const/16 v3, 0x17

    const/4 v4, 0x4

    if-eqz v0, :cond_9

    .line 776
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    const/high16 v5, 0x40b00000    # 5.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v0, v5

    .line 777
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

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->rect:Landroid/graphics/RectF;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x41380000    # 11.5f

    mul-float v7, v5, v6

    mul-float v5, v5, v6

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

    .line 779
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 780
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLeft:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 782
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 785
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_a

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    const-string v2, "chats_unreadCounter"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v5, "chats_unreadCounterText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/CanvasButton;->setColor(II)V

    .line 787
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

    .line 788
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 789
    iget-object v2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CanvasButton;->setRounded(Z)V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    .line 793
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 794
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->countTop:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 796
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 798
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 801
    iget v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconLeft:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 809
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->nameLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 814
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCheck:Z

    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    const-string v3, "AccDescrVerified"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    .line 818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 819
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 823
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 825
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.CheckBox"

    .line 827
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 844
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 278
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    if-nez p3, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p3, :cond_2

    .line 282
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

    .line 283
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    .line 284
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

    .line 287
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 270
    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p2, :cond_0

    const/16 v0, 0x18

    .line 271
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

    .line 273
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
    .locals 1

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->actionButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 852
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez v0, :cond_0

    return-void

    .line 839
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 162
    iput-object p3, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentName:Ljava/lang/CharSequence;

    .line 163
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 164
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 165
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 166
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    goto :goto_0

    .line 167
    :cond_0
    instance-of p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_1

    .line 168
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 169
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 170
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    goto :goto_0

    .line 171
    :cond_1
    instance-of p3, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p3, :cond_2

    .line 172
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 173
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 174
    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 176
    :cond_2
    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 177
    iput-object p4, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->subLabel:Ljava/lang/CharSequence;

    .line 178
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    .line 179
    iput-boolean p6, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    const/4 p1, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    return-void
.end method

.method public setPromoSubscribeIcon(I)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->promoSubscribeIconSize:I

    :cond_0
    return-void
.end method

.method public setSublabelOffset(II)V
    .locals 0

    .line 300
    iput p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetX:I

    .line 301
    iput p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->sublabelOffsetY:I

    return-void
.end method

.method public update(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 623
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 624
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 626
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 627
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 629
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 631
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 632
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_2

    .line 633
    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 634
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    move-object v12, v6

    goto :goto_0

    :cond_2
    move-object v12, v1

    .line 638
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

    .line 640
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_7

    .line 641
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 642
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v6, :cond_4

    .line 643
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 644
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_5

    move-object v13, v6

    goto :goto_1

    :cond_4
    move-object v7, v3

    :cond_5
    move-object v13, v5

    .line 648
    :goto_1
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 650
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/ChatObject;->isTemplatesChat(IJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 652
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 653
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 655
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

    .line 656
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_8

    .line 657
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v7, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v8, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 660
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v5, v6, v3, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v7, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 664
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

    .line 667
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

    .line 668
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

    cmp-long v9, v5, v7

    if-nez v9, :cond_e

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v2, v5, :cond_f

    :cond_e
    const/4 v2, 0x1

    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_11

    .line 672
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_11

    .line 674
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_10

    .line 675
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    .line 677
    :goto_5
    iget v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    if-eq v5, v6, :cond_11

    const/4 v2, 0x1

    :cond_11
    if-nez v2, :cond_12

    .line 681
    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    and-int v5, p1, v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_12

    .line 682
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    invoke-virtual {v0, v6, v5, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V

    :cond_12
    if-nez v2, :cond_13

    .line 684
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

    .line 686
    :cond_14
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_15

    .line 687
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

    .line 689
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 691
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    const/4 v2, 0x1

    :cond_16
    if-nez v2, :cond_17

    .line 695
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawCount:Z

    if-eqz v5, :cond_17

    sget v5, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_READ_DIALOG_MESSAGE:I

    and-int v5, p1, v5

    if-eqz v5, :cond_17

    .line 696
    iget v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v6, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->dialog_id:J

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v5, :cond_17

    .line 697
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

    .line 707
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1a

    .line 708
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v2, :cond_19

    .line 709
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    goto :goto_8

    .line 711
    :cond_19
    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastStatus:I

    .line 713
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

    .line 714
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1b

    .line 715
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastName:Ljava/lang/String;

    .line 718
    :cond_1b
    :goto_9
    iput-object v3, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_a

    .line 723
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_b

    .line 721
    :cond_1d
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->buildLayout()V

    .line 725
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method public updateStatus(ZLorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 605
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    const-string v1, "chats_verifiedBackground"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    if-le p1, v3, :cond_1

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    invoke-virtual {p1, v2, v3, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 608
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->isShowPremiumStatusEnabled:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->savedMessages:Z

    if-nez p1, :cond_2

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    if-eqz v2, :cond_2

    .line 609
    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    invoke-virtual {p2, v2, v3, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 611
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

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 613
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 615
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ProfileSearchCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method
