.class public final Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;
.super Ljava/lang/Object;
.source "TelegramPreferenceKeys.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/common/TelegramPreferenceKeys$User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;

    invoke-direct {v0}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;-><init>()V

    sput-object v0, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->INSTANCE:Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appVersionRequiredUpdate()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final autoLockInId()I
    .locals 1

    .line 810
    sget-object v0, Lorg/fork/enums/AutoLockTime;->HOUR:Lorg/fork/enums/AutoLockTime;

    invoke-virtual {v0}, Lorg/fork/enums/AutoLockTime;->getId()I

    move-result v0

    return v0
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

    .line 738
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

    return v0
.end method

.method public static final isAutoBackupEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isAutoUpdateTopicsCatalogEnabled()Z
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

.method public static final isHideFoldersEnabled()Z
    .locals 1

    const/4 v0, 0x0

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

.method public static final isNeuroBotsAutoEnabledInGroups()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isNeuroBotsAutoEnabledInPersonalChats()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isNeuroBotsEnabled()Z
    .locals 1

    const/4 v0, 0x0

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

.method public static final isShowOftenUsedNeuroBotsEnabled()Z
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

    .line 735
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isChatSortingEnabledByDefault:Z

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

.method public static final lastAutoUpdateTopicsCatalogTime()J
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

    .line 732
    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedAutoBackupInterval()Lorg/fork/enums/Interval;
    .locals 1

    .line 710
    sget-object v0, Lorg/fork/enums/Interval;->EVERY_WEEK:Lorg/fork/enums/Interval;

    return-object v0
.end method

.method public static final selectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;
    .locals 1

    .line 908
    sget-object v0, Lorg/fork/enums/Interval;->EVERY_WEEK:Lorg/fork/enums/Interval;

    return-object v0
.end method

.method public static final selectedContactsFilter()Lcom/smedialink/model/contacts/ContactsFilter;
    .locals 1

    .line 775
    sget-object v0, Lcom/smedialink/model/contacts/ContactsFilter;->ALL:Lcom/smedialink/model/contacts/ContactsFilter;

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

    .line 788
    sget-object v0, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

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

    .line 943
    sget-object v1, Lorg/fork/enums/DrawStatusType;->UNREAD_COUNT_CHATS:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->ONLINE_USER:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->LIVE_VIDEO:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->REACTION:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->MENTIONS:Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

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

    .line 794
    sget-object v0, Lorg/fork/enums/MessagePopupItem;->Companion:Lorg/fork/enums/MessagePopupItem$Companion;

    invoke-virtual {v0}, Lorg/fork/enums/MessagePopupItem$Companion;->getDefaultEnumNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedMusicTab()Lcom/smedialink/ui/music/MusicTab;
    .locals 1

    .line 851
    sget-object v0, Lcom/smedialink/ui/music/MusicTab;->ALBUMS:Lcom/smedialink/ui/music/MusicTab;

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

    .line 940
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedSentMessageFont()Lorg/fork/enums/SentMessageFont;
    .locals 1

    .line 884
    sget-object v0, Lorg/fork/enums/SentMessageFont;->REGULAR:Lorg/fork/enums/SentMessageFont;

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


# virtual methods
.method public final isSaveArchiveRecentChatsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
