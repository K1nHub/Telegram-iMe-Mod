.class public final Lcom/iMe/common/TelegramPreferenceKeys$Global;
.super Ljava/lang/Object;
.source "TelegramPreferenceKeys.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/common/TelegramPreferenceKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/common/TelegramPreferenceKeys$Global;

    invoke-direct {v0}, Lcom/iMe/common/TelegramPreferenceKeys$Global;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isActionBarAccountSwitchEnabled()Ljava/lang/String;
    .locals 2

    .line 73
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "actionBarAccountSwitch"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isAlbumsIntroShown()Ljava/lang/String;
    .locals 2

    .line 166
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showAlbumsIntro"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isBotHelpTranslateEnabled()Ljava/lang/String;
    .locals 2

    .line 130
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "botHelpTranslate"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isCallsConfirmationEnabled()Ljava/lang/String;
    .locals 2

    .line 97
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showCallsConfirmDialog"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isChatProfileEnabled()Ljava/lang/String;
    .locals 2

    .line 208
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isChatProfileEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isChatSortingEnabledByDefault()Ljava/lang/String;
    .locals 2

    .line 160
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "sortingEnabledByDefault"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isChatThemesEnabled()Ljava/lang/String;
    .locals 2

    .line 85
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "chatThemesEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isCloudAlbumsEnabled()Ljava/lang/String;
    .locals 2

    .line 163
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "cloudAlbums"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isCombineMessagesEnabled()Ljava/lang/String;
    .locals 2

    .line 136
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "combineMessages"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isDebugThemeSwitchEnabled()Ljava/lang/String;
    .locals 2

    .line 25
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "debugThemeSwitch"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isDeleteCloudConfirmationEnabled()Ljava/lang/String;
    .locals 2

    .line 100
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showDeleteCloudConfirmDialog"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isDialogsCompactModeEnabled()Ljava/lang/String;
    .locals 2

    .line 79
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "dialogsCompactMode"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isDialogsPremiumHintEnabled()Ljava/lang/String;
    .locals 2

    .line 205
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isDialogsPremiumHintEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/String;
    .locals 2

    .line 91
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "extendedAvatarPreviewerByTap"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isExtendedAvatarPreviewerEnabled()Ljava/lang/String;
    .locals 2

    .line 88
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "extendedAvatarPreviewer"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFilesOriginalNameSavingEnabled()Ljava/lang/String;
    .locals 2

    .line 28
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isFilesOriginalNameSavingEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/String;
    .locals 2

    .line 31
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isFilesSendingPreviewAndCaptionEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFilterTabsAtBottomEnabled()Ljava/lang/String;
    .locals 2

    .line 151
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "filterTabsAtBottom"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isHideChatKeyboardOnScrollEnabled()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "chatHideKeyboardOnScroll"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isMainActionBarMenuEnabled()Ljava/lang/String;
    .locals 2

    .line 76
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "mainActionBarMenu"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isMessageQuickTranslateEnabled()Ljava/lang/String;
    .locals 2

    .line 127
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "messageQuickTranslate"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isMultiForwardingOptionsHintShown()Ljava/lang/String;
    .locals 2

    .line 49
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "multiForwardingOptionsHintShown"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isMultiReplyEnabled()Ljava/lang/String;
    .locals 2

    .line 121
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "multiReply"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isMusicIntroShown()Ljava/lang/String;
    .locals 2

    .line 181
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showMusicIntro"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isNewTelegramAuthorizationRulesRead()Ljava/lang/String;
    .locals 2

    .line 202
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isNewTelegramAuthorizationRulesRead"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/String;
    .locals 2

    .line 118
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "autoOpenForwardingOptions"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isPinnedPlayerMinimized()Ljava/lang/String;
    .locals 2

    .line 175
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isPinnedPlayerMinimized"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isPinnedPlayerNightThemeEnabled()Ljava/lang/String;
    .locals 2

    .line 178
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isPinnedPlayerNightTheme"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isPlayerPinned()Ljava/lang/String;
    .locals 2

    .line 172
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isPlayerPinned"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isProfileInfoHidden()Ljava/lang/String;
    .locals 2

    .line 46
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "hideProfilePersonalInfo"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isProxyButtonEnabled()Ljava/lang/String;
    .locals 2

    .line 40
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "isProxyButtonForceVisible"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isReactionsEnabled()Ljava/lang/String;
    .locals 2

    .line 142
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "reactionsEnabled"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isReactionsInSendPopupEnabled()Ljava/lang/String;
    .locals 2

    .line 148
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "sendPopupReactions"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isReadAllChatsConfirmationShown()Ljava/lang/String;
    .locals 2

    .line 43
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showReadAllConfirmDialog"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isRememberLastFilterTabEnabled()Ljava/lang/String;
    .locals 2

    .line 157
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "rememberLastFilterTab"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSendingGifConfirmationEnabled()Ljava/lang/String;
    .locals 2

    .line 103
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showSendingGifConfirmDialog"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSendingStickerConfirmationEnabled()Ljava/lang/String;
    .locals 2

    .line 106
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showSendingStickerConfirmDialog"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowDrawerHeaderArchiveEnabled()Ljava/lang/String;
    .locals 2

    .line 67
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showDrawerHeaderArchive"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowDrawerHeaderAvatarEnabled()Ljava/lang/String;
    .locals 2

    .line 64
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showDrawerHeaderAvatar"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showDrawerHeaderSubtitle"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isShowDrawerHeaderTitleEnabled()Ljava/lang/String;
    .locals 2

    .line 58
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showDrawerHeaderTitle"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSortCloudAlbumsByNameEnabled()Ljava/lang/String;
    .locals 2

    .line 169
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "sortCloudAlbumsByName"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSpeakWithoutHoldEnabled()Ljava/lang/String;
    .locals 2

    .line 109
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "speakWithoutHold"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isSuggestPremiumReactionsEmoji()Ljava/lang/String;
    .locals 2

    .line 193
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "suggestPremiumReactionsEmoji"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isTranslateInSendPopupEnabled()Ljava/lang/String;
    .locals 2

    .line 133
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "sendPopupTranslate"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isVibrationEnabled()Ljava/lang/String;
    .locals 2

    .line 34
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "allowVibration"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isVideoSpeakWithoutHoldEnabled()Ljava/lang/String;
    .locals 2

    .line 112
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "videoSpeakWithoutHold"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final lastSelectedLanguages()Ljava/lang/String;
    .locals 2

    .line 190
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "lastSelectedLanguages"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final promoSubscribeDialogLaunchCountLeft()Ljava/lang/String;
    .locals 2

    .line 19
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "promoSubscribeDialogLaunchCountLeft"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final promoSubscribeDialogShowCountLeft()Ljava/lang/String;
    .locals 2

    .line 22
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "promoSubscribeDialogShowCountLeft"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedChatProfileDialogTypes()Ljava/lang/String;
    .locals 2

    .line 211
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "selectedChatProfileDialogTypes"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedChatProfileTelegramIdMode()Ljava/lang/String;
    .locals 2

    .line 124
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "chatProfileTelegramIdMode"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDialogTypesForMessagePopupReactions()Ljava/lang/String;
    .locals 2

    .line 145
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "messagePopupReactionsEnabledDialogTypes"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDrawerHeaderSubtitle()Ljava/lang/String;
    .locals 2

    .line 55
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "drawerHeaderSubtitle"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDrawerHeaderTitle()Ljava/lang/String;
    .locals 2

    .line 52
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "drawerHeaderTitle"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDrawerHolidayIconType()Ljava/lang/String;
    .locals 2

    .line 199
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "selectedDrawerHolidayIconType"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedDrawerItems()Ljava/lang/String;
    .locals 2

    .line 70
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "drawerItems"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedExtendedAvatarPreviewerItems()Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "extendedAvatarPreviewerItems"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedFilterTabsNotificationMode()Ljava/lang/String;
    .locals 2

    .line 154
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "filterTabsNotificationMode"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedFilterTabsWidthMode()Ljava/lang/String;
    .locals 2

    .line 196
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "filterTabsWidthMode"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedFormattingPanelType()Ljava/lang/String;
    .locals 2

    .line 214
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "selectedFormattingPanelType"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedPhotoViewerMenuItems()Ljava/lang/String;
    .locals 2

    .line 139
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "photoViewerMenuItems"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedStickersSize()Ljava/lang/String;
    .locals 2

    .line 37
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "stickersSize"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedTemplatesMode()Ljava/lang/String;
    .locals 2

    .line 184
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "templatesMode"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedTemplatesSortingType()Ljava/lang/String;
    .locals 2

    .line 187
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "templatesSortingType"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectedVideoVoiceCamera()Ljava/lang/String;
    .locals 2

    .line 115
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "videoVoiceCamera"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final showStoryFabEnableHintCountLeft()Ljava/lang/String;
    .locals 2

    .line 217
    sget-object v0, Lcom/iMe/common/TelegramPreferenceKeys;->INSTANCE:Lcom/iMe/common/TelegramPreferenceKeys;

    const-string v1, "showStoryFabEnableHintCountLeft"

    invoke-static {v0, v1}, Lcom/iMe/common/TelegramPreferenceKeys;->access$withForkPrefix(Lcom/iMe/common/TelegramPreferenceKeys;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
