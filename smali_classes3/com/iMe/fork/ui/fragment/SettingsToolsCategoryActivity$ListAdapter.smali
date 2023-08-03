.class final Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SettingsToolsCategoryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 330
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private final hasHint(I)Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getHint(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)Ljava/lang/String;

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

    .line 469
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 470
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 471
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 472
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 473
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconType$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 474
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 475
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 476
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 477
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 478
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 479
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 480
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 481
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 482
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 483
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 484
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 485
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 486
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 487
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 488
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 489
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslate$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 490
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenu$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 491
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessages$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 492
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 493
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 494
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 495
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 496
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 497
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 498
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 499
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 500
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 501
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 502
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 503
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 505
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 506
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getCategory()Lcom/iMe/fork/enums/SettingsToolsCategory;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 553
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 554
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 555
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 556
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 557
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 558
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 548
    :pswitch_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 549
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 542
    :pswitch_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslate$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 543
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenu$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 544
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessages$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 545
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 531
    :pswitch_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 532
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 533
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 534
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 535
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 536
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 537
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 538
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 539
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 526
    :pswitch_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 527
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 528
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 523
    :pswitch_5
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 521
    :pswitch_6
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 517
    :pswitch_7
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 518
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 519
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 512
    :pswitch_8
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 513
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 514
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconType$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 508
    :pswitch_9
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 509
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    :goto_0
    return-void

    nop

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

    .line 460
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesTranslate$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesContextMenu$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendMessages$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    goto :goto_10

    :cond_11
    move v0, v1

    :goto_11
    if-eqz v0, :cond_12

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    goto/16 :goto_1c

    .line 337
    :cond_12
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    :goto_12
    move v0, v2

    goto :goto_13

    :cond_13
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHolidayIconType$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_18

    goto :goto_16

    :cond_18
    move v0, v1

    :goto_17
    if-eqz v0, :cond_19

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    goto :goto_1c

    .line 338
    :cond_19
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    :goto_18
    move v0, v2

    goto :goto_19

    :cond_1a
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1d

    goto :goto_1a

    :cond_1d
    :goto_1b
    if-eqz v1, :cond_1e

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    goto :goto_1c

    .line 339
    :cond_1e
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

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

    .line 361
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 362
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    .line 363
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "holder.itemView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v3, v5, :cond_12

    instance-of v5, v4, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v5, :cond_12

    .line 366
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->hasHint(I)Z

    move-result p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 368
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_multi_reply:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 370
    :cond_2
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_account_switch:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 371
    :cond_3
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_menu:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 372
    :cond_4
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->settings_proxy_button_in_toolbar:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 373
    :cond_5
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_6

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 374
    :cond_6
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_7

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_bottom_panel_in_channel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 375
    :cond_7
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_8

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_hide_keyboard_on_scroll:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 376
    :cond_8
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_9

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_themes:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 377
    :cond_9
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_a

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_remember_chat:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 378
    :cond_a
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_b

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_reactions:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 379
    :cond_b
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_c

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_calls_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 380
    :cond_c
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_d

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_delete_cloud_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 381
    :cond_d
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_e

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_gif_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 382
    :cond_e
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_f

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_sticker_confirmation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 383
    :cond_f
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_10

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_speak_without_hold:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 384
    :cond_10
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_11

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_speak_without_hold:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 385
    :cond_11
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2a

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_wide_posts_in_channel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 388
    :cond_12
    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne v3, v5, :cond_1c

    instance-of v5, v4, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_1c

    .line 389
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_13

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_account_info:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 390
    :cond_13
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_14

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_items:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 391
    :cond_14
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_15

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->Filters:I

    const-string p2, "Filters"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 392
    :cond_15
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_16

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 393
    :cond_16
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_17

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_attach_alert_buttons:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 394
    :cond_17
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_18

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 395
    :cond_18
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_19

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string p2, "Reactions"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 396
    :cond_19
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesTranslate$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1a

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_translator:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 397
    :cond_1a
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesContextMenu$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1b

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_message_context_menu:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->fork_settings_context_menu:I

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 398
    :cond_1b
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendMessages$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2a

    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget p1, Lorg/telegram/messenger/R$string;->sending_settings_send:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 401
    :cond_1c
    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne v3, v5, :cond_20

    instance-of v5, v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v5, :cond_20

    .line 402
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1d

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->getTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 403
    :cond_1d
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1e

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/TemplatesMode;->getTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 404
    :cond_1e
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1f

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_camera:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/VideoVoiceCamera;->getShortTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 405
    :cond_1f
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHolidayIconType$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2a

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_design_icon:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/DrawerHolidayIconType;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 407
    :cond_20
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne v3, v0, :cond_2a

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v0, :cond_2a

    .line 412
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    const/4 v3, 0x0

    const-string v4, ", "

    if-ne p2, v0, :cond_23

    .line 413
    sget p2, Lorg/telegram/messenger/R$string;->settings_multi_panel_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 414
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 416
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->getActiveDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 417
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 418
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 420
    :cond_21
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 423
    :cond_22
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 426
    :cond_23
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_26

    .line 427
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 430
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->getSwipeToGoToNextUnreadDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 431
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 432
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 434
    :cond_24
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 437
    :cond_25
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 440
    :cond_26
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_29

    .line 441
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 442
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 444
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->getDialogTypesSettingsRecentChats()Ljava/util/List;

    move-result-object p2

    .line 445
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 446
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 448
    :cond_27
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 451
    :cond_28
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_29
    move-object p2, v3

    .line 455
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p1, v3, p2, v2, v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    :cond_2a
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 344
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 346
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 347
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 349
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 350
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 352
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 353
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 355
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 357
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
