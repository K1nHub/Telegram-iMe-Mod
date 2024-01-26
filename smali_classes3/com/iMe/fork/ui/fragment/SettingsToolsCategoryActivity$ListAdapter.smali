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

    .line 584
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 586
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private final hasHint(I)Z
    .locals 1

    .line 1043
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

    .line 936
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 937
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 938
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 939
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 940
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 941
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 942
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 943
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 944
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 945
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 946
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 947
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 948
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 949
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 950
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 951
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 952
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 953
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 954
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 955
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 956
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 957
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 958
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 959
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 960
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 961
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 962
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 963
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 964
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 965
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 966
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 967
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 968
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 969
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 970
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 971
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 972
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReplyColorsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 974
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 975
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->getCategory()Lcom/iMe/fork/enums/SettingsToolsCategory;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1038
    :pswitch_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 1028
    :pswitch_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1029
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1030
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1031
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1032
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1033
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1034
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 1023
    :pswitch_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1024
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 1014
    :pswitch_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1015
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1016
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1017
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1018
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setReplyColorsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1019
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 1002
    :pswitch_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1003
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1004
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1005
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1006
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1007
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1008
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1009
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 1010
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 996
    :pswitch_5
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 997
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 998
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto/16 :goto_0

    .line 993
    :pswitch_6
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 988
    :pswitch_7
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 989
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 990
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 982
    :pswitch_8
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 983
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 984
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    goto :goto_0

    .line 977
    :pswitch_9
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$setCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;I)V

    .line 978
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

    .line 927
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 592
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

    .line 593
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

    .line 594
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

    .line 595
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

    .line 625
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 626
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 627
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "holder.itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v0, v4, :cond_13

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v4, :cond_13

    .line 630
    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->hasHint(I)Z

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 632
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCustomizationAutoOpenForwardingOptionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 633
    sget p1, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 634
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isOpenForwardingOptionsAutomaticallyEnabled:Z

    .line 632
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 638
    :cond_1
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMultiReplyRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 639
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_multi_reply:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 640
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMultiReplyEnabled:Z

    .line 638
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 644
    :cond_2
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarAccountSwitchRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 646
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_account_switch:I

    .line 645
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 647
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isActionBarAccountSwitchEnabled:Z

    .line 644
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 650
    :cond_3
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListActionBarMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 652
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_action_bar_menu:I

    .line 651
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 653
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    .line 650
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 656
    :cond_4
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getEnableProxyButtonRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 658
    sget p1, Lorg/telegram/messenger/R$string;->settings_proxy_button_in_toolbar:I

    .line 657
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 659
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isProxyButtonEnabled:Z

    .line 656
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 662
    :cond_5
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getCloudAlbumsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_6

    .line 663
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 664
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    .line 662
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 668
    :cond_6
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatBottomPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_7

    .line 670
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_bottom_panel_in_channel:I

    .line 669
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 671
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result p2

    .line 668
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 674
    :cond_7
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatHideKeyboardOnScrollRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_8

    .line 676
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_hide_keyboard_on_scroll:I

    .line 675
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 677
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isHideChatKeyboardOnScrollEnabled:Z

    .line 674
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 680
    :cond_8
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatThemesEnableRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_9

    .line 682
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_themes:I

    .line 681
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 683
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isChatThemesEnabled:Z

    .line 680
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 686
    :cond_9
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMemoryRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_a

    .line 687
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_remember_chat:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 688
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result p2

    .line 686
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 692
    :cond_a
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendPopupReactionsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_b

    .line 694
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_send_popup_reactions:I

    .line 693
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 695
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isReactionsInSendPopupEnabled:Z

    .line 692
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 698
    :cond_b
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationCallsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_c

    .line 700
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_calls_confirmation:I

    .line 699
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 701
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isCallsConfirmationEnabled:Z

    .line 698
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 704
    :cond_c
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationDeleteCloudRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_d

    .line 706
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_delete_cloud_confirmation:I

    .line 705
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 707
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isDeleteCloudConfirmationEnabled:Z

    .line 704
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 710
    :cond_d
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingGifRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_e

    .line 712
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_gif_confirmation:I

    .line 711
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 713
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    .line 710
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 716
    :cond_e
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSendingStickerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_f

    .line 718
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_sending_sticker_confirmation:I

    .line 717
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 719
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    .line 716
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 722
    :cond_f
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_10

    .line 724
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_speak_without_hold:I

    .line 723
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 725
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isSpeakWithoutHoldEnabled:Z

    .line 722
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 728
    :cond_10
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoSpeakWithoutHoldRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_11

    .line 729
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_speak_without_hold:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 730
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isVideoSpeakWithoutHoldEnabled:Z

    .line 728
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 734
    :cond_11
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessageWidePostsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_12

    .line 736
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_wide_posts_in_channel:I

    .line 735
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 737
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result p2

    .line 734
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 740
    :cond_12
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getReplyColorsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2e

    .line 742
    sget p1, Lorg/telegram/messenger/R$string;->settings_colored_replies:I

    .line 741
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 743
    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isReplyColorsEnabled:Z

    .line 740
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 748
    :cond_13
    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne v0, v4, :cond_1d

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_1d

    .line 749
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHeaderSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_14

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 750
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_account_info:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 749
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 754
    :cond_14
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerItemsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_15

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 755
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_drawer_items:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 754
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 759
    :cond_15
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatFolderAndChatSortingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_16

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 762
    sget p1, Lorg/telegram/messenger/R$string;->Filters:I

    const-string p2, "Filters"

    .line 760
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 766
    :cond_16
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSettingsTopicsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_17

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 767
    sget p1, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 766
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 771
    :cond_17
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatAttachMenuButtonsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_18

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 772
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_attach_alert_buttons:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 771
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 776
    :cond_18
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatExtendedAvatarPreviewerRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_19

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 778
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    .line 777
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 782
    :cond_19
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getReactionSettingsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1a

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 785
    sget p1, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string p2, "Reactions"

    .line 783
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 782
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 789
    :cond_1a
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesTranslateRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1b

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 790
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_translator:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 791
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    .line 789
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2

    .line 795
    :cond_1b
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesContextMenuRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1c

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 797
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_message_context_menu:I

    .line 796
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 798
    sget p2, Lorg/telegram/messenger/R$drawable;->fork_settings_context_menu:I

    .line 795
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2

    .line 801
    :cond_1c
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getSendMessagesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2e

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 802
    sget p1, Lorg/telegram/messenger/R$string;->sending_settings_send:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 803
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 801
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2

    .line 809
    :cond_1d
    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne v0, v4, :cond_21

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v4, :cond_21

    .line 810
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatsTemplatesRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1e

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 811
    sget p1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 812
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesMode:Lcom/iMe/fork/enums/TemplatesMode;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/TemplatesMode;->getTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 810
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 816
    :cond_1e
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getConfirmationVideoVoiceCameraRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_1f

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 818
    sget p1, Lorg/telegram/messenger/R$string;->settings_interface_video_voice_camera:I

    .line 817
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 820
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedVideoVoiceCamera:Lcom/iMe/fork/enums/VideoVoiceCamera;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/VideoVoiceCamera;->getShortTextResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 816
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 824
    :cond_1f
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getDrawerHolidayIconTypeRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_20

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 826
    sget p1, Lorg/telegram/messenger/R$string;->settings_tools_design_icon:I

    .line 825
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 827
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/DrawerHolidayIconType;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 824
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 830
    :cond_20
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getMessagesFormattingRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2e

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 832
    sget p1, Lorg/telegram/messenger/R$string;->settings_messages_formatting_title:I

    .line 831
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 833
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/enums/FormattingPanelType;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 830
    invoke-virtual {v3, p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    .line 837
    :cond_21
    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne v0, v3, :cond_2e

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz v0, :cond_2e

    .line 842
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatMultiPanelRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    const/4 v3, 0x0

    const-string v4, ", "

    if-ne p2, v0, :cond_24

    .line 844
    sget p2, Lorg/telegram/messenger/R$string;->settings_multi_panel_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 845
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 848
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/MultiPanelController;->getActiveDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 849
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 850
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 852
    :cond_22
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 858
    :cond_23
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 862
    :cond_24
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatSwipeToGoToNextUnreadDialogRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_27

    .line 864
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 865
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 868
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->getSwipeToGoToNextUnreadDialogTypeNames()Ljava/util/List;

    move-result-object p2

    .line 869
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 870
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 872
    :cond_25
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 878
    :cond_26
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 882
    :cond_27
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatListRecentChatsRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 884
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 885
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 888
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->getDialogTypesSettingsRecentChats()Ljava/util/List;

    move-result-object p2

    .line 889
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 890
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 892
    :cond_28
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 898
    :cond_29
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 902
    :cond_2a
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;->access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2d

    .line 904
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 905
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 908
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ChatProfileController;->getChatProfileDialogType()Ljava/util/List;

    move-result-object p2

    .line 909
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 910
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_multi_panel_no_buttons:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 912
    :cond_2b
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 918
    :cond_2c
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_value_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2d
    move-object p2, v3

    .line 922
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p1, v3, p2, v2, v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    :cond_2e
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 601
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto :goto_0

    .line 604
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 605
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 608
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 609
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 612
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->NOTIFICATIONS_CHECK_CELL:I

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 613
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 616
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SettingsToolsCategoryActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 618
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
