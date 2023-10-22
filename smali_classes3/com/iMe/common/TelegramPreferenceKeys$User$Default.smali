.class public final Lcom/iMe/common/TelegramPreferenceKeys$User$Default;
.super Ljava/lang/Object;
.source "TelegramPreferenceKeys.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/common/TelegramPreferenceKeys$User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;

    invoke-direct {v0}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appVersionRequiredUpdate()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final badPasscodeTries()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isAccountMuted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isAllChatsTabEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isArchiveSortingChatsEnabled()Z
    .locals 1

    .line 783
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    return v0
.end method

.method public static final isAutoBackupEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isChannelWidePostsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isFoldersFirstEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isFoldersHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isHiddenChatsHidden()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isHideMultiPanelOnScrollEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isIconInsteadAllChatsTabTitleEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isMessagePopupAggregatorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isMultiPanelEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isNoTopicFirstEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isOpenAlbumsInsteadCloudEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isPremiumAnimateAvatars()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isPremiumAnimateStickers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isQuickReactionEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isRecentChatsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isRememberLastDialogEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isRevokeByDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isSaveArchiveRecentChatsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isSectionLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isShowChannelBottomPanel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isShowPremiumBadgeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isShowPremiumStatusEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isSilentSendingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isSortingChatsEnabled()Z
    .locals 1

    .line 780
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    return v0
.end method

.method public static final isStoriesBarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isStoriesChannelsAvatarsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isStoriesContactsAvatarsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isStoriesEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isStoriesProfileAvatarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isSwipeToGoToNextUnreadDialogEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final isTopicsBarAtBottomEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isTopicsBarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final lastAutoBackupTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final lastFilterTab()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static final lastUptimeMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final passcodeHash()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static final passcodeRetryInMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final passcodeSaltString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static final passcodeType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final rememberLastDialogId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final rememberLastDialogTopicId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final selectedAllChatsTabFabs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 777
    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_STORY:Lcom/iMe/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;
    .locals 1

    .line 755
    sget-object v0, Lcom/iMe/fork/enums/Interval;->EVERY_WEEK:Lcom/iMe/fork/enums/Interval;

    return-object v0
.end method

.method public static final selectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;
    .locals 1

    .line 820
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    return-object v0
.end method

.method public static final selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 833
    sget-object v0, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDrawStatusTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 979
    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->UNREAD_COUNT_CHATS:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 980
    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->ONLINE_USER:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 981
    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->LIVE_VIDEO:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 982
    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->REACTION:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 983
    sget-object v1, Lcom/iMe/fork/enums/DrawStatusType;->MENTIONS:Lcom/iMe/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 978
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedMessagePopupItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 839
    sget-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->Companion:Lcom/iMe/fork/enums/MessagePopupItem$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/MessagePopupItem$Companion;->getDefaultEnumNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedMusicTab()Lcom/iMe/ui/music/MusicTab;
    .locals 1

    .line 896
    sget-object v0, Lcom/iMe/ui/music/MusicTab;->ALBUMS:Lcom/iMe/ui/music/MusicTab;

    return-object v0
.end method

.method public static final selectedRecentChatsDialogTypes()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CHAT"

    const-string v1, "GROUP"

    const-string v2, "CHANNEL"

    const-string v3, "BOT"

    const-string v4, "FORUM"

    .line 974
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;
    .locals 1

    .line 913
    sget-object v0, Lcom/iMe/fork/enums/SentMessageFont;->REGULAR:Lcom/iMe/fork/enums/SentMessageFont;

    return-object v0
.end method

.method public static final sortingDeployVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final templatesChannelId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static final timeout()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final useFingerprint()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final walletFingerprintUnlockEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final walletPinCodeEncrypted()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static final walletRefreshToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
