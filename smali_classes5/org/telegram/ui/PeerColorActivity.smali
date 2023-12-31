.class public Lorg/telegram/ui/PeerColorActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PeerColorActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;,
        Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;,
        Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;,
        Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;
    }
.end annotation


# instance fields
.field private applying:Z

.field private bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field private buttonLocked:Ljava/lang/CharSequence;

.field buttonRow:I

.field private buttonUnlocked:Ljava/lang/CharSequence;

.field colorPickerRow:I

.field private contentView:Landroid/widget/FrameLayout;

.field private final dialogId:J

.field iconRow:I

.field info2Row:I

.field infoRow:I

.field private final isChannel:Z

.field private listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

.field private peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

.field previewRow:I

.field rowCount:I

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

.field private selectedColor:I

.field private selectedEmoji:J

.field private setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;


# direct methods
.method public static synthetic $r8$lambda$-1KZCSIerkiffdLaYrcsUAbPVwY(Lorg/telegram/ui/PeerColorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-dzN8qFTi68ekJooO437Kz94Hcc(Lorg/telegram/ui/PeerColorActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7d9YUqT91D4hcyYmeklj3fyJhs0(Lorg/telegram/ui/PeerColorActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$showUnsavedAlert$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EnVXrT23mKClg7hYwHjTKzYYfUQ(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->lambda$buttonClick$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$ExZej-txFRXiG42PIN5fVOjEMEM(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->lambda$showBoostLimit$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$RolB_WLLHQgEKu-Pj2e8cUFf1q4(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$ULKimEbOR8ZyZLIvhQp4AOW2AD8(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->lambda$showBoostLimit$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$juXSfE1oYl3CXTOtpuaqtyzMOZE(Lorg/telegram/ui/PeerColorActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$showUnsavedAlert$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rEGU2wvKlQ-ihm3c23CuXbFIwlw(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->lambda$apply$9(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVaK6ibS8ebO-Bfx5pQcNZLvdJU(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$apply$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sz29LA9jy7utBpeHBwN6FqFTBpI(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$showBoostLimit$4(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xu1-nLGiuUB7qK9GoeTpy3ad6RY(Lorg/telegram/ui/PeerColorActivity;ZLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$showBoostLimit$5(ZLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 118
    iput-wide p1, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PeerColorActivity;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->showUnsavedAlert()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->updateMessages()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PeerColorActivity;)J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/PeerColorActivity;J)J
    .locals 0

    .line 81
    iput-wide p1, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->updateButtonY()V

    return-void
.end method

.method static synthetic access$302(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PeerColorActivity;)J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/PeerColorActivity;I)I
    .locals 0

    .line 81
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    return-object p1
.end method

.method private apply()V
    .locals 10

    .line 494
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->applying:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 498
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 499
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 503
    :cond_1
    iget v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    if-ne v5, v6, :cond_3

    iget-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_2

    move-wide v7, v2

    goto :goto_0

    :cond_2
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->background_emoji_id:J

    :goto_0
    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    return-void

    .line 506
    :cond_3
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;-><init>()V

    .line 507
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    neg-long v7, v7

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-nez v6, :cond_4

    return-void

    .line 511
    :cond_4
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 512
    iget v7, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->color:I

    .line 513
    iget-wide v7, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_5

    or-int/lit8 v2, v6, 0x20

    .line 514
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 515
    iput-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->background_emoji_id:J

    .line 517
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    or-int/2addr v2, v4

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->flags:I

    .line 518
    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$TL_channels_updateColor;->background_emoji_id:J

    goto :goto_1

    :cond_5
    and-int/lit8 v6, v6, -0x21

    .line 520
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 521
    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->background_emoji_id:J

    .line 523
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 524
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 525
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 526
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v5, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4

    .line 536
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 537
    iget v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->color:I

    if-ne v5, v6, :cond_8

    iget-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_7

    move-wide v7, v2

    goto :goto_2

    :cond_7
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$User;->background_emoji_id:J

    :goto_2
    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    return-void

    .line 540
    :cond_8
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateColor;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_updateColor;-><init>()V

    .line 541
    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 542
    iget v7, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$User;->color:I

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateColor;->color:I

    .line 543
    iget-wide v7, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_9

    or-int/lit8 v2, v6, 0x40

    .line 544
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 545
    iput-wide v7, v0, Lorg/telegram/tgnet/TLRPC$User;->background_emoji_id:J

    .line 547
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateColor;->flags:I

    or-int/2addr v2, v4

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateColor;->flags:I

    .line 548
    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateColor;->background_emoji_id:J

    goto :goto_3

    :cond_9
    and-int/lit8 v6, v6, -0x41

    .line 550
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    .line 551
    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->background_emoji_id:J

    .line 553
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 554
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 555
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 557
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/PeerColorActivity;->applying:Z

    .line 558
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v4, [Ljava/lang/Object;

    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_a
    :goto_5
    return-void
.end method

.method private buttonClick()V
    .locals 6

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, v0}, Lorg/telegram/ui/PeerColorActivity;->showBoostLimit(Z)V

    return-void

    .line 475
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_2

    .line 476
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserColorApplyPremium:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 480
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 482
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 487
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->apply()V

    .line 488
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 489
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->showBulletin()V

    return-void
.end method

.method private synthetic lambda$apply$10(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 526
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$apply$9(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->applying:Z

    if-eqz p1, :cond_0

    .line 528
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "BOOSTS_REQUIRED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 529
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->showBoostLimit(Z)V

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 532
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->showBulletin()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$buttonClick$8()V
    .locals 2

    .line 477
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "name_color"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 0

    .line 318
    instance-of p2, p1, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    if-eqz p2, :cond_0

    .line 319
    check-cast p1, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->buttonClick()V

    return-void
.end method

.method private synthetic lambda$showBoostLimit$2()V
    .locals 5

    .line 391
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 392
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 393
    iget-wide v2, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    neg-long v2, v2

    const-string v4, "chat_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 394
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const-string v2, "is_megagroup"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "start_from_boosts"

    const/4 v2, 0x1

    .line 395
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "only_boosts"

    .line 398
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    :cond_1
    new-instance v0, Lorg/telegram/ui/StatisticActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/StatisticActivity;-><init>(Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$showBoostLimit$3()V
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$showBoostLimit$4(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 7

    .line 382
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x14

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 386
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    const/4 p2, 0x1

    .line 388
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 389
    iget-wide p1, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    .line 390
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    .line 403
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 404
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$showBoostLimit$5(ZLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 3

    if-nez p1, :cond_1

    .line 380
    iget p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelColorLevelMin:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->apply()V

    goto :goto_1

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showUnsavedAlert$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 456
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$showUnsavedAlert$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 459
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->buttonClick()V

    return-void
.end method

.method private showBoostLimit(Z)V
    .locals 4

    .line 379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    new-instance v3, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PeerColorActivity;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private showBulletin()V
    .locals 3

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    .line 563
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    invoke-static {v1, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->ChannelColorApplied:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->UserColorApplied:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    :cond_1
    return-void
.end method

.method private showUnsavedAlert()V
    .locals 3

    .line 449
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 452
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 453
    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorUnsaved:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->UserColorUnsaved:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 454
    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorUnsavedMessage:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->UserColorUnsavedMessage:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Dismiss:I

    .line 455
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    .line 458
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 462
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x2

    .line 463
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateButtonY()V
    .locals 9

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 362
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 363
    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 364
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    if-gt v7, v0, :cond_1

    .line 366
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v7, v0, :cond_1

    move v4, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    .line 375
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/16 v3, 0x4c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->contentView:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateMessages()V
    .locals 5

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    const/4 v1, 0x0

    .line 571
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 572
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 573
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 575
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v3, :cond_0

    .line 576
    invoke-virtual {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->getColorId()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    .line 578
    :cond_0
    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    iput-wide v3, v2, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    .line 579
    aget-object v3, v0, v1

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAvatar(Lorg/telegram/messenger/MessageObject;)V

    .line 580
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 740
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 741
    iput v1, p0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->previewRow:I

    add-int/lit8 v0, v1, 0x1

    .line 742
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity;->colorPickerRow:I

    add-int/lit8 v1, v0, 0x1

    .line 743
    iput v1, p0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->iconRow:I

    add-int/lit8 v0, v1, 0x1

    .line 744
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity;->infoRow:I

    add-int/lit8 v1, v0, 0x1

    .line 745
    iput v1, p0, Lorg/telegram/ui/PeerColorActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->buttonRow:I

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorTitle:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->UserColorTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PeerColorActivity$2;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 168
    iget-wide v2, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x7

    if-gez v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 170
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_1

    .line 171
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->background_emoji_id:J

    iput-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    :cond_1
    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    .line 174
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    goto :goto_1

    .line 176
    :cond_2
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    rem-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 180
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_4

    .line 181
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$User;->background_emoji_id:J

    iput-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    :cond_4
    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    .line 184
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->color:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    goto :goto_1

    .line 186
    :cond_5
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    rem-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    .line 190
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v2, Lorg/telegram/ui/PeerColorActivity$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/PeerColorActivity$3;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 205
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 206
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PeerColorActivity$4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/PeerColorActivity$4;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 322
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0xe

    .line 325
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 326
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 328
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v5, "l"

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v6, 0x21

    invoke-virtual {v2, v5, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 330
    iget-boolean v5, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v5, :cond_6

    sget v5, Lorg/telegram/messenger/R$string;->ChannelColorApply:I

    goto :goto_2

    :cond_6
    sget v5, Lorg/telegram/messenger/R$string;->UserColorApplyIcon:I

    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/PeerColorActivity;->buttonUnlocked:Ljava/lang/CharSequence;

    .line 331
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, " "

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity;->buttonUnlocked:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->buttonLocked:Ljava/lang/CharSequence;

    .line 333
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 334
    iget-object p1, v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p1, v1, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    .line 335
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->buttonUnlocked:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->buttonLocked:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v2, 0x30

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x50

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PeerColorActivity$5;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 347
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 349
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->updateColors()V

    .line 350
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->updateRows()V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->contentView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 786
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    if-eq p2, p3, :cond_0

    return-void

    .line 787
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_3

    .line 791
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz p1, :cond_3

    .line 792
    iget-boolean p2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity;->buttonUnlocked:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity;->buttonLocked:Ljava/lang/CharSequence;

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_3
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 760
    new-instance v0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v3, 0x6

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/4 v3, 0x7

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v3, 0x8

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/16 v3, 0x9

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    const/16 v3, 0xa

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    const/16 v3, 0xb

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    const/16 v3, 0xc

    aput v2, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsavedChanged()Z
    .locals 8

    .line 422
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_0

    return v4

    .line 427
    :cond_0
    iget v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    if-ne v5, v6, :cond_2

    iget-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->background_emoji_id:J

    :goto_0
    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    return v4

    :cond_2
    return v3

    .line 432
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 433
    iget v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedColor:I

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->color:I

    if-ne v5, v6, :cond_5

    iget-wide v5, p0, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->background_emoji_id:J

    :goto_1
    cmp-long v0, v5, v1

    if-nez v0, :cond_5

    return v4

    :cond_5
    return v3
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->hasUnsavedChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 445
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->hasUnsavedChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->showUnsavedAlert()V

    const/4 v0, 0x0

    return v0

    .line 418
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentClosed()V
    .locals 0

    .line 589
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentClosed()V

    .line 590
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 131
    new-instance v0, Lorg/telegram/ui/PeerColorActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeerColorActivity$1;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->loadReplyIcons()V

    .line 143
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    .line 144
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->loadAppConfig(Z)V

    .line 146
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 750
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 751
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/PeerColorActivity;
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)V
    .locals 21

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 684
    iget-object v0, v13, Lorg/telegram/ui/PeerColorActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    if-nez v0, :cond_3

    if-nez v14, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v15, 0x1

    new-array v12, v15, [Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/16 v0, 0x14a

    .line 692
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x144

    .line 693
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 695
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->access$1300(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v11

    .line 697
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->access$1300(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 698
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->access$1300(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 699
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->updateImageBounds()V

    .line 700
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->access$1300(Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 701
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    neg-int v3, v3

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 702
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    move v9, v3

    goto :goto_0

    :cond_1
    move v0, v10

    move v9, v0

    .line 705
    :goto_0
    new-instance v8, Lorg/telegram/ui/PeerColorActivity$6;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v16

    const/16 v17, 0x18

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$SetReplyIconCell;->getColor()I

    move-result v18

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v15, v8

    move-object/from16 v8, v16

    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v20, v11

    move-object/from16 v11, p1

    move-object/from16 v16, v12

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/PeerColorActivity$6;-><init>(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/PeerColorActivity$SetReplyIconCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    const/4 v0, 0x1

    .line 724
    iput-boolean v0, v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->useAccentForPlus:Z

    .line 725
    iget-wide v0, v13, Lorg/telegram/ui/PeerColorActivity;->selectedEmoji:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelected(Ljava/lang/Long;)V

    const/4 v0, 0x3

    .line 726
    invoke-virtual {v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSaveState(I)V

    move-object/from16 v0, v20

    .line 727
    invoke-virtual {v15, v0, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V

    .line 728
    new-instance v0, Lorg/telegram/ui/PeerColorActivity$7;

    const/4 v1, -0x2

    invoke-direct {v0, v13, v15, v1, v1}, Lorg/telegram/ui/PeerColorActivity$7;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/view/View;II)V

    iput-object v0, v13, Lorg/telegram/ui/PeerColorActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 v1, 0x0

    aput-object v0, v16, v1

    .line 735
    aget-object v0, v16, v1

    const/16 v2, 0x35

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v3, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 736
    aget-object v0, v16, v1

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dimBehind()V

    :cond_3
    :goto_2
    return-void
.end method
