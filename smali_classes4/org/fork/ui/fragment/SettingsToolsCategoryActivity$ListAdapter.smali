.class final Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SettingsToolsCategoryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 324
    invoke-direct {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private final hasHint(I)Z
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getHint(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final updateRows()V
    .locals 3

    .line 465
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 466
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomSharingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 467
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMultiReplyRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 468
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 469
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 470
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconType$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 471
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 472
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 473
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setProxyButtonForceVisibleRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 474
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 475
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 476
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 477
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 478
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 479
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 480
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 481
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 482
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 483
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 484
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 485
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 486
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslate$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 487
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenu$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 488
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessages$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 489
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 490
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 491
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 492
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 493
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 494
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 495
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteTwoSideRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 496
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 497
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 498
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 499
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 500
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 501
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 503
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 504
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->getCategory()Lorg/fork/enums/SettingsToolsCategory;

    move-result-object v0

    sget-object v1, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 551
    :pswitch_0
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 552
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 553
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteTwoSideRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 554
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 555
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 556
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 557
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 558
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 548
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 541
    :pswitch_2
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslate$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 542
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenu$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 543
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessages$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 544
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 530
    :pswitch_3
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 531
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 532
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 533
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 534
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 535
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 536
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 537
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 538
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 525
    :pswitch_4
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 526
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 527
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 522
    :pswitch_5
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 520
    :pswitch_6
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 516
    :pswitch_7
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 517
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 518
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setProxyButtonForceVisibleRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 511
    :pswitch_8
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 512
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 513
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconType$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 506
    :pswitch_9
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 507
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomSharingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 508
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMultiReplyRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 330
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerItemsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHeaderSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatFolderAndChatSortingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    :goto_4
    move v0, v2

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSettingsTopicsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_5
    if-eqz v0, :cond_6

    :goto_6
    move v0, v2

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatAttachMenuButtonsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_7
    if-eqz v0, :cond_8

    :goto_8
    move v0, v2

    goto :goto_9

    :cond_8
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatExtendedAvatarPreviewerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_9
    if-eqz v0, :cond_a

    :goto_a
    move v0, v2

    goto :goto_b

    :cond_a
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getReactionSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_a

    :cond_b
    move v0, v1

    :goto_b
    if-eqz v0, :cond_c

    :goto_c
    move v0, v2

    goto :goto_d

    :cond_c
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesTranslate$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    goto :goto_c

    :cond_d
    move v0, v1

    :goto_d
    if-eqz v0, :cond_e

    :goto_e
    move v0, v2

    goto :goto_f

    :cond_e
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesContextMenu$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    goto :goto_e

    :cond_f
    move v0, v1

    :goto_f
    if-eqz v0, :cond_10

    :goto_10
    move v0, v2

    goto :goto_11

    :cond_10
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendMessages$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    goto :goto_10

    :cond_11
    move v0, v1

    :goto_11
    if-eqz v0, :cond_12

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT:I

    goto/16 :goto_1c

    .line 331
    :cond_12
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatProfileTelegramIdRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    :goto_12
    move v0, v2

    goto :goto_13

    :cond_13
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatsTemplatesRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    goto :goto_12

    :cond_14
    move v0, v1

    :goto_13
    if-eqz v0, :cond_15

    :goto_14
    move v0, v2

    goto :goto_15

    :cond_15
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoVoiceCameraRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_16

    goto :goto_14

    :cond_16
    move v0, v1

    :goto_15
    if-eqz v0, :cond_17

    :goto_16
    move v0, v2

    goto :goto_17

    :cond_17
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHolidayIconType$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_18

    goto :goto_16

    :cond_18
    move v0, v1

    :goto_17
    if-eqz v0, :cond_19

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    goto :goto_1c

    .line 332
    :cond_19
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMultiPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    :goto_18
    move v0, v2

    goto :goto_19

    :cond_1a
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatSwipeToGoToNextUnreadDialogRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1b

    goto :goto_18

    :cond_1b
    move v0, v1

    :goto_19
    if-eqz v0, :cond_1c

    :goto_1a
    move v1, v2

    goto :goto_1b

    :cond_1c
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListRecentChatsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1d

    goto :goto_1a

    :cond_1d
    :goto_1b
    if-eqz v1, :cond_1e

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->NOTIFICATION_CHECK:I

    goto :goto_1c

    .line 333
    :cond_1e
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    :goto_1c
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 356
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    .line 357
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "holder.itemView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    sget v5, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v3, v5, :cond_14

    instance-of v5, v4, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v5, :cond_14

    .line 360
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {p0, p2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->hasHint(I)Z

    move-result p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 362
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCustomizationAutoOpenForwardingOptionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 363
    :cond_1
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCustomSharingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_custom_sharing:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCustomSharingModeEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 364
    :cond_2
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMultiReplyRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_multi_reply:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 365
    :cond_3
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarAccountSwitchRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_account_switch:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 366
    :cond_4
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarMenuRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_menu:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 367
    :cond_5
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getProxyButtonForceVisibleRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->settings_proxy_button_in_toolbar:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonForceVisible:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 368
    :cond_6
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCloudAlbumsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_7

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 369
    :cond_7
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatBottomPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_8

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_bottom_panel_in_channel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 370
    :cond_8
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatHideKeyboardOnScrollRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_9

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_hide_keyboard_on_scroll:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 371
    :cond_9
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatThemesEnableRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_a

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_themes:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 372
    :cond_a
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMemoryRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_b

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_remember_chat:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 373
    :cond_b
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendPopupReactionsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_c

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_reactions:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 374
    :cond_c
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationCallsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_d

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_calls_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 375
    :cond_d
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationDeleteCloudRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_e

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_delete_cloud_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 376
    :cond_e
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationDeleteTwoSideRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_f

    sget p1, Lorg/telegram/messenger/R$string;->settings_revoke_by_default:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->isRevokeByDefault()Z

    move-result p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 377
    :cond_f
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingGifRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_10

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_gif_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 378
    :cond_10
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingStickerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_11

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_sticker_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 379
    :cond_11
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_12

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_speak_without_hold:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 380
    :cond_12
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoSpeakWithoutHoldRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_13

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_speak_without_hold:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 381
    :cond_13
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessageWidePostsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2c

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_wide_posts_in_channel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 384
    :cond_14
    sget v5, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT:I

    if-ne v3, v5, :cond_1e

    instance-of v5, v4, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_1e

    .line 385
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHeaderSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_15

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_account_info:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 386
    :cond_15
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerItemsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_16

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_items:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 387
    :cond_16
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatFolderAndChatSortingRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_17

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->FilterAvailableTitle:I

    const-string p2, "FilterAvailableTitle"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 388
    :cond_17
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSettingsTopicsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_18

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 389
    :cond_18
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatAttachMenuButtonsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_19

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_attach_alert_buttons:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 390
    :cond_19
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatExtendedAvatarPreviewerRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1a

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 391
    :cond_1a
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getReactionSettingsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1b

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string p2, "Reactions"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 392
    :cond_1b
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesTranslate$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1c

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_translator:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 393
    :cond_1c
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesContextMenu$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1d

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_message_context_menu:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->fork_settings_context_menu:I

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 394
    :cond_1d
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendMessages$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2c

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->sending_settings_send:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 397
    :cond_1e
    sget v5, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    if-ne v3, v5, :cond_22

    instance-of v5, v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v5, :cond_22

    .line 398
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatProfileTelegramIdRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1f

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lorg/fork/enums/ChatProfileTelegramIdMode;

    invoke-virtual {p2}, Lorg/fork/enums/ChatProfileTelegramIdMode;->getTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 399
    :cond_1f
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatsTemplatesRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_20

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lorg/fork/enums/TemplatesMode;

    invoke-virtual {p2}, Lorg/fork/enums/TemplatesMode;->getTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 400
    :cond_20
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoVoiceCameraRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_21

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_camera:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lorg/fork/enums/VideoVoiceCamera;

    invoke-virtual {p2}, Lorg/fork/enums/VideoVoiceCamera;->getShortTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 401
    :cond_21
    iget-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHolidayIconType$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2c

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_design_icon:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lorg/fork/enums/DrawerHolidayIconType;

    invoke-virtual {p2}, Lorg/fork/enums/DrawerHolidayIconType;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 403
    :cond_22
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->NOTIFICATION_CHECK:I

    if-ne v3, v0, :cond_2c

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v0, :cond_2c

    .line 408
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMultiPanelRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    const/4 v3, 0x0

    const-string v4, ", "

    if-ne p2, v0, :cond_25

    .line 409
    sget p2, Lorg/telegram/messenger/R$string;->settings_multi_panel_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 410
    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 412
    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lorg/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/MultiPanelController;->getActiveDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 413
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 414
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 416
    :cond_23
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 419
    :cond_24
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 422
    :cond_25
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatSwipeToGoToNextUnreadDialogRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 423
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 424
    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 426
    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->getSwipeToGoToNextUnreadDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 427
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 428
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 430
    :cond_26
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 433
    :cond_27
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 436
    :cond_28
    iget-object v0, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListRecentChatsRow$p(Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2b

    .line 437
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 440
    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/RecentChatsController;->getDialogTypesSettingsRecentChats()Ljava/util/List;

    move-result-object p2

    .line 441
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 442
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 444
    :cond_29
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 447
    :cond_2a
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2b
    move-object p2, v3

    .line 451
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p1, v3, p2, v2, v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    :cond_2c
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 322
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const-string/jumbo v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 340
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 343
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 346
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->NOTIFICATION_CHECK:I

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 349
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 351
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
