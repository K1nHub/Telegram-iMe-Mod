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

    .line 581
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 583
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private final hasHint(I)Z
    .locals 1

    .line 1032
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

    .line 927
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 928
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 929
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 930
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 931
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 932
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 933
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 934
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 935
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 936
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 937
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 938
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 939
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 940
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 941
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 942
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 943
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 944
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 945
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 946
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 947
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 948
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 949
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 950
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 951
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 952
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 953
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 954
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 955
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 956
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 957
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 958
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 959
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 960
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 961
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 962
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 964
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 965
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getCategory()Lcom/iMe/fork/enums/SettingsToolsCategory;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1027
    :pswitch_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 1017
    :pswitch_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1018
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1019
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1020
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1021
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1022
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1023
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 1012
    :pswitch_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1013
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 1004
    :pswitch_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1005
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1006
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1007
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1008
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 992
    :pswitch_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 993
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 994
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 995
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 996
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 997
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 998
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 999
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1000
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 986
    :pswitch_5
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 987
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 988
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 983
    :pswitch_6
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 978
    :pswitch_7
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 979
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 980
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 972
    :pswitch_8
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 973
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 974
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 967
    :pswitch_9
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 968
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

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

    .line 918
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 589
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

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    goto :goto_10

    :cond_11
    move v0, v1

    :goto_11
    if-eqz v0, :cond_12

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    goto/16 :goto_1e

    .line 590
    :cond_12
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

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

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_18

    goto :goto_16

    :cond_18
    move v0, v1

    :goto_17
    if-eqz v0, :cond_19

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    goto :goto_1e

    .line 591
    :cond_19
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    :goto_18
    move v0, v2

    goto :goto_19

    :cond_1a
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1b

    goto :goto_18

    :cond_1b
    move v0, v1

    :goto_19
    if-eqz v0, :cond_1c

    :goto_1a
    move v0, v2

    goto :goto_1b

    :cond_1c
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1d

    goto :goto_1a

    :cond_1d
    move v0, v1

    :goto_1b
    if-eqz v0, :cond_1e

    :goto_1c
    move v1, v2

    goto :goto_1d

    :cond_1e
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1f

    goto :goto_1c

    :cond_1f
    :goto_1d
    if-eqz v1, :cond_20

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    goto :goto_1e

    .line 592
    :cond_20
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    :goto_1e
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 623
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 624
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "holder.itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v0, v4, :cond_12

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v4, :cond_12

    .line 627
    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->hasHint(I)Z

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 629
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 630
    sget p1, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 631
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    .line 629
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 635
    :cond_1
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 636
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_multi_reply:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 637
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    .line 635
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 641
    :cond_2
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 643
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_account_switch:I

    .line 642
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 644
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    .line 641
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 647
    :cond_3
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 649
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_menu:I

    .line 648
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 650
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    .line 647
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 653
    :cond_4
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 655
    sget p1, Lorg/telegram/messenger/R$string;->settings_proxy_button_in_toolbar:I

    .line 654
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 656
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    .line 653
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 659
    :cond_5
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_6

    .line 660
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 661
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    .line 659
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 665
    :cond_6
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_7

    .line 667
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_bottom_panel_in_channel:I

    .line 666
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 668
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result p2

    .line 665
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 671
    :cond_7
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_8

    .line 673
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_hide_keyboard_on_scroll:I

    .line 672
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 674
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    .line 671
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 677
    :cond_8
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_9

    .line 679
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_themes:I

    .line 678
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 680
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    .line 677
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 683
    :cond_9
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_a

    .line 684
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_remember_chat:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 685
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result p2

    .line 683
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 689
    :cond_a
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_b

    .line 691
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_reactions:I

    .line 690
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 692
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    .line 689
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 695
    :cond_b
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_c

    .line 697
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_calls_confirmation:I

    .line 696
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 698
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    .line 695
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 701
    :cond_c
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_d

    .line 703
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_delete_cloud_confirmation:I

    .line 702
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 704
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    .line 701
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 707
    :cond_d
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_e

    .line 709
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_gif_confirmation:I

    .line 708
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 710
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 707
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 713
    :cond_e
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_f

    .line 715
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_sticker_confirmation:I

    .line 714
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 716
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    .line 713
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 719
    :cond_f
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_10

    .line 721
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_speak_without_hold:I

    .line 720
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 722
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    .line 719
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 725
    :cond_10
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_11

    .line 726
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_speak_without_hold:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 727
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    .line 725
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 731
    :cond_11
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2d

    .line 733
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_wide_posts_in_channel:I

    .line 732
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 734
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result p2

    .line 731
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 739
    :cond_12
    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne v0, v4, :cond_1c

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_1c

    .line 740
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_13

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 741
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_account_info:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 740
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 745
    :cond_13
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_14

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 746
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_items:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 745
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 750
    :cond_14
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_15

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 753
    sget p1, Lorg/telegram/messenger/R$string;->Filters:I

    const-string p2, "Filters"

    .line 751
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 750
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 757
    :cond_15
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_16

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 758
    sget p1, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 757
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 762
    :cond_16
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_17

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 763
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_attach_alert_buttons:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 762
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 767
    :cond_17
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_18

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 769
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    .line 768
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 767
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 773
    :cond_18
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_19

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 776
    sget p1, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string p2, "Reactions"

    .line 774
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 773
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 780
    :cond_19
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1a

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 781
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_translator:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 782
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    .line 780
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 786
    :cond_1a
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1b

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 788
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_message_context_menu:I

    .line 787
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 789
    sget p2, Lorg/telegram/messenger/R$drawable;->fork_settings_context_menu:I

    .line 786
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 792
    :cond_1b
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2d

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 793
    sget p1, Lorg/telegram/messenger/R$string;->sending_settings_send:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 794
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 792
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 800
    :cond_1c
    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne v0, v4, :cond_20

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v4, :cond_20

    .line 801
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1d

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 802
    sget p1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 803
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/TemplatesMode;->getTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 801
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 807
    :cond_1d
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1e

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 809
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_camera:I

    .line 808
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 811
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/VideoVoiceCamera;->getShortTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 807
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 815
    :cond_1e
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1f

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 817
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_design_icon:I

    .line 816
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 818
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/DrawerHolidayIconType;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 815
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 821
    :cond_1f
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2d

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 823
    sget p1, Lorg/telegram/messenger/R$string;->settings_messages_formatting_title:I

    .line 822
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 824
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/enums/FormattingPanelType;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 821
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 828
    :cond_20
    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne v0, v3, :cond_2d

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v0, :cond_2d

    .line 833
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    const/4 v3, 0x0

    const-string v4, ", "

    if-ne p2, v0, :cond_23

    .line 835
    sget p2, Lorg/telegram/messenger/R$string;->settings_multi_panel_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 836
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 839
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->getActiveDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 840
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 841
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 843
    :cond_21
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 849
    :cond_22
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 853
    :cond_23
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_26

    .line 855
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 856
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 859
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->getSwipeToGoToNextUnreadDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 860
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 861
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 863
    :cond_24
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 869
    :cond_25
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 873
    :cond_26
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_29

    .line 875
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 876
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 879
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->getDialogTypesSettingsRecentChats()Ljava/util/List;

    move-result-object p2

    .line 880
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 881
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 883
    :cond_27
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 889
    :cond_28
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 893
    :cond_29
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 895
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 896
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 899
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ChatProfileController;->getChatProfileDialogType()Ljava/util/List;

    move-result-object p2

    .line 900
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 901
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 903
    :cond_2a
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 909
    :cond_2b
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2c
    move-object p2, v3

    .line 913
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p1, v3, p2, v2, v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    :cond_2d
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 581
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 598
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 601
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 602
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 605
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 606
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 609
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 610
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 613
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 615
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
