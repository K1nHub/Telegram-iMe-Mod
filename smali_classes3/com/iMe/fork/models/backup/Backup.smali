.class public final Lcom/iMe/fork/models/backup/Backup;
.super Ljava/lang/Object;
.source "Backup.kt"


# instance fields
.field private final albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final allChatsTabFab:Ljava/lang/String;

.field private final allChatsTabFabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final allChatsTabMultiFabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field

.field private final archiveSortingPinnedChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final archiveSortingSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;"
        }
    .end annotation
.end field

.field private final bookmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;",
            ">;"
        }
    .end annotation
.end field

.field private final chatAttachAlertButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dialogSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

.field private final drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

.field private final drawerItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterTabsAtBottom:Ljava/lang/Boolean;

.field private final filterTabsNotificationMode:Ljava/lang/String;

.field private final filterTabsWidthMode:Ljava/lang/String;

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final foldersFirst:Ljava/lang/Boolean;

.field private final hideFolders:Ljava/lang/Boolean;

.field private final iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

.field private final isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

.field private final isAlbumsIntroShown:Ljava/lang/Boolean;

.field private final isAllChatsTabEnabled:Ljava/lang/Boolean;

.field private final isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

.field private final isAutoBackupEnabled:Ljava/lang/Boolean;

.field private final isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

.field private final isBotHelpTranslateEnabled:Ljava/lang/Boolean;

.field private final isCLoudAlbumsEnabled:Ljava/lang/Boolean;

.field private final isCallsConfirmationEnabled:Ljava/lang/Boolean;

.field private final isChannelWidePostsEnabled:Ljava/lang/Boolean;

.field private final isChatSortingEnabledByDefault:Ljava/lang/Boolean;

.field private final isChatThemesEnabled:Ljava/lang/Boolean;

.field private final isCombineMessagesEnabled:Ljava/lang/Boolean;

.field private final isCustomSharingModeEnabled:Ljava/lang/Boolean;

.field private final isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

.field private final isDialogsCompactModeEnabled:Ljava/lang/Boolean;

.field private final isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

.field private final isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

.field private final isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

.field private final isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

.field private final isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

.field private final isMainActionBarMenuEnabled:Ljava/lang/Boolean;

.field private final isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

.field private final isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

.field private final isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

.field private final isMultiPanelEnabled:Ljava/lang/Boolean;

.field private final isMultiReplyEnabled:Ljava/lang/Boolean;

.field private final isMusicIntroShown:Ljava/lang/Boolean;

.field private final isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

.field private final isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

.field private final isPinnedPlayerMinimized:Ljava/lang/Boolean;

.field private final isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

.field private final isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

.field private final isPlayerPinned:Ljava/lang/Boolean;

.field private final isPremiumAnimateAvatars:Ljava/lang/Boolean;

.field private final isPremiumAnimateStickers:Ljava/lang/Boolean;

.field private final isPremiumShowBadge:Ljava/lang/Boolean;

.field private final isPremiumShowStatus:Ljava/lang/Boolean;

.field private final isProfileInfoHidden:Ljava/lang/Boolean;

.field private final isProxyButtonForceVisible:Ljava/lang/Boolean;

.field private final isQuickReactionEnabled:Ljava/lang/Boolean;

.field private final isReactionsEnabled:Ljava/lang/Boolean;

.field private final isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

.field private final isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

.field private final isRecentChatsEnabled:Ljava/lang/Boolean;

.field private final isRememberLastDialogEnabled:Ljava/lang/Boolean;

.field private final isRevokeByDefault:Ljava/lang/Boolean;

.field private final isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

.field private final isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

.field private final isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

.field private final isShowChannelBottomPanel:Ljava/lang/Boolean;

.field private final isSilentSendingEnabled:Ljava/lang/Boolean;

.field private final isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

.field private final isSortingChatsEnabled:Ljava/lang/Boolean;

.field private final isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

.field private final isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

.field private final isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

.field private final isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

.field private final isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

.field private final isVibrationEnabled:Ljava/lang/Boolean;

.field private final isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

.field private final messagePopupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final multiPanelSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final musicPlaylists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;",
            ">;"
        }
    .end annotation
.end field

.field private final noTopicFirst:Ljava/lang/Boolean;

.field private final rememberLastFilterTab:Ljava/lang/Boolean;

.field private final selectedAutoBackupInterval:Ljava/lang/String;

.field private final selectedAutoUpdateCatalogInterval:Ljava/lang/String;

.field private final selectedChatProfileTelegramIdMode:Ljava/lang/String;

.field private final selectedContactsFilter:Ljava/lang/String;

.field private final selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedDrawStatusTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedExtendedAvatarPreviewerItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedMusicTab:Ljava/lang/String;

.field private final selectedPhotoViewerMenuItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedRecentChatsDialogTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedSentMessageFont:Ljava/lang/String;

.field private final selectedStickersSize:Ljava/lang/String;

.field private final selectedTemplatesSortingType:Ljava/lang/String;

.field private final selectedVideoVoiceCamera:Ljava/lang/String;

.field private final sortingPinnedChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final sortingSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;"
        }
    .end annotation
.end field

.field private final swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private final templatesChannelId:Ljava/lang/Long;

.field private final templatesMode:Ljava/lang/String;

.field private final topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/TopicBackup;",
            ">;"
        }
    .end annotation
.end field

.field private final topicsBarAtBottom:Ljava/lang/Boolean;

.field private final topicsEnabled:Ljava/lang/Boolean;

.field private final version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 115

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, -0x1

    const/16 v111, -0x1

    const/16 v112, -0x1

    const/16 v113, 0x1fff

    const/16 v114, 0x0

    invoke-direct/range {v0 .. v114}, Lcom/iMe/fork/models/backup/Backup;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/iMe/fork/models/DrawerHeaderSettings;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/iMe/fork/enums/DrawerHolidayIconType;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;",
            ">;>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/TopicBackup;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p108

    const-string v2, "allChatsTabFab"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 14
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled:Ljava/lang/Boolean;

    move-object v2, p2

    .line 15
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoBackupInterval:Ljava/lang/String;

    move-object v2, p3

    .line 16
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

    move-object v2, p4

    .line 17
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled:Ljava/lang/Boolean;

    move-object v2, p5

    .line 18
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedStickersSize:Ljava/lang/String;

    move-object v2, p6

    .line 19
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled:Ljava/lang/Boolean;

    move-object v2, p7

    .line 20
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers:Ljava/lang/Boolean;

    move-object v2, p8

    .line 21
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge:Ljava/lang/Boolean;

    move-object v2, p9

    .line 22
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus:Ljava/lang/Boolean;

    move-object v2, p10

    .line 23
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars:Ljava/lang/Boolean;

    move-object v2, p11

    .line 24
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible:Ljava/lang/Boolean;

    move-object v2, p12

    .line 25
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedContactsFilter:Ljava/lang/String;

    move-object/from16 v2, p13

    .line 26
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

    move-object/from16 v2, p14

    .line 27
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden:Ljava/lang/Boolean;

    move-object/from16 v2, p15

    .line 28
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

    move-object/from16 v2, p16

    .line 29
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

    move-object/from16 v2, p17

    .line 33
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-object/from16 v2, p18

    .line 34
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->drawerItems:Ljava/util/Set;

    move-object/from16 v2, p19

    .line 35
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p20

    .line 36
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p21

    .line 37
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p22

    .line 38
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p23

    .line 39
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p24

    .line 40
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;

    move-object/from16 v2, p25

    .line 41
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel:Ljava/lang/Boolean;

    move-object/from16 v2, p26

    .line 42
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p27

    .line 43
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p28

    .line 44
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->chatAttachAlertButtons:Ljava/util/Map;

    move-object/from16 v2, p29

    .line 45
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p30

    .line 46
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p31

    .line 47
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedExtendedAvatarPreviewerItems:Ljava/util/Set;

    move-object/from16 v2, p32

    .line 48
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->messagePopupItems:Ljava/util/List;

    move-object/from16 v2, p33

    .line 49
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p34

    .line 50
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p35

    .line 51
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p36

    .line 52
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p37

    .line 53
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p38

    .line 54
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p39

    .line 55
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p40

    .line 56
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p41

    .line 57
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedVideoVoiceCamera:Ljava/lang/String;

    move-object/from16 v2, p42

    .line 58
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p43

    .line 59
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    move-object/from16 v2, p44

    .line 60
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p45

    .line 61
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedDrawStatusTypes:Ljava/util/Set;

    move-object/from16 v2, p46

    .line 62
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p47

    .line 63
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p48

    .line 64
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p49

    .line 65
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    move-object/from16 v2, p50

    .line 66
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p51

    .line 67
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p52

    .line 68
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p53

    .line 69
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p54

    .line 70
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedSentMessageFont:Ljava/lang/String;

    move-object/from16 v2, p55

    .line 71
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p56

    .line 72
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p57

    .line 73
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    move-object/from16 v2, p58

    .line 74
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p59

    .line 75
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    move-object/from16 v2, p60

    .line 76
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p61

    .line 77
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault:Ljava/lang/Boolean;

    move-object/from16 v2, p62

    .line 78
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    move-object/from16 v2, p63

    .line 82
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p64

    .line 83
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p65

    .line 84
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->multiPanelSettings:Ljava/util/Map;

    move-object/from16 v2, p66

    .line 87
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filterTabsAtBottom:Ljava/lang/Boolean;

    move-object/from16 v2, p67

    .line 88
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filterTabsNotificationMode:Ljava/lang/String;

    move-object/from16 v2, p68

    .line 89
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filterTabsWidthMode:Ljava/lang/String;

    move-object/from16 v2, p69

    .line 90
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->rememberLastFilterTab:Ljava/lang/Boolean;

    move-object/from16 v2, p70

    .line 91
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->hideFolders:Ljava/lang/Boolean;

    move-object/from16 v2, p71

    .line 92
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->foldersFirst:Ljava/lang/Boolean;

    move-object/from16 v2, p72

    .line 93
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filters:Ljava/util/List;

    move-object/from16 v2, p73

    .line 97
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault:Ljava/lang/Boolean;

    move-object/from16 v2, p74

    .line 98
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p75

    .line 99
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

    move-object/from16 v2, p76

    .line 100
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFabs:Ljava/util/Set;

    move-object/from16 v2, p77

    .line 101
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p78

    .line 102
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->sortingSettings:Ljava/util/List;

    move-object/from16 v2, p79

    .line 103
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p80

    .line 104
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingSettings:Ljava/util/List;

    move-object/from16 v2, p81

    .line 105
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->sortingPinnedChats:Ljava/util/Map;

    move-object/from16 v2, p82

    .line 106
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingPinnedChats:Ljava/util/Map;

    move-object/from16 v2, p83

    .line 110
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p84

    .line 111
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown:Ljava/lang/Boolean;

    move-object/from16 v2, p85

    .line 112
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p86

    .line 113
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p87

    .line 114
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->albums:Ljava/util/List;

    move-object/from16 v2, p88

    .line 118
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->bookmarks:Ljava/util/Map;

    move-object/from16 v2, p89

    .line 122
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->dialogSettings:Ljava/util/List;

    move-object/from16 v2, p90

    .line 126
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned:Ljava/lang/Boolean;

    move-object/from16 v2, p91

    .line 127
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized:Ljava/lang/Boolean;

    move-object/from16 v2, p92

    .line 128
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

    move-object/from16 v2, p93

    .line 129
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p94

    .line 130
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown:Ljava/lang/Boolean;

    move-object/from16 v2, p95

    .line 131
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedMusicTab:Ljava/lang/String;

    move-object/from16 v2, p96

    .line 132
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->musicPlaylists:Ljava/util/Map;

    move-object/from16 v2, p97

    .line 136
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->templatesMode:Ljava/lang/String;

    move-object/from16 v2, p98

    .line 137
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedTemplatesSortingType:Ljava/lang/String;

    move-object/from16 v2, p99

    .line 138
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->templatesChannelId:Ljava/lang/Long;

    move-object/from16 v2, p100

    .line 139
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->templates:Ljava/util/List;

    move-object/from16 v2, p101

    .line 143
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->topicsEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p102

    .line 144
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->topicsBarAtBottom:Ljava/lang/Boolean;

    move-object/from16 v2, p103

    .line 145
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

    move-object/from16 v2, p104

    .line 146
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoUpdateCatalogInterval:Ljava/lang/String;

    move-object/from16 v2, p105

    .line 147
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->noTopicFirst:Ljava/lang/Boolean;

    move-object/from16 v2, p106

    .line 148
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->topics:Ljava/util/List;

    move-object/from16 v2, p107

    .line 152
    iput-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->version:Ljava/lang/Integer;

    .line 153
    iput-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFab:Ljava/lang/String;

    move-object/from16 v1, p109

    .line 154
    iput-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabMultiFabs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 106

    move/from16 v0, p110

    move/from16 v1, p111

    move/from16 v2, p112

    move/from16 v3, p113

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v7, p3

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v9, p5

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v11, p7

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p9

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p10

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p11

    :goto_a
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v5, p12

    :goto_b
    move-object/from16 v16, v5

    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v5, p13

    :goto_c
    move-object/from16 v17, v5

    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v5, p14

    :goto_d
    move-object/from16 v18, v5

    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v5, p15

    :goto_e
    const v19, 0x8000

    and-int v20, v0, v19

    if-eqz v20, :cond_f

    const/16 v20, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v20, p16

    :goto_f
    const/high16 v21, 0x10000

    and-int v22, v0, v21

    if-eqz v22, :cond_10

    const/16 v22, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v22, p17

    :goto_10
    const/high16 v23, 0x20000

    and-int v24, v0, v23

    if-eqz v24, :cond_11

    const/16 v24, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v24, p18

    :goto_11
    const/high16 v25, 0x40000

    and-int v26, v0, v25

    if-eqz v26, :cond_12

    const/16 v26, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v26, p19

    :goto_12
    const/high16 v27, 0x80000

    and-int v28, v0, v27

    if-eqz v28, :cond_13

    const/16 v28, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v28, p20

    :goto_13
    const/high16 v29, 0x100000

    and-int v30, v0, v29

    if-eqz v30, :cond_14

    const/16 v30, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v30, p21

    :goto_14
    const/high16 v31, 0x200000

    and-int v31, v0, v31

    if-eqz v31, :cond_15

    const/16 v31, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v31, p22

    :goto_15
    const/high16 v32, 0x400000

    and-int v32, v0, v32

    if-eqz v32, :cond_16

    const/16 v32, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v32, p23

    :goto_16
    const/high16 v33, 0x800000

    and-int v33, v0, v33

    if-eqz v33, :cond_17

    const/16 v33, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v33, p24

    :goto_17
    const/high16 v34, 0x1000000

    and-int v34, v0, v34

    if-eqz v34, :cond_18

    const/16 v34, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v34, p25

    :goto_18
    const/high16 v35, 0x2000000

    and-int v35, v0, v35

    if-eqz v35, :cond_19

    const/16 v35, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v35, p26

    :goto_19
    const/high16 v36, 0x4000000

    and-int v36, v0, v36

    if-eqz v36, :cond_1a

    const/16 v36, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v36, p27

    :goto_1a
    const/high16 v37, 0x8000000

    and-int v37, v0, v37

    if-eqz v37, :cond_1b

    const/16 v37, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v37, p28

    :goto_1b
    const/high16 v38, 0x10000000

    and-int v38, v0, v38

    if-eqz v38, :cond_1c

    const/16 v38, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v38, p29

    :goto_1c
    const/high16 v39, 0x20000000

    and-int v39, v0, v39

    if-eqz v39, :cond_1d

    const/16 v39, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v39, p30

    :goto_1d
    const/high16 v40, 0x40000000    # 2.0f

    and-int v40, v0, v40

    if-eqz v40, :cond_1e

    const/16 v40, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v40, p31

    :goto_1e
    const/high16 v41, -0x80000000

    and-int v0, v0, v41

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p32

    :goto_1f
    and-int/lit8 v41, v1, 0x1

    if-eqz v41, :cond_20

    const/16 v41, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v41, p33

    :goto_20
    and-int/lit8 v42, v1, 0x2

    if-eqz v42, :cond_21

    const/16 v42, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v42, p34

    :goto_21
    and-int/lit8 v43, v1, 0x4

    if-eqz v43, :cond_22

    const/16 v43, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v43, p35

    :goto_22
    and-int/lit8 v44, v1, 0x8

    if-eqz v44, :cond_23

    const/16 v44, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v44, p36

    :goto_23
    and-int/lit8 v45, v1, 0x10

    if-eqz v45, :cond_24

    const/16 v45, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v45, p37

    :goto_24
    and-int/lit8 v46, v1, 0x20

    if-eqz v46, :cond_25

    const/16 v46, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v46, p38

    :goto_25
    and-int/lit8 v47, v1, 0x40

    if-eqz v47, :cond_26

    const/16 v47, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v47, p39

    :goto_26
    move-object/from16 p110, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p40

    :goto_27
    move-object/from16 v48, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v0, p41

    :goto_28
    move-object/from16 v49, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_29

    :cond_29
    move-object/from16 v0, p42

    :goto_29
    move-object/from16 v50, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2a

    :cond_2a
    move-object/from16 v0, p43

    :goto_2a
    move-object/from16 v51, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_2b

    :cond_2b
    move-object/from16 v0, p44

    :goto_2b
    move-object/from16 v52, v0

    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c

    :cond_2c
    move-object/from16 v0, p45

    :goto_2c
    move-object/from16 v53, v0

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2d
    move-object/from16 v0, p46

    :goto_2d
    move-object/from16 v54, v0

    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_2e

    :cond_2e
    move-object/from16 v0, p47

    :goto_2e
    and-int v55, v1, v19

    if-eqz v55, :cond_2f

    const/16 v55, 0x0

    goto :goto_2f

    :cond_2f
    move-object/from16 v55, p48

    :goto_2f
    and-int v56, v1, v21

    if-eqz v56, :cond_30

    const/16 v56, 0x0

    goto :goto_30

    :cond_30
    move-object/from16 v56, p49

    :goto_30
    and-int v57, v1, v23

    if-eqz v57, :cond_31

    const/16 v57, 0x0

    goto :goto_31

    :cond_31
    move-object/from16 v57, p50

    :goto_31
    and-int v58, v1, v25

    if-eqz v58, :cond_32

    const/16 v58, 0x0

    goto :goto_32

    :cond_32
    move-object/from16 v58, p51

    :goto_32
    and-int v59, v1, v27

    if-eqz v59, :cond_33

    const/16 v59, 0x0

    goto :goto_33

    :cond_33
    move-object/from16 v59, p52

    :goto_33
    and-int v60, v1, v29

    if-eqz v60, :cond_34

    const/16 v60, 0x0

    goto :goto_34

    :cond_34
    move-object/from16 v60, p53

    :goto_34
    const/high16 v61, 0x200000

    and-int v61, v1, v61

    if-eqz v61, :cond_35

    const/16 v61, 0x0

    goto :goto_35

    :cond_35
    move-object/from16 v61, p54

    :goto_35
    const/high16 v62, 0x400000

    and-int v62, v1, v62

    if-eqz v62, :cond_36

    const/16 v62, 0x0

    goto :goto_36

    :cond_36
    move-object/from16 v62, p55

    :goto_36
    const/high16 v63, 0x800000

    and-int v63, v1, v63

    if-eqz v63, :cond_37

    const/16 v63, 0x0

    goto :goto_37

    :cond_37
    move-object/from16 v63, p56

    :goto_37
    const/high16 v64, 0x1000000

    and-int v64, v1, v64

    if-eqz v64, :cond_38

    const/16 v64, 0x0

    goto :goto_38

    :cond_38
    move-object/from16 v64, p57

    :goto_38
    const/high16 v65, 0x2000000

    and-int v65, v1, v65

    if-eqz v65, :cond_39

    const/16 v65, 0x0

    goto :goto_39

    :cond_39
    move-object/from16 v65, p58

    :goto_39
    const/high16 v66, 0x4000000

    and-int v66, v1, v66

    if-eqz v66, :cond_3a

    const/16 v66, 0x0

    goto :goto_3a

    :cond_3a
    move-object/from16 v66, p59

    :goto_3a
    const/high16 v67, 0x8000000

    and-int v67, v1, v67

    if-eqz v67, :cond_3b

    const/16 v67, 0x0

    goto :goto_3b

    :cond_3b
    move-object/from16 v67, p60

    :goto_3b
    const/high16 v68, 0x10000000

    and-int v68, v1, v68

    if-eqz v68, :cond_3c

    const/16 v68, 0x0

    goto :goto_3c

    :cond_3c
    move-object/from16 v68, p61

    :goto_3c
    const/high16 v69, 0x20000000

    and-int v69, v1, v69

    if-eqz v69, :cond_3d

    const/16 v69, 0x0

    goto :goto_3d

    :cond_3d
    move-object/from16 v69, p62

    :goto_3d
    const/high16 v70, 0x40000000    # 2.0f

    and-int v70, v1, v70

    if-eqz v70, :cond_3e

    const/16 v70, 0x0

    goto :goto_3e

    :cond_3e
    move-object/from16 v70, p63

    :goto_3e
    const/high16 v71, -0x80000000

    and-int v1, v1, v71

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    goto :goto_3f

    :cond_3f
    move-object/from16 v1, p64

    :goto_3f
    and-int/lit8 v71, v2, 0x1

    if-eqz v71, :cond_40

    const/16 v71, 0x0

    goto :goto_40

    :cond_40
    move-object/from16 v71, p65

    :goto_40
    and-int/lit8 v72, v2, 0x2

    if-eqz v72, :cond_41

    const/16 v72, 0x0

    goto :goto_41

    :cond_41
    move-object/from16 v72, p66

    :goto_41
    and-int/lit8 v73, v2, 0x4

    if-eqz v73, :cond_42

    const/16 v73, 0x0

    goto :goto_42

    :cond_42
    move-object/from16 v73, p67

    :goto_42
    and-int/lit8 v74, v2, 0x8

    if-eqz v74, :cond_43

    const/16 v74, 0x0

    goto :goto_43

    :cond_43
    move-object/from16 v74, p68

    :goto_43
    and-int/lit8 v75, v2, 0x10

    if-eqz v75, :cond_44

    const/16 v75, 0x0

    goto :goto_44

    :cond_44
    move-object/from16 v75, p69

    :goto_44
    and-int/lit8 v76, v2, 0x20

    if-eqz v76, :cond_45

    const/16 v76, 0x0

    goto :goto_45

    :cond_45
    move-object/from16 v76, p70

    :goto_45
    and-int/lit8 v77, v2, 0x40

    if-eqz v77, :cond_46

    const/16 v77, 0x0

    goto :goto_46

    :cond_46
    move-object/from16 v77, p71

    :goto_46
    move-object/from16 p111, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    goto :goto_47

    :cond_47
    move-object/from16 v1, p72

    :goto_47
    move-object/from16 v78, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    goto :goto_48

    :cond_48
    move-object/from16 v1, p73

    :goto_48
    move-object/from16 v79, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    goto :goto_49

    :cond_49
    move-object/from16 v1, p74

    :goto_49
    move-object/from16 v80, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    goto :goto_4a

    :cond_4a
    move-object/from16 v1, p75

    :goto_4a
    move-object/from16 v81, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    goto :goto_4b

    :cond_4b
    move-object/from16 v1, p76

    :goto_4b
    move-object/from16 v82, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_4c

    const/4 v1, 0x0

    goto :goto_4c

    :cond_4c
    move-object/from16 v1, p77

    :goto_4c
    move-object/from16 v83, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_4d

    const/4 v1, 0x0

    goto :goto_4d

    :cond_4d
    move-object/from16 v1, p78

    :goto_4d
    move-object/from16 v84, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    goto :goto_4e

    :cond_4e
    move-object/from16 v1, p79

    :goto_4e
    and-int v19, v2, v19

    if-eqz v19, :cond_4f

    const/16 v19, 0x0

    goto :goto_4f

    :cond_4f
    move-object/from16 v19, p80

    :goto_4f
    and-int v21, v2, v21

    if-eqz v21, :cond_50

    const/16 v21, 0x0

    goto :goto_50

    :cond_50
    move-object/from16 v21, p81

    :goto_50
    and-int v23, v2, v23

    if-eqz v23, :cond_51

    const/16 v23, 0x0

    goto :goto_51

    :cond_51
    move-object/from16 v23, p82

    :goto_51
    and-int v25, v2, v25

    if-eqz v25, :cond_52

    const/16 v25, 0x0

    goto :goto_52

    :cond_52
    move-object/from16 v25, p83

    :goto_52
    and-int v27, v2, v27

    if-eqz v27, :cond_53

    const/16 v27, 0x0

    goto :goto_53

    :cond_53
    move-object/from16 v27, p84

    :goto_53
    and-int v29, v2, v29

    if-eqz v29, :cond_54

    const/16 v29, 0x0

    goto :goto_54

    :cond_54
    move-object/from16 v29, p85

    :goto_54
    const/high16 v85, 0x200000

    and-int v85, v2, v85

    if-eqz v85, :cond_55

    const/16 v85, 0x0

    goto :goto_55

    :cond_55
    move-object/from16 v85, p86

    :goto_55
    const/high16 v86, 0x400000

    and-int v86, v2, v86

    if-eqz v86, :cond_56

    const/16 v86, 0x0

    goto :goto_56

    :cond_56
    move-object/from16 v86, p87

    :goto_56
    const/high16 v87, 0x800000

    and-int v87, v2, v87

    if-eqz v87, :cond_57

    const/16 v87, 0x0

    goto :goto_57

    :cond_57
    move-object/from16 v87, p88

    :goto_57
    const/high16 v88, 0x1000000

    and-int v88, v2, v88

    if-eqz v88, :cond_58

    const/16 v88, 0x0

    goto :goto_58

    :cond_58
    move-object/from16 v88, p89

    :goto_58
    const/high16 v89, 0x2000000

    and-int v89, v2, v89

    if-eqz v89, :cond_59

    const/16 v89, 0x0

    goto :goto_59

    :cond_59
    move-object/from16 v89, p90

    :goto_59
    const/high16 v90, 0x4000000

    and-int v90, v2, v90

    if-eqz v90, :cond_5a

    const/16 v90, 0x0

    goto :goto_5a

    :cond_5a
    move-object/from16 v90, p91

    :goto_5a
    const/high16 v91, 0x8000000

    and-int v91, v2, v91

    if-eqz v91, :cond_5b

    const/16 v91, 0x0

    goto :goto_5b

    :cond_5b
    move-object/from16 v91, p92

    :goto_5b
    const/high16 v92, 0x10000000

    and-int v92, v2, v92

    if-eqz v92, :cond_5c

    const/16 v92, 0x0

    goto :goto_5c

    :cond_5c
    move-object/from16 v92, p93

    :goto_5c
    const/high16 v93, 0x20000000

    and-int v93, v2, v93

    if-eqz v93, :cond_5d

    const/16 v93, 0x0

    goto :goto_5d

    :cond_5d
    move-object/from16 v93, p94

    :goto_5d
    const/high16 v94, 0x40000000    # 2.0f

    and-int v94, v2, v94

    if-eqz v94, :cond_5e

    const/16 v94, 0x0

    goto :goto_5e

    :cond_5e
    move-object/from16 v94, p95

    :goto_5e
    const/high16 v95, -0x80000000

    and-int v2, v2, v95

    if-eqz v2, :cond_5f

    const/4 v2, 0x0

    goto :goto_5f

    :cond_5f
    move-object/from16 v2, p96

    :goto_5f
    and-int/lit8 v95, v3, 0x1

    if-eqz v95, :cond_60

    const/16 v95, 0x0

    goto :goto_60

    :cond_60
    move-object/from16 v95, p97

    :goto_60
    and-int/lit8 v96, v3, 0x2

    if-eqz v96, :cond_61

    const/16 v96, 0x0

    goto :goto_61

    :cond_61
    move-object/from16 v96, p98

    :goto_61
    and-int/lit8 v97, v3, 0x4

    if-eqz v97, :cond_62

    const/16 v97, 0x0

    goto :goto_62

    :cond_62
    move-object/from16 v97, p99

    :goto_62
    and-int/lit8 v98, v3, 0x8

    if-eqz v98, :cond_63

    const/16 v98, 0x0

    goto :goto_63

    :cond_63
    move-object/from16 v98, p100

    :goto_63
    and-int/lit8 v99, v3, 0x10

    if-eqz v99, :cond_64

    const/16 v99, 0x0

    goto :goto_64

    :cond_64
    move-object/from16 v99, p101

    :goto_64
    and-int/lit8 v100, v3, 0x20

    if-eqz v100, :cond_65

    const/16 v100, 0x0

    goto :goto_65

    :cond_65
    move-object/from16 v100, p102

    :goto_65
    and-int/lit8 v101, v3, 0x40

    if-eqz v101, :cond_66

    const/16 v101, 0x0

    goto :goto_66

    :cond_66
    move-object/from16 v101, p103

    :goto_66
    move-object/from16 p112, v2

    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_67

    const/4 v2, 0x0

    goto :goto_67

    :cond_67
    move-object/from16 v2, p104

    :goto_67
    move-object/from16 v102, v2

    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_68

    const/4 v2, 0x0

    goto :goto_68

    :cond_68
    move-object/from16 v2, p105

    :goto_68
    move-object/from16 v103, v2

    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_69

    const/4 v2, 0x0

    goto :goto_69

    :cond_69
    move-object/from16 v2, p106

    :goto_69
    move-object/from16 v104, v2

    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_6a

    const/4 v2, 0x0

    goto :goto_6a

    :cond_6a
    move-object/from16 v2, p107

    :goto_6a
    move-object/from16 v105, v2

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_6b

    .line 153
    sget-object v2, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/iMe/storage/domain/model/filters/FilterFab;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_6b

    :cond_6b
    move-object/from16 v2, p108

    :goto_6b
    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_6c

    const/4 v3, 0x0

    goto :goto_6c

    :cond_6c
    move-object/from16 v3, p109

    :goto_6c
    move-object/from16 p1, p0

    move-object/from16 p2, v4

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    move-object/from16 p8, v11

    move-object/from16 p9, v12

    move-object/from16 p10, v13

    move-object/from16 p11, v14

    move-object/from16 p12, v15

    move-object/from16 p13, v16

    move-object/from16 p14, v17

    move-object/from16 p15, v18

    move-object/from16 p16, v5

    move-object/from16 p17, v20

    move-object/from16 p18, v22

    move-object/from16 p19, v24

    move-object/from16 p20, v26

    move-object/from16 p21, v28

    move-object/from16 p22, v30

    move-object/from16 p23, v31

    move-object/from16 p24, v32

    move-object/from16 p25, v33

    move-object/from16 p26, v34

    move-object/from16 p27, v35

    move-object/from16 p28, v36

    move-object/from16 p29, v37

    move-object/from16 p30, v38

    move-object/from16 p31, v39

    move-object/from16 p32, v40

    move-object/from16 p33, p110

    move-object/from16 p34, v41

    move-object/from16 p35, v42

    move-object/from16 p36, v43

    move-object/from16 p37, v44

    move-object/from16 p38, v45

    move-object/from16 p39, v46

    move-object/from16 p40, v47

    move-object/from16 p41, v48

    move-object/from16 p42, v49

    move-object/from16 p43, v50

    move-object/from16 p44, v51

    move-object/from16 p45, v52

    move-object/from16 p46, v53

    move-object/from16 p47, v54

    move-object/from16 p48, v0

    move-object/from16 p49, v55

    move-object/from16 p50, v56

    move-object/from16 p51, v57

    move-object/from16 p52, v58

    move-object/from16 p53, v59

    move-object/from16 p54, v60

    move-object/from16 p55, v61

    move-object/from16 p56, v62

    move-object/from16 p57, v63

    move-object/from16 p58, v64

    move-object/from16 p59, v65

    move-object/from16 p60, v66

    move-object/from16 p61, v67

    move-object/from16 p62, v68

    move-object/from16 p63, v69

    move-object/from16 p64, v70

    move-object/from16 p65, p111

    move-object/from16 p66, v71

    move-object/from16 p67, v72

    move-object/from16 p68, v73

    move-object/from16 p69, v74

    move-object/from16 p70, v75

    move-object/from16 p71, v76

    move-object/from16 p72, v77

    move-object/from16 p73, v78

    move-object/from16 p74, v79

    move-object/from16 p75, v80

    move-object/from16 p76, v81

    move-object/from16 p77, v82

    move-object/from16 p78, v83

    move-object/from16 p79, v84

    move-object/from16 p80, v1

    move-object/from16 p81, v19

    move-object/from16 p82, v21

    move-object/from16 p83, v23

    move-object/from16 p84, v25

    move-object/from16 p85, v27

    move-object/from16 p86, v29

    move-object/from16 p87, v85

    move-object/from16 p88, v86

    move-object/from16 p89, v87

    move-object/from16 p90, v88

    move-object/from16 p91, v89

    move-object/from16 p92, v90

    move-object/from16 p93, v91

    move-object/from16 p94, v92

    move-object/from16 p95, v93

    move-object/from16 p96, v94

    move-object/from16 p97, p112

    move-object/from16 p98, v95

    move-object/from16 p99, v96

    move-object/from16 p100, v97

    move-object/from16 p101, v98

    move-object/from16 p102, v99

    move-object/from16 p103, v100

    move-object/from16 p104, v101

    move-object/from16 p105, v102

    move-object/from16 p106, v103

    move-object/from16 p107, v104

    move-object/from16 p108, v105

    move-object/from16 p109, v2

    move-object/from16 p110, v3

    .line 12
    invoke-direct/range {p1 .. p110}, Lcom/iMe/fork/models/backup/Backup;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/fork/models/backup/Backup;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;IIIILjava/lang/Object;)Lcom/iMe/fork/models/backup/Backup;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p110

    move/from16 v2, p111

    move/from16 v3, p112

    move/from16 v4, p113

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    :goto_0
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoBackupInterval:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object/from16 v7, p3

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/iMe/fork/models/backup/Backup;->selectedStickersSize:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v9, p5

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v11, p7

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v13, p9

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p10

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible:Ljava/lang/Boolean;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p11

    :goto_a
    move-object/from16 p11, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->selectedContactsFilter:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    move-object/from16 p12, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    move-object/from16 p15, v15

    if-eqz v17, :cond_f

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, v1, v17

    move-object/from16 p16, v15

    if-eqz v18, :cond_10

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v19, v1, v18

    move-object/from16 p17, v15

    if-eqz v19, :cond_11

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->drawerItems:Ljava/util/Set;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v20, v1, v19

    move-object/from16 p18, v15

    if-eqz v20, :cond_12

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v21, v1, v20

    move-object/from16 p19, v15

    if-eqz v21, :cond_13

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled:Ljava/lang/Boolean;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v22, v1, v21

    move-object/from16 p20, v15

    if-eqz v22, :cond_14

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled:Ljava/lang/Boolean;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v23, v1, v22

    move-object/from16 p21, v15

    if-eqz v23, :cond_15

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v1, v23

    move-object/from16 p22, v15

    if-eqz v23, :cond_16

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v23, 0x800000

    and-int v23, v1, v23

    move-object/from16 p23, v15

    if-eqz v23, :cond_17

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v23, 0x1000000

    and-int v23, v1, v23

    move-object/from16 p24, v15

    if-eqz v23, :cond_18

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel:Ljava/lang/Boolean;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v23, 0x2000000

    and-int v23, v1, v23

    move-object/from16 p25, v15

    if-eqz v23, :cond_19

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v23, 0x4000000

    and-int v23, v1, v23

    move-object/from16 p26, v15

    if-eqz v23, :cond_1a

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v23, 0x8000000

    and-int v23, v1, v23

    move-object/from16 p27, v15

    if-eqz v23, :cond_1b

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->chatAttachAlertButtons:Ljava/util/Map;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v23, 0x10000000

    and-int v23, v1, v23

    move-object/from16 p28, v15

    if-eqz v23, :cond_1c

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v23, 0x20000000

    and-int v23, v1, v23

    move-object/from16 p29, v15

    if-eqz v23, :cond_1d

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, v1, v23

    move-object/from16 p30, v15

    if-eqz v23, :cond_1e

    iget-object v15, v0, Lcom/iMe/fork/models/backup/Backup;->selectedExtendedAvatarPreviewerItems:Ljava/util/Set;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p31

    :goto_1e
    const/high16 v23, -0x80000000

    and-int v1, v1, v23

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->messagePopupItems:Ljava/util/List;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v23, v2, 0x1

    move-object/from16 p32, v1

    if-eqz v23, :cond_20

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v23, v2, 0x2

    move-object/from16 p33, v1

    if-eqz v23, :cond_21

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled:Ljava/lang/Boolean;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v23, v2, 0x4

    move-object/from16 p34, v1

    if-eqz v23, :cond_22

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled:Ljava/lang/Boolean;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v23, v2, 0x8

    move-object/from16 p35, v1

    if-eqz v23, :cond_23

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v23, v2, 0x10

    move-object/from16 p36, v1

    if-eqz v23, :cond_24

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v23, v2, 0x20

    move-object/from16 p37, v1

    if-eqz v23, :cond_25

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    and-int/lit8 v23, v2, 0x40

    move-object/from16 p38, v1

    if-eqz v23, :cond_26

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    goto :goto_26

    :cond_26
    move-object/from16 v1, p39

    :goto_26
    move-object/from16 p39, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    move-object/from16 p40, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->selectedVideoVoiceCamera:Ljava/lang/String;

    goto :goto_28

    :cond_28
    move-object/from16 v1, p41

    :goto_28
    move-object/from16 p41, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled:Ljava/lang/Boolean;

    goto :goto_29

    :cond_29
    move-object/from16 v1, p42

    :goto_29
    move-object/from16 p42, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    goto :goto_2a

    :cond_2a
    move-object/from16 v1, p43

    :goto_2a
    move-object/from16 p43, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

    goto :goto_2b

    :cond_2b
    move-object/from16 v1, p44

    :goto_2b
    move-object/from16 p44, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->selectedDrawStatusTypes:Ljava/util/Set;

    goto :goto_2c

    :cond_2c
    move-object/from16 v1, p45

    :goto_2c
    move-object/from16 p45, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_2d
    move-object/from16 v1, p46

    :goto_2d
    move-object/from16 p46, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled:Ljava/lang/Boolean;

    goto :goto_2e

    :cond_2e
    move-object/from16 v1, p47

    :goto_2e
    and-int v23, v2, v16

    move-object/from16 p47, v1

    if-eqz v23, :cond_2f

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled:Ljava/lang/Boolean;

    goto :goto_2f

    :cond_2f
    move-object/from16 v1, p48

    :goto_2f
    and-int v23, v2, v17

    move-object/from16 p48, v1

    if-eqz v23, :cond_30

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    goto :goto_30

    :cond_30
    move-object/from16 v1, p49

    :goto_30
    and-int v23, v2, v18

    move-object/from16 p49, v1

    if-eqz v23, :cond_31

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

    goto :goto_31

    :cond_31
    move-object/from16 v1, p50

    :goto_31
    and-int v23, v2, v19

    move-object/from16 p50, v1

    if-eqz v23, :cond_32

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled:Ljava/lang/Boolean;

    goto :goto_32

    :cond_32
    move-object/from16 v1, p51

    :goto_32
    and-int v23, v2, v20

    move-object/from16 p51, v1

    if-eqz v23, :cond_33

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

    goto :goto_33

    :cond_33
    move-object/from16 v1, p52

    :goto_33
    and-int v23, v2, v21

    move-object/from16 p52, v1

    if-eqz v23, :cond_34

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled:Ljava/lang/Boolean;

    goto :goto_34

    :cond_34
    move-object/from16 v1, p53

    :goto_34
    and-int v23, v2, v22

    move-object/from16 p53, v1

    if-eqz v23, :cond_35

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->selectedSentMessageFont:Ljava/lang/String;

    goto :goto_35

    :cond_35
    move-object/from16 v1, p54

    :goto_35
    const/high16 v23, 0x400000

    and-int v23, v2, v23

    move-object/from16 p54, v1

    if-eqz v23, :cond_36

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled:Ljava/lang/Boolean;

    goto :goto_36

    :cond_36
    move-object/from16 v1, p55

    :goto_36
    const/high16 v23, 0x800000

    and-int v23, v2, v23

    move-object/from16 p55, v1

    if-eqz v23, :cond_37

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled:Ljava/lang/Boolean;

    goto :goto_37

    :cond_37
    move-object/from16 v1, p56

    :goto_37
    const/high16 v23, 0x1000000

    and-int v23, v2, v23

    move-object/from16 p56, v1

    if-eqz v23, :cond_38

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    goto :goto_38

    :cond_38
    move-object/from16 v1, p57

    :goto_38
    const/high16 v23, 0x2000000

    and-int v23, v2, v23

    move-object/from16 p57, v1

    if-eqz v23, :cond_39

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled:Ljava/lang/Boolean;

    goto :goto_39

    :cond_39
    move-object/from16 v1, p58

    :goto_39
    const/high16 v23, 0x4000000

    and-int v23, v2, v23

    move-object/from16 p58, v1

    if-eqz v23, :cond_3a

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    goto :goto_3a

    :cond_3a
    move-object/from16 v1, p59

    :goto_3a
    const/high16 v23, 0x8000000

    and-int v23, v2, v23

    move-object/from16 p59, v1

    if-eqz v23, :cond_3b

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

    goto :goto_3b

    :cond_3b
    move-object/from16 v1, p60

    :goto_3b
    const/high16 v23, 0x10000000

    and-int v23, v2, v23

    move-object/from16 p60, v1

    if-eqz v23, :cond_3c

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault:Ljava/lang/Boolean;

    goto :goto_3c

    :cond_3c
    move-object/from16 v1, p61

    :goto_3c
    const/high16 v23, 0x20000000

    and-int v23, v2, v23

    move-object/from16 p61, v1

    if-eqz v23, :cond_3d

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    goto :goto_3d

    :cond_3d
    move-object/from16 v1, p62

    :goto_3d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, v2, v23

    move-object/from16 p62, v1

    if-eqz v23, :cond_3e

    iget-object v1, v0, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled:Ljava/lang/Boolean;

    goto :goto_3e

    :cond_3e
    move-object/from16 v1, p63

    :goto_3e
    const/high16 v23, -0x80000000

    and-int v2, v2, v23

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

    goto :goto_3f

    :cond_3f
    move-object/from16 v2, p64

    :goto_3f
    and-int/lit8 v23, v3, 0x1

    move-object/from16 p64, v2

    if-eqz v23, :cond_40

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->multiPanelSettings:Ljava/util/Map;

    goto :goto_40

    :cond_40
    move-object/from16 v2, p65

    :goto_40
    and-int/lit8 v23, v3, 0x2

    move-object/from16 p65, v2

    if-eqz v23, :cond_41

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filterTabsAtBottom:Ljava/lang/Boolean;

    goto :goto_41

    :cond_41
    move-object/from16 v2, p66

    :goto_41
    and-int/lit8 v23, v3, 0x4

    move-object/from16 p66, v2

    if-eqz v23, :cond_42

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filterTabsNotificationMode:Ljava/lang/String;

    goto :goto_42

    :cond_42
    move-object/from16 v2, p67

    :goto_42
    and-int/lit8 v23, v3, 0x8

    move-object/from16 p67, v2

    if-eqz v23, :cond_43

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filterTabsWidthMode:Ljava/lang/String;

    goto :goto_43

    :cond_43
    move-object/from16 v2, p68

    :goto_43
    and-int/lit8 v23, v3, 0x10

    move-object/from16 p68, v2

    if-eqz v23, :cond_44

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->rememberLastFilterTab:Ljava/lang/Boolean;

    goto :goto_44

    :cond_44
    move-object/from16 v2, p69

    :goto_44
    and-int/lit8 v23, v3, 0x20

    move-object/from16 p69, v2

    if-eqz v23, :cond_45

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->hideFolders:Ljava/lang/Boolean;

    goto :goto_45

    :cond_45
    move-object/from16 v2, p70

    :goto_45
    and-int/lit8 v23, v3, 0x40

    move-object/from16 p70, v2

    if-eqz v23, :cond_46

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->foldersFirst:Ljava/lang/Boolean;

    goto :goto_46

    :cond_46
    move-object/from16 v2, p71

    :goto_46
    move-object/from16 p71, v2

    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_47

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->filters:Ljava/util/List;

    goto :goto_47

    :cond_47
    move-object/from16 v2, p72

    :goto_47
    move-object/from16 p72, v2

    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_48

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault:Ljava/lang/Boolean;

    goto :goto_48

    :cond_48
    move-object/from16 v2, p73

    :goto_48
    move-object/from16 p73, v2

    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_49

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled:Ljava/lang/Boolean;

    goto :goto_49

    :cond_49
    move-object/from16 v2, p74

    :goto_49
    move-object/from16 p74, v2

    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

    goto :goto_4a

    :cond_4a
    move-object/from16 v2, p75

    :goto_4a
    move-object/from16 p75, v2

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_4b

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFabs:Ljava/util/Set;

    goto :goto_4b

    :cond_4b
    move-object/from16 v2, p76

    :goto_4b
    move-object/from16 p76, v2

    and-int/lit16 v2, v3, 0x1000

    if-eqz v2, :cond_4c

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled:Ljava/lang/Boolean;

    goto :goto_4c

    :cond_4c
    move-object/from16 v2, p77

    :goto_4c
    move-object/from16 p77, v2

    and-int/lit16 v2, v3, 0x2000

    if-eqz v2, :cond_4d

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->sortingSettings:Ljava/util/List;

    goto :goto_4d

    :cond_4d
    move-object/from16 v2, p78

    :goto_4d
    move-object/from16 p78, v2

    and-int/lit16 v2, v3, 0x4000

    if-eqz v2, :cond_4e

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

    goto :goto_4e

    :cond_4e
    move-object/from16 v2, p79

    :goto_4e
    and-int v16, v3, v16

    move-object/from16 p79, v2

    if-eqz v16, :cond_4f

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingSettings:Ljava/util/List;

    goto :goto_4f

    :cond_4f
    move-object/from16 v2, p80

    :goto_4f
    and-int v16, v3, v17

    move-object/from16 p80, v2

    if-eqz v16, :cond_50

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->sortingPinnedChats:Ljava/util/Map;

    goto :goto_50

    :cond_50
    move-object/from16 v2, p81

    :goto_50
    and-int v16, v3, v18

    move-object/from16 p81, v2

    if-eqz v16, :cond_51

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingPinnedChats:Ljava/util/Map;

    goto :goto_51

    :cond_51
    move-object/from16 v2, p82

    :goto_51
    and-int v16, v3, v19

    move-object/from16 p82, v2

    if-eqz v16, :cond_52

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled:Ljava/lang/Boolean;

    goto :goto_52

    :cond_52
    move-object/from16 v2, p83

    :goto_52
    and-int v16, v3, v20

    move-object/from16 p83, v2

    if-eqz v16, :cond_53

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown:Ljava/lang/Boolean;

    goto :goto_53

    :cond_53
    move-object/from16 v2, p84

    :goto_53
    and-int v16, v3, v21

    move-object/from16 p84, v2

    if-eqz v16, :cond_54

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

    goto :goto_54

    :cond_54
    move-object/from16 v2, p85

    :goto_54
    and-int v16, v3, v22

    move-object/from16 p85, v2

    if-eqz v16, :cond_55

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

    goto :goto_55

    :cond_55
    move-object/from16 v2, p86

    :goto_55
    const/high16 v16, 0x400000

    and-int v16, v3, v16

    move-object/from16 p86, v2

    if-eqz v16, :cond_56

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->albums:Ljava/util/List;

    goto :goto_56

    :cond_56
    move-object/from16 v2, p87

    :goto_56
    const/high16 v16, 0x800000

    and-int v16, v3, v16

    move-object/from16 p87, v2

    if-eqz v16, :cond_57

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->bookmarks:Ljava/util/Map;

    goto :goto_57

    :cond_57
    move-object/from16 v2, p88

    :goto_57
    const/high16 v16, 0x1000000

    and-int v16, v3, v16

    move-object/from16 p88, v2

    if-eqz v16, :cond_58

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->dialogSettings:Ljava/util/List;

    goto :goto_58

    :cond_58
    move-object/from16 v2, p89

    :goto_58
    const/high16 v16, 0x2000000

    and-int v16, v3, v16

    move-object/from16 p89, v2

    if-eqz v16, :cond_59

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned:Ljava/lang/Boolean;

    goto :goto_59

    :cond_59
    move-object/from16 v2, p90

    :goto_59
    const/high16 v16, 0x4000000

    and-int v16, v3, v16

    move-object/from16 p90, v2

    if-eqz v16, :cond_5a

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized:Ljava/lang/Boolean;

    goto :goto_5a

    :cond_5a
    move-object/from16 v2, p91

    :goto_5a
    const/high16 v16, 0x8000000

    and-int v16, v3, v16

    move-object/from16 p91, v2

    if-eqz v16, :cond_5b

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

    goto :goto_5b

    :cond_5b
    move-object/from16 v2, p92

    :goto_5b
    const/high16 v16, 0x10000000

    and-int v16, v3, v16

    move-object/from16 p92, v2

    if-eqz v16, :cond_5c

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

    goto :goto_5c

    :cond_5c
    move-object/from16 v2, p93

    :goto_5c
    const/high16 v16, 0x20000000

    and-int v16, v3, v16

    move-object/from16 p93, v2

    if-eqz v16, :cond_5d

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown:Ljava/lang/Boolean;

    goto :goto_5d

    :cond_5d
    move-object/from16 v2, p94

    :goto_5d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v3, v16

    move-object/from16 p94, v2

    if-eqz v16, :cond_5e

    iget-object v2, v0, Lcom/iMe/fork/models/backup/Backup;->selectedMusicTab:Ljava/lang/String;

    goto :goto_5e

    :cond_5e
    move-object/from16 v2, p95

    :goto_5e
    const/high16 v16, -0x80000000

    and-int v3, v3, v16

    if-eqz v3, :cond_5f

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->musicPlaylists:Ljava/util/Map;

    goto :goto_5f

    :cond_5f
    move-object/from16 v3, p96

    :goto_5f
    and-int/lit8 v16, v4, 0x1

    move-object/from16 p96, v3

    if-eqz v16, :cond_60

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->templatesMode:Ljava/lang/String;

    goto :goto_60

    :cond_60
    move-object/from16 v3, p97

    :goto_60
    and-int/lit8 v16, v4, 0x2

    move-object/from16 p97, v3

    if-eqz v16, :cond_61

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->selectedTemplatesSortingType:Ljava/lang/String;

    goto :goto_61

    :cond_61
    move-object/from16 v3, p98

    :goto_61
    and-int/lit8 v16, v4, 0x4

    move-object/from16 p98, v3

    if-eqz v16, :cond_62

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->templatesChannelId:Ljava/lang/Long;

    goto :goto_62

    :cond_62
    move-object/from16 v3, p99

    :goto_62
    and-int/lit8 v16, v4, 0x8

    move-object/from16 p99, v3

    if-eqz v16, :cond_63

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->templates:Ljava/util/List;

    goto :goto_63

    :cond_63
    move-object/from16 v3, p100

    :goto_63
    and-int/lit8 v16, v4, 0x10

    move-object/from16 p100, v3

    if-eqz v16, :cond_64

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->topicsEnabled:Ljava/lang/Boolean;

    goto :goto_64

    :cond_64
    move-object/from16 v3, p101

    :goto_64
    and-int/lit8 v16, v4, 0x20

    move-object/from16 p101, v3

    if-eqz v16, :cond_65

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->topicsBarAtBottom:Ljava/lang/Boolean;

    goto :goto_65

    :cond_65
    move-object/from16 v3, p102

    :goto_65
    and-int/lit8 v16, v4, 0x40

    move-object/from16 p102, v3

    if-eqz v16, :cond_66

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

    goto :goto_66

    :cond_66
    move-object/from16 v3, p103

    :goto_66
    move-object/from16 p103, v3

    and-int/lit16 v3, v4, 0x80

    if-eqz v3, :cond_67

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoUpdateCatalogInterval:Ljava/lang/String;

    goto :goto_67

    :cond_67
    move-object/from16 v3, p104

    :goto_67
    move-object/from16 p104, v3

    and-int/lit16 v3, v4, 0x100

    if-eqz v3, :cond_68

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->noTopicFirst:Ljava/lang/Boolean;

    goto :goto_68

    :cond_68
    move-object/from16 v3, p105

    :goto_68
    move-object/from16 p105, v3

    and-int/lit16 v3, v4, 0x200

    if-eqz v3, :cond_69

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->topics:Ljava/util/List;

    goto :goto_69

    :cond_69
    move-object/from16 v3, p106

    :goto_69
    move-object/from16 p106, v3

    and-int/lit16 v3, v4, 0x400

    if-eqz v3, :cond_6a

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->version:Ljava/lang/Integer;

    goto :goto_6a

    :cond_6a
    move-object/from16 v3, p107

    :goto_6a
    move-object/from16 p107, v3

    and-int/lit16 v3, v4, 0x800

    if-eqz v3, :cond_6b

    iget-object v3, v0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFab:Ljava/lang/String;

    goto :goto_6b

    :cond_6b
    move-object/from16 v3, p108

    :goto_6b
    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_6c

    iget-object v4, v0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabMultiFabs:Ljava/util/List;

    goto :goto_6c

    :cond_6c
    move-object/from16 v4, p109

    :goto_6c
    move-object/from16 p1, v5

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    move-object/from16 p9, v13

    move-object/from16 p10, v14

    move-object/from16 p31, v15

    move-object/from16 p63, v1

    move-object/from16 p95, v2

    move-object/from16 p108, v3

    move-object/from16 p109, v4

    invoke-virtual/range {p0 .. p109}, Lcom/iMe/fork/models/backup/Backup;->copy(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/iMe/fork/models/backup/Backup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)Lcom/iMe/fork/models/backup/Backup;
    .locals 111
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/iMe/fork/models/DrawerHeaderSettings;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/iMe/fork/enums/DrawerHolidayIconType;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;",
            ">;>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/TopicBackup;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)",
            "Lcom/iMe/fork/models/backup/Backup;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    move-object/from16 v40, p40

    move-object/from16 v41, p41

    move-object/from16 v42, p42

    move-object/from16 v43, p43

    move-object/from16 v44, p44

    move-object/from16 v45, p45

    move-object/from16 v46, p46

    move-object/from16 v47, p47

    move-object/from16 v48, p48

    move-object/from16 v49, p49

    move-object/from16 v50, p50

    move-object/from16 v51, p51

    move-object/from16 v52, p52

    move-object/from16 v53, p53

    move-object/from16 v54, p54

    move-object/from16 v55, p55

    move-object/from16 v56, p56

    move-object/from16 v57, p57

    move-object/from16 v58, p58

    move-object/from16 v59, p59

    move-object/from16 v60, p60

    move-object/from16 v61, p61

    move-object/from16 v62, p62

    move-object/from16 v63, p63

    move-object/from16 v64, p64

    move-object/from16 v65, p65

    move-object/from16 v66, p66

    move-object/from16 v67, p67

    move-object/from16 v68, p68

    move-object/from16 v69, p69

    move-object/from16 v70, p70

    move-object/from16 v71, p71

    move-object/from16 v72, p72

    move-object/from16 v73, p73

    move-object/from16 v74, p74

    move-object/from16 v75, p75

    move-object/from16 v76, p76

    move-object/from16 v77, p77

    move-object/from16 v78, p78

    move-object/from16 v79, p79

    move-object/from16 v80, p80

    move-object/from16 v81, p81

    move-object/from16 v82, p82

    move-object/from16 v83, p83

    move-object/from16 v84, p84

    move-object/from16 v85, p85

    move-object/from16 v86, p86

    move-object/from16 v87, p87

    move-object/from16 v88, p88

    move-object/from16 v89, p89

    move-object/from16 v90, p90

    move-object/from16 v91, p91

    move-object/from16 v92, p92

    move-object/from16 v93, p93

    move-object/from16 v94, p94

    move-object/from16 v95, p95

    move-object/from16 v96, p96

    move-object/from16 v97, p97

    move-object/from16 v98, p98

    move-object/from16 v99, p99

    move-object/from16 v100, p100

    move-object/from16 v101, p101

    move-object/from16 v102, p102

    move-object/from16 v103, p103

    move-object/from16 v104, p104

    move-object/from16 v105, p105

    move-object/from16 v106, p106

    move-object/from16 v107, p107

    move-object/from16 v108, p108

    move-object/from16 v109, p109

    const-string v0, "allChatsTabFab"

    move-object/from16 v1, p108

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v110, Lcom/iMe/fork/models/backup/Backup;

    move-object/from16 v0, v110

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v109}, Lcom/iMe/fork/models/backup/Backup;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/models/DrawerHeaderSettings;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/iMe/fork/enums/DrawerHolidayIconType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    return-object v110
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/fork/models/backup/Backup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/fork/models/backup/Backup;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoBackupInterval:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedAutoBackupInterval:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedStickersSize:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedStickersSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedContactsFilter:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedContactsFilter:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->drawerItems:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->drawerItems:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->chatAttachAlertButtons:Ljava/util/Map;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->chatAttachAlertButtons:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedExtendedAvatarPreviewerItems:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedExtendedAvatarPreviewerItems:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->messagePopupItems:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->messagePopupItems:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedVideoVoiceCamera:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedVideoVoiceCamera:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDrawStatusTypes:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedDrawStatusTypes:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedSentMessageFont:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedSentMessageFont:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v2

    :cond_3a
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    :cond_3d
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    if-eq v1, v3, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return v2

    :cond_40
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->multiPanelSettings:Ljava/util/Map;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->multiPanelSettings:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsAtBottom:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->filterTabsAtBottom:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsNotificationMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->filterTabsNotificationMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsWidthMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->filterTabsWidthMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    :cond_45
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->rememberLastFilterTab:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->rememberLastFilterTab:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->hideFolders:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->hideFolders:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->foldersFirst:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->foldersFirst:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    :cond_48
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filters:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->filters:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    return v2

    :cond_4b
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    return v2

    :cond_4c
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFabs:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFabs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->sortingSettings:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->sortingSettings:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v2

    :cond_4f
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v2

    :cond_50
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingSettings:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->archiveSortingSettings:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->sortingPinnedChats:Ljava/util/Map;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->sortingPinnedChats:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    return v2

    :cond_52
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingPinnedChats:Ljava/util/Map;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->archiveSortingPinnedChats:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    :cond_53
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    return v2

    :cond_54
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    return v2

    :cond_56
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    return v2

    :cond_57
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->albums:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->albums:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    return v2

    :cond_58
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->bookmarks:Ljava/util/Map;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->bookmarks:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->dialogSettings:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->dialogSettings:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v2

    :cond_5a
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    return v2

    :cond_5b
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    return v2

    :cond_5d
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    return v2

    :cond_5e
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    return v2

    :cond_5f
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedMusicTab:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedMusicTab:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v2

    :cond_60
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->musicPlaylists:Ljava/util/Map;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->musicPlaylists:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    return v2

    :cond_61
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->templatesMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->templatesMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    return v2

    :cond_62
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedTemplatesSortingType:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedTemplatesSortingType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    return v2

    :cond_63
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->templatesChannelId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->templatesChannelId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->templates:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->templates:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    return v2

    :cond_65
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->topicsEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->topicsEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v2

    :cond_66
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->topicsBarAtBottom:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->topicsBarAtBottom:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v2

    :cond_67
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    return v2

    :cond_68
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoUpdateCatalogInterval:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->selectedAutoUpdateCatalogInterval:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v2

    :cond_69
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->noTopicFirst:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->noTopicFirst:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    return v2

    :cond_6a
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->topics:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->topics:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    return v2

    :cond_6b
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->version:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    return v2

    :cond_6c
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFab:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFab:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    return v2

    :cond_6d
    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabMultiFabs:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/fork/models/backup/Backup;->allChatsTabMultiFabs:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    return v2

    :cond_6e
    return v0
.end method

.method public final getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->albums:Ljava/util/List;

    return-object v0
.end method

.method public final getAllChatsTabFab()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFab:Ljava/lang/String;

    return-object v0
.end method

.method public final getAllChatsTabFabs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFabs:Ljava/util/Set;

    return-object v0
.end method

.method public final getAllChatsTabMultiFabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabMultiFabs:Ljava/util/List;

    return-object v0
.end method

.method public final getArchiveSortingPinnedChats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingPinnedChats:Ljava/util/Map;

    return-object v0
.end method

.method public final getArchiveSortingSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingSettings:Ljava/util/List;

    return-object v0
.end method

.method public final getBookmarks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->bookmarks:Ljava/util/Map;

    return-object v0
.end method

.method public final getChatAttachAlertButtons()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->chatAttachAlertButtons:Ljava/util/Map;

    return-object v0
.end method

.method public final getDialogSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->dialogSettings:Ljava/util/List;

    return-object v0
.end method

.method public final getDrawerHeaderSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    return-object v0
.end method

.method public final getDrawerHolidayIconType()Lcom/iMe/fork/enums/DrawerHolidayIconType;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    return-object v0
.end method

.method public final getDrawerItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->drawerItems:Ljava/util/Set;

    return-object v0
.end method

.method public final getFilterTabsAtBottom()Ljava/lang/Boolean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsAtBottom:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFilterTabsNotificationMode()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsNotificationMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilterTabsWidthMode()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsWidthMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->filters:Ljava/util/List;

    return-object v0
.end method

.method public final getFoldersFirst()Ljava/lang/Boolean;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->foldersFirst:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHideFolders()Ljava/lang/Boolean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->hideFolders:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIconInsteadAllChatsTabTitle()Ljava/lang/Boolean;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getMessagePopupItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->messagePopupItems:Ljava/util/List;

    return-object v0
.end method

.method public final getMultiPanelSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;",
            ">;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->multiPanelSettings:Ljava/util/Map;

    return-object v0
.end method

.method public final getMusicPlaylists()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->musicPlaylists:Ljava/util/Map;

    return-object v0
.end method

.method public final getNoTopicFirst()Ljava/lang/Boolean;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->noTopicFirst:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRememberLastFilterTab()Ljava/lang/Boolean;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->rememberLastFilterTab:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSelectedAutoBackupInterval()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoBackupInterval:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedAutoUpdateCatalogInterval()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoUpdateCatalogInterval:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedChatProfileTelegramIdMode()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedContactsFilter()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedContactsFilter:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedDialogTypesForMessagePopupReactions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedDrawStatusTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDrawStatusTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedExtendedAvatarPreviewerItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedExtendedAvatarPreviewerItems:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedMusicTab()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedMusicTab:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedPhotoViewerMenuItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedRecentChatsDialogTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedSentMessageFont()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedSentMessageFont:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedStickersSize()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedStickersSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedTemplatesSortingType()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedTemplatesSortingType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedVideoVoiceCamera()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->selectedVideoVoiceCamera:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortingPinnedChats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->sortingPinnedChats:Ljava/util/Map;

    return-object v0
.end method

.method public final getSortingSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->sortingSettings:Ljava/util/List;

    return-object v0
.end method

.method public final getSwipeToGoToNextUnreadDialogTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->templates:Ljava/util/List;

    return-object v0
.end method

.method public final getTemplatesChannelId()Ljava/lang/Long;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->templatesChannelId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTemplatesMode()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->templatesMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/TopicBackup;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->topics:Ljava/util/List;

    return-object v0
.end method

.method public final getTopicsBarAtBottom()Ljava/lang/Boolean;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->topicsBarAtBottom:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTopicsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->topicsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/Integer;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoBackupInterval:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedStickersSize:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedContactsFilter:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden:Ljava/lang/Boolean;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->drawerItems:Ljava/util/Set;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_15

    move v2, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_16

    move v2, v1

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;

    if-nez v2, :cond_17

    move v2, v1

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel:Ljava/lang/Boolean;

    if-nez v2, :cond_18

    move v2, v1

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1a

    move v2, v1

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->chatAttachAlertButtons:Ljava/util/Map;

    if-nez v2, :cond_1b

    move v2, v1

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_1c

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1d

    move v2, v1

    goto :goto_1d

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedExtendedAvatarPreviewerItems:Ljava/util/Set;

    if-nez v2, :cond_1e

    move v2, v1

    goto :goto_1e

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->messagePopupItems:Ljava/util/List;

    if-nez v2, :cond_1f

    move v2, v1

    goto :goto_1f

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_20

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_21

    move v2, v1

    goto :goto_21

    :cond_21
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_21
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_22

    move v2, v1

    goto :goto_22

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_23

    move v2, v1

    goto :goto_23

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_24

    move v2, v1

    goto :goto_24

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_25

    move v2, v1

    goto :goto_25

    :cond_25
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_26

    move v2, v1

    goto :goto_26

    :cond_26
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_27

    move v2, v1

    goto :goto_27

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_27
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedVideoVoiceCamera:Ljava/lang/String;

    if-nez v2, :cond_28

    move v2, v1

    goto :goto_28

    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_29

    move v2, v1

    goto :goto_29

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_29
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    if-nez v2, :cond_2a

    move v2, v1

    goto :goto_2a

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_2b

    move v2, v1

    goto :goto_2b

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDrawStatusTypes:Ljava/util/Set;

    if-nez v2, :cond_2c

    move v2, v1

    goto :goto_2c

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_2d

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_2e

    move v2, v1

    goto :goto_2e

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_2f

    move v2, v1

    goto :goto_2f

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    if-nez v2, :cond_30

    move v2, v1

    goto :goto_30

    :cond_30
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_30
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_31

    move v2, v1

    goto :goto_31

    :cond_31
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_32

    move v2, v1

    goto :goto_32

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_32
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_33

    move v2, v1

    goto :goto_33

    :cond_33
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_34

    move v2, v1

    goto :goto_34

    :cond_34
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_34
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedSentMessageFont:Ljava/lang/String;

    if-nez v2, :cond_35

    move v2, v1

    goto :goto_35

    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_35
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_36

    move v2, v1

    goto :goto_36

    :cond_36
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_37

    move v2, v1

    goto :goto_37

    :cond_37
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_37
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    if-nez v2, :cond_38

    move v2, v1

    goto :goto_38

    :cond_38
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_38
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_39

    move v2, v1

    goto :goto_39

    :cond_39
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_39
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    if-nez v2, :cond_3a

    move v2, v1

    goto :goto_3a

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_3b

    move v2, v1

    goto :goto_3b

    :cond_3b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault:Ljava/lang/Boolean;

    if-nez v2, :cond_3c

    move v2, v1

    goto :goto_3c

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    if-nez v2, :cond_3d

    move v2, v1

    goto :goto_3d

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_3d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_3e

    move v2, v1

    goto :goto_3e

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_3f

    move v2, v1

    goto :goto_3f

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->multiPanelSettings:Ljava/util/Map;

    if-nez v2, :cond_40

    move v2, v1

    goto :goto_40

    :cond_40
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsAtBottom:Ljava/lang/Boolean;

    if-nez v2, :cond_41

    move v2, v1

    goto :goto_41

    :cond_41
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_41
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsNotificationMode:Ljava/lang/String;

    if-nez v2, :cond_42

    move v2, v1

    goto :goto_42

    :cond_42
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_42
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsWidthMode:Ljava/lang/String;

    if-nez v2, :cond_43

    move v2, v1

    goto :goto_43

    :cond_43
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_43
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->rememberLastFilterTab:Ljava/lang/Boolean;

    if-nez v2, :cond_44

    move v2, v1

    goto :goto_44

    :cond_44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_44
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->hideFolders:Ljava/lang/Boolean;

    if-nez v2, :cond_45

    move v2, v1

    goto :goto_45

    :cond_45
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_45
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->foldersFirst:Ljava/lang/Boolean;

    if-nez v2, :cond_46

    move v2, v1

    goto :goto_46

    :cond_46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_46
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->filters:Ljava/util/List;

    if-nez v2, :cond_47

    move v2, v1

    goto :goto_47

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault:Ljava/lang/Boolean;

    if-nez v2, :cond_48

    move v2, v1

    goto :goto_48

    :cond_48
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_48
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_49

    move v2, v1

    goto :goto_49

    :cond_49
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_49
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

    if-nez v2, :cond_4a

    move v2, v1

    goto :goto_4a

    :cond_4a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFabs:Ljava/util/Set;

    if-nez v2, :cond_4b

    move v2, v1

    goto :goto_4b

    :cond_4b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_4c

    move v2, v1

    goto :goto_4c

    :cond_4c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->sortingSettings:Ljava/util/List;

    if-nez v2, :cond_4d

    move v2, v1

    goto :goto_4d

    :cond_4d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_4e

    move v2, v1

    goto :goto_4e

    :cond_4e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingSettings:Ljava/util/List;

    if-nez v2, :cond_4f

    move v2, v1

    goto :goto_4f

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->sortingPinnedChats:Ljava/util/Map;

    if-nez v2, :cond_50

    move v2, v1

    goto :goto_50

    :cond_50
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_50
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingPinnedChats:Ljava/util/Map;

    if-nez v2, :cond_51

    move v2, v1

    goto :goto_51

    :cond_51
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_51
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_52

    move v2, v1

    goto :goto_52

    :cond_52
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_52
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown:Ljava/lang/Boolean;

    if-nez v2, :cond_53

    move v2, v1

    goto :goto_53

    :cond_53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_54

    move v2, v1

    goto :goto_54

    :cond_54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_54
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_55

    move v2, v1

    goto :goto_55

    :cond_55
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_55
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->albums:Ljava/util/List;

    if-nez v2, :cond_56

    move v2, v1

    goto :goto_56

    :cond_56
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_56
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->bookmarks:Ljava/util/Map;

    if-nez v2, :cond_57

    move v2, v1

    goto :goto_57

    :cond_57
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_57
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->dialogSettings:Ljava/util/List;

    if-nez v2, :cond_58

    move v2, v1

    goto :goto_58

    :cond_58
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned:Ljava/lang/Boolean;

    if-nez v2, :cond_59

    move v2, v1

    goto :goto_59

    :cond_59
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_59
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized:Ljava/lang/Boolean;

    if-nez v2, :cond_5a

    move v2, v1

    goto :goto_5a

    :cond_5a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

    if-nez v2, :cond_5b

    move v2, v1

    goto :goto_5b

    :cond_5b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_5c

    move v2, v1

    goto :goto_5c

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown:Ljava/lang/Boolean;

    if-nez v2, :cond_5d

    move v2, v1

    goto :goto_5d

    :cond_5d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedMusicTab:Ljava/lang/String;

    if-nez v2, :cond_5e

    move v2, v1

    goto :goto_5e

    :cond_5e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->musicPlaylists:Ljava/util/Map;

    if-nez v2, :cond_5f

    move v2, v1

    goto :goto_5f

    :cond_5f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->templatesMode:Ljava/lang/String;

    if-nez v2, :cond_60

    move v2, v1

    goto :goto_60

    :cond_60
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_60
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedTemplatesSortingType:Ljava/lang/String;

    if-nez v2, :cond_61

    move v2, v1

    goto :goto_61

    :cond_61
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_61
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->templatesChannelId:Ljava/lang/Long;

    if-nez v2, :cond_62

    move v2, v1

    goto :goto_62

    :cond_62
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_62
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->templates:Ljava/util/List;

    if-nez v2, :cond_63

    move v2, v1

    goto :goto_63

    :cond_63
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_63
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->topicsEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_64

    move v2, v1

    goto :goto_64

    :cond_64
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_64
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->topicsBarAtBottom:Ljava/lang/Boolean;

    if-nez v2, :cond_65

    move v2, v1

    goto :goto_65

    :cond_65
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_66

    move v2, v1

    goto :goto_66

    :cond_66
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_66
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoUpdateCatalogInterval:Ljava/lang/String;

    if-nez v2, :cond_67

    move v2, v1

    goto :goto_67

    :cond_67
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->noTopicFirst:Ljava/lang/Boolean;

    if-nez v2, :cond_68

    move v2, v1

    goto :goto_68

    :cond_68
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_68
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->topics:Ljava/util/List;

    if-nez v2, :cond_69

    move v2, v1

    goto :goto_69

    :cond_69
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_69
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->version:Ljava/lang/Integer;

    if-nez v2, :cond_6a

    move v2, v1

    goto :goto_6a

    :cond_6a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFab:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabMultiFabs:Ljava/util/List;

    if-nez v2, :cond_6b

    goto :goto_6b

    :cond_6b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6b
    add-int/2addr v0, v1

    return v0
.end method

.method public final isActionBarAccountSwitchEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isAlbumsIntroShown()Ljava/lang/Boolean;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isAllChatsTabEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isArchiveSortingChatsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isAutoBackupEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isAutoUpdateCatalogEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isBotHelpTranslateEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isCLoudAlbumsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isCallsConfirmationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isChannelWidePostsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isChatSortingEnabledByDefault()Ljava/lang/Boolean;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isChatThemesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isCombineMessagesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isCustomSharingModeEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isDeleteCloudConfirmationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isDialogsCompactModeEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isExtendedAvatarPreviewerByTapEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isExtendedAvatarPreviewerEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isFilesSendingPreviewAndCaptionEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isHideChatKeyboardOnScrollEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isHideMultiPanelOnScrollEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMainActionBarMenuEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMessagePopupAggregatorEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMessageQuickTranslateEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMultiForwardingOptionsHintShown()Ljava/lang/Boolean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMultiPanelEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMultiReplyEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMusicIntroShown()Ljava/lang/Boolean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isOpenAlbumsInsteadCloudEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPinnedPlayerMinimized()Ljava/lang/Boolean;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPinnedPlayerNightThemeEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPinnedPlayerThemeOverridden()Ljava/lang/Boolean;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPlayerPinned()Ljava/lang/Boolean;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPremiumAnimateAvatars()Ljava/lang/Boolean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPremiumAnimateStickers()Ljava/lang/Boolean;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPremiumShowBadge()Ljava/lang/Boolean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isPremiumShowStatus()Ljava/lang/Boolean;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isProfileInfoHidden()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isProxyButtonForceVisible()Ljava/lang/Boolean;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isQuickReactionEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isReactionsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isReactionsInSendPopupEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isReadAllChatsConfirmationShown()Ljava/lang/Boolean;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isRecentChatsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isRememberLastDialogEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isRevokeByDefault()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSaveArchiveRecentChatsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSendingGifConfirmationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSendingStickerConfirmationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isShowChannelBottomPanel()Ljava/lang/Boolean;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSilentSendingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSortCloudAlbumsByNameEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSortingChatsEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSpeakWithoutHoldEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSuggestPremiumReactionsEmoji()Ljava/lang/Boolean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isTranslateInSendPopupEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isVibrationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isVideoSpeakWithoutHoldEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup(isAutoBackupEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoBackupEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedAutoBackupInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoBackupInterval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFilesSendingPreviewAndCaptionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isFilesSendingPreviewAndCaptionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVibrationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isVibrationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedStickersSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedStickersSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isQuickReactionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPremiumAnimateStickers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPremiumShowBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPremiumShowStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPremiumAnimateAvatars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isProxyButtonForceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isProxyButtonForceVisible:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedContactsFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedContactsFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isReadAllChatsConfirmationShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isReadAllChatsConfirmationShown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isProfileInfoHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isProfileInfoHidden:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiForwardingOptionsHintShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiForwardingOptionsHintShown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSuggestPremiumReactionsEmoji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSuggestPremiumReactionsEmoji:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawerHeaderSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHeaderSettings:Lcom/iMe/fork/models/DrawerHeaderSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawerItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->drawerItems:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isActionBarAccountSwitchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isActionBarAccountSwitchEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMainActionBarMenuEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMainActionBarMenuEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDialogsCompactModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isDialogsCompactModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSwipeToGoToNextUnreadDialogEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", swipeToGoToNextUnreadDialogTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->swipeToGoToNextUnreadDialogTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShowChannelBottomPanel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHideChatKeyboardOnScrollEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isHideChatKeyboardOnScrollEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChatThemesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isChatThemesEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chatAttachAlertButtons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->chatAttachAlertButtons:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isExtendedAvatarPreviewerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isExtendedAvatarPreviewerByTapEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isExtendedAvatarPreviewerByTapEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedExtendedAvatarPreviewerItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedExtendedAvatarPreviewerItems:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messagePopupItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->messagePopupItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMessagePopupAggregatorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChannelWidePostsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCallsConfirmationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCallsConfirmationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDeleteCloudConfirmationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isDeleteCloudConfirmationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSendingGifConfirmationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingGifConfirmationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSendingStickerConfirmationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSendingStickerConfirmationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSpeakWithoutHoldEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoSpeakWithoutHoldEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isVideoSpeakWithoutHoldEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedVideoVoiceCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedVideoVoiceCamera:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRecentChatsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedRecentChatsDialogTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSaveArchiveRecentChatsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedDrawStatusTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDrawStatusTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenForwardingOptionsAutomaticallyEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenForwardingOptionsAutomaticallyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCustomSharingModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCustomSharingModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiReplyEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiReplyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedChatProfileTelegramIdMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMessageQuickTranslateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMessageQuickTranslateEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBotHelpTranslateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isBotHelpTranslateEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTranslateInSendPopupEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isTranslateInSendPopupEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSilentSendingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedSentMessageFont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedSentMessageFont:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRememberLastDialogEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCombineMessagesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCombineMessagesEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedPhotoViewerMenuItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isReactionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedDialogTypesForMessagePopupReactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedDialogTypesForMessagePopupReactions:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isReactionsInSendPopupEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isReactionsInSendPopupEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRevokeByDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawerHolidayIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->drawerHolidayIconType:Lcom/iMe/fork/enums/DrawerHolidayIconType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiPanelEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHideMultiPanelOnScrollEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiPanelSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->multiPanelSettings:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterTabsAtBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsAtBottom:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterTabsNotificationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsNotificationMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterTabsWidthMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filterTabsWidthMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rememberLastFilterTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->rememberLastFilterTab:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hideFolders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->hideFolders:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foldersFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->foldersFirst:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->filters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChatSortingEnabledByDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isChatSortingEnabledByDefault:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAllChatsTabEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconInsteadAllChatsTabTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->iconInsteadAllChatsTabTitle:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allChatsTabFabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFabs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSortingChatsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortingSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->sortingSettings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isArchiveSortingChatsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", archiveSortingSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingSettings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortingPinnedChats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->sortingPinnedChats:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", archiveSortingPinnedChats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->archiveSortingPinnedChats:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCLoudAlbumsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isCLoudAlbumsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAlbumsIntroShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAlbumsIntroShown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSortCloudAlbumsByNameEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isSortCloudAlbumsByNameEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenAlbumsInsteadCloudEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isOpenAlbumsInsteadCloudEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", albums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->albums:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bookmarks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->bookmarks:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->dialogSettings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlayerPinned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPlayerPinned:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPinnedPlayerMinimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerMinimized:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPinnedPlayerThemeOverridden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerThemeOverridden:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPinnedPlayerNightThemeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isPinnedPlayerNightThemeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMusicIntroShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isMusicIntroShown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedMusicTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedMusicTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", musicPlaylists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->musicPlaylists:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", templatesMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->templatesMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedTemplatesSortingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedTemplatesSortingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templatesChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->templatesChannelId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", templates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->templates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topicsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->topicsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topicsBarAtBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->topicsBarAtBottom:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoUpdateCatalogEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedAutoUpdateCatalogInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->selectedAutoUpdateCatalogInterval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noTopicFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->noTopicFirst:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->topics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->version:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allChatsTabFab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabFab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allChatsTabMultiFabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/Backup;->allChatsTabMultiFabs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
