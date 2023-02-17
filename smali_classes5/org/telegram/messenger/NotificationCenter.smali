.class public Lorg/telegram/messenger/NotificationCenter;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/NotificationCenter$UniqArrayList;,
        Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;,
        Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;,
        Lorg/telegram/messenger/NotificationCenter$DelayedPost;,
        Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
    }
.end annotation


# static fields
.field private static final EXPIRE_NOTIFICATIONS_TIME:J = 0x1399L

.field private static volatile Instance:[Lorg/telegram/messenger/NotificationCenter; = null

.field public static final activeGroupCallsUpdated:I

.field public static final albumsDidLoad:I

.field public static final animatedEmojiDocumentLoaded:I

.field public static final appDidLogout:I

.field public static final appUpdateAvailable:I

.field public static final applyGroupCallVisibleParticipants:I

.field public static final archivedStickersCountDidLoad:I

.field public static final attachMenuBotsDidLoad:I

.field public static final audioDidSent:I

.field public static final audioRecordTooShort:I

.field public static final audioRouteChanged:I

.field public static final backupDidUpload:I

.field public static final billingProductDetailsUpdated:I

.field public static final blockedUsersDidLoad:I

.field public static final bookmarksInfoDidLoad:I

.field public static final botAnswerChosen:I

.field public static final botButtonClicked:I = 0x1

.field public static final botContextMenu:I

.field public static final botInfoDidLoad:I

.field public static final botItemClicked:I

.field public static final botKeyboardDidLoad:I

.field public static final botLanguageChanged:I

.field public static final botSettingsChanged:I

.field public static final botsListChanged:I

.field public static final cameraInitied:I

.field public static final changeRepliesCounter:I

.field public static final channelRightsUpdated:I

.field public static final chatAvailableReactionsUpdated:I

.field public static final chatDidCreated:I

.field public static final chatDidFailCreate:I

.field public static final chatInfoCantLoad:I

.field public static final chatInfoDidLoad:I

.field public static final chatOnlineCountDidLoad:I

.field public static final chatSearchResultsAvailable:I

.field public static final chatSearchResultsLoading:I

.field public static chatSwithcedToForum:I = 0x0

.field public static final closeChats:I

.field public static final closeInCallActivity:I

.field public static final closeOtherAppActivities:I

.field public static final closeSearchByActiveAction:I

.field public static final combineMessagesSettingsDidChanged:I

.field public static final commentsRead:I

.field public static final configLoaded:I

.field public static final contactsDidLoad:I

.field public static final contactsImported:I

.field public static final currentUserPremiumStatusChanged:I

.field public static final currentUserShowLimitReachedDialog:I

.field public static final dialogDeleted:I

.field public static final dialogFiltersUpdated:I

.field public static final dialogIsTranslatable:I

.field public static final dialogPhotosLoaded:I

.field public static final dialogTranslate:I

.field public static final dialogsNeedReload:I

.field public static final dialogsUnreadCounterChanged:I

.field public static final dialogsUnreadReactionsCounterChanged:I

.field public static final diceStickersDidLoad:I

.field public static final didApplyNewTheme:I

.field public static final didClearDatabase:I

.field public static final didCreatedNewDeleteTask:I

.field public static final didEndCall:I

.field public static final didGenerateFingerprintKeyPair:I

.field public static final didLoadBookmarkMessages:I

.field public static final didLoadChatAdmins:I

.field public static final didLoadChatInviter:I

.field public static final didLoadPinnedMessages:I

.field public static final didLoadSendAsPeers:I

.field public static final didLoadSponsoredMessages:I

.field public static final didReceiveCall:I

.field public static final didReceiveNewMessages:I

.field public static final didReceiveSmsCode:I

.field public static final didReceivedWebpages:I

.field public static final didReceivedWebpagesInUpdates:I

.field public static final didRemoveTwoStepPassword:I

.field public static final didReplacedPhotoInMemCache:I

.field public static final didSetNewTheme:I

.field public static final didSetNewWallpapper:I

.field public static final didSetOrRemoveTwoStepPassword:I

.field public static final didSetPasscode:I

.field public static final didStartedCall:I

.field public static final didUpdateConnectionState:I

.field public static final didUpdateExtendedMedia:I

.field public static didUpdateGlobalAutoDeleteTimer:I = 0x0

.field public static final didUpdateMessagesViews:I

.field public static final didUpdatePollResults:I

.field public static final didUpdatePremiumGiftStickers:I

.field public static final didUpdateReactions:I

.field public static final didVerifyMessagesStickers:I

.field public static final emojiLoaded:I

.field public static final emojiPreviewThemesChanged:I

.field public static final encryptedChatCreated:I

.field public static final encryptedChatUpdated:I

.field public static final featuredEmojiDidLoad:I

.field public static final featuredStickersDidLoad:I

.field public static final fileLoadFailed:I

.field public static final fileLoadProgressChanged:I

.field public static final fileLoaded:I

.field public static final fileNewChunkAvailable:I

.field public static final filePreparingFailed:I

.field public static final filePreparingStarted:I

.field public static final fileUploadFailed:I

.field public static final fileUploadProgressChanged:I

.field public static final fileUploaded:I

.field public static final filterSettingsUpdated:I

.field public static final filterTabsAtBottomUpdated:I

.field public static final folderBecomeEmpty:I

.field public static final forceImportContactsStart:I

.field public static final gifStickerAvatarPrepared:I

.field public static final gifStickerAvatarPreparingFailed:I

.field public static final gifStickerAvatarPreparingStarted:I

.field private static volatile globalInstance:Lorg/telegram/messenger/NotificationCenter; = null

.field public static final goingToPreviewTheme:I

.field public static final groupCallScreencastStateChanged:I

.field public static final groupCallSpeakingUsersUpdated:I

.field public static final groupCallTypingsUpdated:I

.field public static final groupCallUpdated:I

.field public static final groupCallVisibilityChanged:I

.field public static final groupStickersDidLoad:I

.field public static final hasNewContactsToImport:I

.field public static final historyCleared:I

.field public static final historyImportProgressChanged:I

.field public static final httpFileDidFailedLoad:I

.field public static final httpFileDidLoad:I

.field public static final invalidateMotionBackground:I

.field public static final liveLocationsCacheChanged:I

.field public static final liveLocationsChanged:I

.field public static final loadingMessagesFailed:I

.field public static final locationPermissionDenied:I

.field public static final locationPermissionGranted:I

.field public static final mainUserInfoChanged:I

.field public static final mediaCountDidLoad:I

.field public static final mediaCountsDidLoad:I

.field public static final mediaDidLoad:I

.field public static final messagePlayingDidReset:I

.field public static final messagePlayingDidSeek:I

.field public static final messagePlayingDidStart:I

.field public static final messagePlayingGoingToStop:I

.field public static final messagePlayingPlayStateChanged:I

.field public static final messagePlayingProgressDidChanged:I

.field public static final messagePlayingSpeedChanged:I

.field public static final messageReceivedByAck:I

.field public static final messageReceivedByServer:I

.field public static final messageSendError:I

.field public static final messageTranslated:I

.field public static final messageTranslating:I

.field public static final messagesDeleted:I

.field public static final messagesDidLoad:I

.field public static final messagesDidLoadWithoutProcess:I

.field public static final messagesRead:I

.field public static final messagesReadContent:I

.field public static final messagesReadEncrypted:I

.field public static final moreMusicDidLoad:I

.field public static final multiPanelSettingsChanged:I

.field public static final musicDidLoad:I

.field public static final needAddArchivedStickers:I

.field public static final needCheckSystemBarColors:I

.field public static final needDeleteDialog:I

.field public static final needReloadRecentDialogsSearch:I

.field public static final needSetDayNightTheme:I

.field public static final needShareTheme:I

.field public static final needShowAlert:I

.field public static final needShowPlayServicesAlert:I

.field public static final needUpdateMainActionBarMenu:I

.field public static final neuroBotEnableChanged:I

.field public static final newDraftReceived:I

.field public static final newEmojiSuggestionsAvailable:I

.field public static final newLocationAvailable:I

.field public static final newPeopleNearbyAvailable:I

.field public static final newSessionReceived:I

.field public static final newSuggestionsAvailable:I

.field public static final notificationsCountUpdated:I

.field public static final notificationsSettingsUpdated:I

.field public static final onActivityResultReceived:I

.field public static final onContactsActionsClicked:I

.field public static final onDatabaseMigration:I

.field public static final onDatabaseOpened:I

.field public static final onDownloadingFilesChanged:I

.field public static final onEmojiInteractionsReceived:I

.field public static final onRequestPermissionResultReceived:I

.field public static final onUserRingtonesUpdated:I

.field public static final openArticle:I

.field public static final openedChatChanged:I

.field public static final passcodeDismissed:I

.field public static final paymentFinished:I

.field public static final peerSettingsDidLoad:I

.field public static final permissionsGranted:I

.field public static final pinnedInfoDidLoad:I

.field public static final playerDidStartPlaying:I

.field public static final playerRepeatOptionsDidChanged:I

.field public static final playlistDidChanged:I

.field public static final premiumPromoUpdated:I

.field public static final premiumStatusChangedGlobal:I

.field public static final premiumStickersPreviewLoaded:I

.field public static final privacyRulesUpdated:I

.field public static final proxyChangedByRotation:I

.field public static final proxyCheckDone:I

.field public static final proxySettingsChanged:I

.field public static final pushMessagesUpdated:I

.field public static final reactionsDidLoad:I

.field public static final recentChatsDidLoad:I

.field public static final recentDocumentsDidLoad:I

.field public static final recentEmojiStatusesUpdate:I

.field public static final recordProgressChanged:I

.field public static final recordStartError:I

.field public static final recordStarted:I

.field public static final recordStopped:I

.field public static final reloadDialogPhotos:I

.field public static final reloadHints:I

.field public static final reloadInlineHints:I

.field public static final reloadInterface:I

.field public static final removeAllMessagesFromDialog:I

.field public static final replaceMessagesObjects:I

.field public static final replyMessagesDidLoad:I

.field public static final requestPermissions:I

.field public static final scheduledMessagesUpdated:I

.field public static final screenStateChanged:I

.field public static final screenshotTook:I

.field public static final sendSocialEmotion:I

.field public static final sendingMessagesChanged:I

.field public static final showBulletin:I

.field public static final startAllHeavyOperations:I

.field public static final startSpoilers:I

.field public static final stickersDidLoad:I

.field public static final stickersImportComplete:I

.field public static final stickersImportProgressChanged:I

.field public static final stopAllHeavyOperations:I

.field public static final stopEncodingService:I

.field public static final stopSpoilers:I

.field public static final suggestedFiltersLoaded:I

.field public static final suggestedLangpack:I

.field public static final templatesDidChanged:I

.field public static final themeAccentListUpdated:I

.field public static final themeChanged:I

.field public static final themeListUpdated:I

.field public static final themeUploadError:I

.field public static final themeUploadedToServer:I

.field public static final threadMessagesRead:I

.field public static final topicsDidLoad:I

.field public static topicsDidLoaded:I = 0x0

.field public static final topicsSettingsChanged:I

.field private static totalEvents:I = 0x1

.field public static final twoStepPasswordChanged:I

.field public static final updateBotMenuButton:I

.field public static final updateDefaultSendAsPeer:I

.field public static final updateInterfaces:I

.field public static final updateMentionsCount:I

.field public static final updateMessageMedia:I

.field public static final updateSearchSettings:I

.field public static final userEmojiStatusUpdated:I

.field public static final userInfoDidLoad:I

.field public static final videoLoadingStateChanged:I

.field public static final voiceTranscriptionUpdate:I

.field public static final voipServiceCreated:I

.field public static final walletPendingTransactionsChanged:I

.field public static final walletSyncProgressChanged:I

.field public static final wallpapersDidLoad:I

.field public static final wallpapersNeedReload:I

.field public static final wasUnableToFindCurrentLocation:I

.field public static final webRtcMicAmplitudeEvent:I

.field public static final webRtcSpeakerAmplitudeEvent:I

.field public static final webViewResultSent:I


# instance fields
.field private addAfterBroadcast:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allowedNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;",
            ">;"
        }
    .end annotation
.end field

.field private animationInProgressCount:I

.field private animationInProgressPointer:I

.field private broadcasting:I

.field private checkForExpiredNotifications:Ljava/lang/Runnable;

.field private currentAccount:I

.field private currentHeavyOperationFlags:I

.field private delayedPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$DelayedPost;",
            ">;"
        }
    .end annotation
.end field

.field private delayedPostsTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$DelayedPost;",
            ">;"
        }
    .end annotation
.end field

.field private delayedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private delayedRunnablesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field heavyOperationsCounter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private postponeCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private removeAfterBroadcast:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5nzfLEII3Jo5v7pqpm_RTyvqa2Y(Landroid/view/View;II[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->lambda$listenEmojiLoading$1(Landroid/view/View;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cCw2IN9qHeyRJphyAMysSMDrwMs(Lorg/telegram/messenger/NotificationCenter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationCenter;->lambda$checkForExpiredNotifications$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qfLoSVnI6RSAMmhz7SoulpZLung(Lorg/telegram/messenger/NotificationCenter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    add-int/2addr v0, v0

    .line 31
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    .line 32
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->botItemClicked:I

    add-int/lit8 v0, v1, 0x1

    .line 33
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->botAnswerChosen:I

    add-int/lit8 v1, v0, 0x1

    .line 34
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->botContextMenu:I

    add-int/lit8 v0, v1, 0x1

    .line 35
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->botsListChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 36
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->neuroBotEnableChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 37
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->botSettingsChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 38
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->botLanguageChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 39
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->multiPanelSettingsChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 40
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->sendSocialEmotion:I

    add-int/lit8 v0, v1, 0x1

    .line 41
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 42
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 43
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->onContactsActionsClicked:I

    add-int/lit8 v1, v0, 0x1

    .line 44
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->filterTabsAtBottomUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 45
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->backupDidUpload:I

    add-int/lit8 v1, v0, 0x1

    .line 46
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->needUpdateMainActionBarMenu:I

    add-int/lit8 v0, v1, 0x1

    .line 47
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingStarted:I

    add-int/lit8 v1, v0, 0x1

    .line 48
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    add-int/lit8 v0, v1, 0x1

    .line 49
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    add-int/lit8 v1, v0, 0x1

    .line 50
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->themeChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 51
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->topicsSettingsChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 52
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->bookmarksInfoDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 53
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 54
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->combineMessagesSettingsDidChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 55
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didLoadBookmarkMessages:I

    add-int/lit8 v1, v0, 0x1

    .line 56
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->playlistDidChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 57
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->playerRepeatOptionsDidChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 80
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    add-int/lit8 v0, v1, 0x1

    .line 81
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    add-int/lit8 v1, v0, 0x1

    .line 82
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    add-int/lit8 v0, v1, 0x1

    .line 83
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    add-int/lit8 v1, v0, 0x1

    .line 84
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    add-int/lit8 v0, v1, 0x1

    .line 85
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->historyCleared:I

    add-int/lit8 v1, v0, 0x1

    .line 86
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I

    add-int/lit8 v0, v1, 0x1

    .line 87
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->threadMessagesRead:I

    add-int/lit8 v1, v0, 0x1

    .line 88
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->commentsRead:I

    add-int/lit8 v0, v1, 0x1

    .line 89
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->changeRepliesCounter:I

    add-int/lit8 v1, v0, 0x1

    .line 90
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 91
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didLoadSponsoredMessages:I

    add-int/lit8 v1, v0, 0x1

    .line 92
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didLoadSendAsPeers:I

    add-int/lit8 v0, v1, 0x1

    .line 93
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateDefaultSendAsPeer:I

    add-int/lit8 v1, v0, 0x1

    .line 94
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoadWithoutProcess:I

    add-int/lit8 v0, v1, 0x1

    .line 95
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I

    add-int/lit8 v1, v0, 0x1

    .line 96
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    add-int/lit8 v0, v1, 0x1

    .line 97
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    add-int/lit8 v1, v0, 0x1

    .line 98
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    add-int/lit8 v0, v1, 0x1

    .line 99
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->forceImportContactsStart:I

    add-int/lit8 v1, v0, 0x1

    .line 100
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 101
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    add-int/lit8 v1, v0, 0x1

    .line 102
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->hasNewContactsToImport:I

    add-int/lit8 v0, v1, 0x1

    .line 103
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    add-int/lit8 v1, v0, 0x1

    .line 104
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    add-int/lit8 v0, v1, 0x1

    .line 105
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 106
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoCantLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 107
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 108
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 109
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountsDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 110
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 111
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I

    add-int/lit8 v1, v0, 0x1

    .line 112
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    add-int/lit8 v0, v1, 0x1

    .line 113
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    add-int/lit8 v1, v0, 0x1

    .line 114
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    add-int/lit8 v0, v1, 0x1

    .line 115
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->folderBecomeEmpty:I

    add-int/lit8 v1, v0, 0x1

    .line 116
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    add-int/lit8 v0, v1, 0x1

    .line 117
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 118
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 119
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 120
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    add-int/lit8 v0, v1, 0x1

    .line 121
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 122
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 123
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateMessageMedia:I

    add-int/lit8 v1, v0, 0x1

    .line 124
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    add-int/lit8 v0, v1, 0x1

    .line 125
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    add-int/lit8 v1, v0, 0x1

    .line 126
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    add-int/lit8 v0, v1, 0x1

    .line 127
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->twoStepPasswordChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 128
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    add-int/lit8 v0, v1, 0x1

    .line 129
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didRemoveTwoStepPassword:I

    add-int/lit8 v1, v0, 0x1

    .line 130
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->replyMessagesDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 131
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didLoadPinnedMessages:I

    add-int/lit8 v1, v0, 0x1

    .line 132
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->newSessionReceived:I

    add-int/lit8 v0, v1, 0x1

    .line 133
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpages:I

    add-int/lit8 v1, v0, 0x1

    .line 134
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I

    add-int/lit8 v0, v1, 0x1

    .line 135
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 136
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->diceStickersDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 137
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 138
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 139
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 140
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    add-int/lit8 v0, v1, 0x1

    .line 141
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 142
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 143
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->pinnedInfoDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 144
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 145
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    add-int/lit8 v1, v0, 0x1

    .line 146
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsLoading:I

    add-int/lit8 v0, v1, 0x1

    .line 147
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 148
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 149
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    add-int/lit8 v1, v0, 0x1

    .line 150
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->needShowPlayServicesAlert:I

    add-int/lit8 v0, v1, 0x1

    .line 151
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateMessagesViews:I

    add-int/lit8 v1, v0, 0x1

    .line 152
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    add-int/lit8 v0, v1, 0x1

    .line 153
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->peerSettingsDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 154
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    add-int/lit8 v0, v1, 0x1

    .line 155
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    add-int/lit8 v1, v0, 0x1

    .line 156
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    add-int/lit8 v0, v1, 0x1

    .line 157
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->newDraftReceived:I

    add-int/lit8 v1, v0, 0x1

    .line 158
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 159
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->needAddArchivedStickers:I

    add-int/lit8 v1, v0, 0x1

    .line 160
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 161
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    add-int/lit8 v1, v0, 0x1

    .line 162
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->channelRightsUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 163
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    add-int/lit8 v1, v0, 0x1

    .line 164
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->updateMentionsCount:I

    add-int/lit8 v0, v1, 0x1

    .line 165
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatePollResults:I

    add-int/lit8 v1, v0, 0x1

    .line 166
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatOnlineCountDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 167
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->videoLoadingStateChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 168
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->newPeopleNearbyAvailable:I

    add-int/lit8 v0, v1, 0x1

    .line 169
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    add-int/lit8 v1, v0, 0x1

    .line 170
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    add-int/lit8 v0, v1, 0x1

    .line 171
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    add-int/lit8 v1, v0, 0x1

    .line 172
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    add-int/lit8 v0, v1, 0x1

    .line 173
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->sendingMessagesChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 174
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didUpdateReactions:I

    add-int/lit8 v0, v1, 0x1

    .line 175
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateExtendedMedia:I

    add-int/lit8 v1, v0, 0x1

    .line 176
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didVerifyMessagesStickers:I

    add-int/lit8 v0, v1, 0x1

    .line 177
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->scheduledMessagesUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 178
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    add-int/lit8 v0, v1, 0x1

    .line 179
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didLoadChatInviter:I

    add-int/lit8 v1, v0, 0x1

    .line 180
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didLoadChatAdmins:I

    add-int/lit8 v0, v1, 0x1

    .line 181
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 182
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->stickersImportProgressChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 183
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->stickersImportComplete:I

    add-int/lit8 v1, v0, 0x1

    .line 184
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    add-int/lit8 v0, v1, 0x1

    .line 185
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    add-int/lit8 v1, v0, 0x1

    .line 186
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->voiceTranscriptionUpdate:I

    add-int/lit8 v0, v1, 0x1

    .line 187
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->animatedEmojiDocumentLoaded:I

    add-int/lit8 v1, v0, 0x1

    .line 188
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    add-int/lit8 v0, v1, 0x1

    .line 189
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I

    add-int/lit8 v1, v0, 0x1

    .line 191
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messageTranslated:I

    add-int/lit8 v0, v1, 0x1

    .line 192
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->messageTranslating:I

    add-int/lit8 v1, v0, 0x1

    .line 193
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->dialogIsTranslatable:I

    add-int/lit8 v0, v1, 0x1

    .line 194
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogTranslate:I

    add-int/lit8 v1, v0, 0x1

    .line 196
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didGenerateFingerprintKeyPair:I

    add-int/lit8 v0, v1, 0x1

    .line 198
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->walletPendingTransactionsChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 199
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->walletSyncProgressChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 201
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 202
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 204
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    add-int/lit8 v1, v0, 0x1

    .line 206
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    add-int/lit8 v0, v1, 0x1

    .line 207
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileUploadFailed:I

    add-int/lit8 v1, v0, 0x1

    .line 208
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->fileUploadProgressChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 209
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 210
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    add-int/lit8 v0, v1, 0x1

    .line 211
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    add-int/lit8 v1, v0, 0x1

    .line 212
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    add-int/lit8 v0, v1, 0x1

    .line 213
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    add-int/lit8 v1, v0, 0x1

    .line 214
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    add-int/lit8 v0, v1, 0x1

    .line 216
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadCounterChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 218
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 219
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    add-int/lit8 v1, v0, 0x1

    .line 220
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 221
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    add-int/lit8 v1, v0, 0x1

    .line 222
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    add-int/lit8 v0, v1, 0x1

    .line 223
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingGoingToStop:I

    add-int/lit8 v1, v0, 0x1

    .line 224
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 225
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    add-int/lit8 v1, v0, 0x1

    .line 226
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    add-int/lit8 v0, v1, 0x1

    .line 227
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    add-int/lit8 v1, v0, 0x1

    .line 228
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->screenshotTook:I

    add-int/lit8 v0, v1, 0x1

    .line 229
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 230
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    add-int/lit8 v0, v1, 0x1

    .line 231
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    add-int/lit8 v1, v0, 0x1

    .line 232
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 234
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    add-int/lit8 v1, v0, 0x1

    .line 235
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 236
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->groupCallSpeakingUsersUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 237
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->groupCallScreencastStateChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 238
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->activeGroupCallsUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 239
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->applyGroupCallVisibleParticipants:I

    add-int/lit8 v0, v1, 0x1

    .line 240
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 241
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    add-int/lit8 v0, v1, 0x1

    .line 242
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    add-int/lit8 v1, v0, 0x1

    .line 243
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 245
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    add-int/lit8 v1, v0, 0x1

    .line 247
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->configLoaded:I

    add-int/lit8 v0, v1, 0x1

    .line 249
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    add-int/lit8 v1, v0, 0x1

    .line 251
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->newEmojiSuggestionsAvailable:I

    add-int/lit8 v0, v1, 0x1

    .line 253
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    add-int/lit8 v1, v0, 0x1

    .line 254
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    add-int/lit8 v0, v1, 0x1

    .line 256
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 257
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->filterSettingsUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 258
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->suggestedFiltersLoaded:I

    add-int/lit8 v1, v0, 0x1

    .line 260
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->updateBotMenuButton:I

    add-int/lit8 v0, v1, 0x1

    .line 262
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatePremiumGiftStickers:I

    add-int/lit8 v1, v0, 0x1

    .line 265
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 266
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->stopEncodingService:I

    add-int/lit8 v1, v0, 0x1

    .line 267
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->wallpapersDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 268
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->wallpapersNeedReload:I

    add-int/lit8 v1, v0, 0x1

    .line 269
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    add-int/lit8 v0, v1, 0x1

    .line 270
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    add-int/lit8 v1, v0, 0x1

    .line 271
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    add-int/lit8 v0, v1, 0x1

    .line 272
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    add-int/lit8 v1, v0, 0x1

    .line 273
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    add-int/lit8 v0, v1, 0x1

    .line 274
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    add-int/lit8 v1, v0, 0x1

    .line 275
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    add-int/lit8 v0, v1, 0x1

    .line 276
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    add-int/lit8 v1, v0, 0x1

    .line 277
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 278
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didApplyNewTheme:I

    add-int/lit8 v1, v0, 0x1

    .line 279
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 280
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    add-int/lit8 v1, v0, 0x1

    .line 281
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    add-int/lit8 v0, v1, 0x1

    .line 282
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    add-int/lit8 v1, v0, 0x1

    .line 283
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->goingToPreviewTheme:I

    add-int/lit8 v0, v1, 0x1

    .line 284
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    add-int/lit8 v1, v0, 0x1

    .line 285
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    add-int/lit8 v0, v1, 0x1

    .line 286
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    add-int/lit8 v1, v0, 0x1

    .line 287
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    add-int/lit8 v0, v1, 0x1

    .line 288
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    add-int/lit8 v1, v0, 0x1

    .line 289
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 290
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->proxyCheckDone:I

    add-int/lit8 v1, v0, 0x1

    .line 291
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->proxyChangedByRotation:I

    add-int/lit8 v0, v1, 0x1

    .line 292
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 293
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->newLocationAvailable:I

    add-int/lit8 v0, v1, 0x1

    .line 294
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 295
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 296
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    add-int/lit8 v1, v0, 0x1

    .line 297
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->closeSearchByActiveAction:I

    add-int/lit8 v0, v1, 0x1

    .line 298
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 299
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->screenStateChanged:I

    add-int/lit8 v0, v1, 0x1

    .line 300
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    add-int/lit8 v1, v0, 0x1

    .line 301
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    add-int/lit8 v0, v1, 0x1

    .line 302
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    add-int/lit8 v1, v0, 0x1

    .line 303
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    add-int/lit8 v0, v1, 0x1

    .line 304
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    add-int/lit8 v1, v0, 0x1

    .line 305
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    add-int/lit8 v0, v1, 0x1

    .line 306
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->onDatabaseMigration:I

    add-int/lit8 v1, v0, 0x1

    .line 307
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->onEmojiInteractionsReceived:I

    add-int/lit8 v0, v1, 0x1

    .line 308
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 309
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    add-int/lit8 v0, v1, 0x1

    .line 310
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    add-int/lit8 v1, v0, 0x1

    .line 311
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 312
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->dialogsUnreadReactionsCounterChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 313
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->onDatabaseOpened:I

    add-int/lit8 v0, v1, 0x1

    .line 314
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 315
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    add-int/lit8 v0, v1, 0x1

    .line 316
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    add-int/lit8 v1, v0, 0x1

    .line 317
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->onUserRingtonesUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 318
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    add-int/lit8 v1, v0, 0x1

    .line 319
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->premiumPromoUpdated:I

    add-int/lit8 v0, v1, 0x1

    .line 320
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->premiumStatusChangedGlobal:I

    add-int/lit8 v1, v0, 0x1

    .line 321
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->currentUserShowLimitReachedDialog:I

    add-int/lit8 v0, v1, 0x1

    .line 322
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->billingProductDetailsUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 323
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->premiumStickersPreviewLoaded:I

    add-int/lit8 v0, v1, 0x1

    .line 324
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->userEmojiStatusUpdated:I

    add-int/lit8 v1, v0, 0x1

    .line 325
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->requestPermissions:I

    add-int/lit8 v0, v1, 0x1

    .line 326
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->permissionsGranted:I

    add-int/lit8 v1, v0, 0x1

    .line 327
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    add-int/lit8 v0, v1, 0x1

    .line 328
    sput v0, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v1, Lorg/telegram/messenger/NotificationCenter;->chatSwithcedToForum:I

    add-int/lit8 v1, v0, 0x1

    .line 329
    sput v1, Lorg/telegram/messenger/NotificationCenter;->totalEvents:I

    sput v0, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/NotificationCenter;

    .line 368
    sput-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    .line 332
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    .line 333
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 342
    iput v0, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    const/4 v0, 0x1

    .line 345
    iput v0, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    .line 347
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    .line 400
    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->currentAccount:I

    return-void
.end method

.method private checkForExpiredNotifications()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 430
    iput-object v1, v0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    .line 431
    iget-object v2, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 435
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 437
    iget-object v4, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    move-wide v7, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 438
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    .line 439
    iget-wide v10, v10, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->time:J

    sub-long v12, v2, v10

    const-wide/16 v14, 0x3e8

    cmp-long v16, v12, v14

    if-lez v16, :cond_2

    if-nez v1, :cond_1

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    :cond_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_2
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/4 v4, 0x0

    .line 449
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 450
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    cmp-long v1, v7, v5

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x1399

    sub-long/2addr v2, v7

    sub-long/2addr v4, v2

    .line 455
    new-instance v1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/NotificationCenter;)V

    const-wide/16 v2, 0x11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method

.method private createArrayForId(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;"
        }
    .end annotation

    .line 647
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    if-eq p1, v0, :cond_1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-eq p1, v0, :cond_1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 648
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/messenger/NotificationCenter$UniqArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter$UniqArrayList;-><init>(Lorg/telegram/messenger/NotificationCenter;Lorg/telegram/messenger/NotificationCenter$1;)V

    return-object p1
.end method

.method public static getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;
    .locals 3

    .line 387
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->globalInstance:Lorg/telegram/messenger/NotificationCenter;

    if-nez v0, :cond_1

    .line 389
    const-class v1, Lorg/telegram/messenger/NotificationCenter;

    monitor-enter v1

    .line 390
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->globalInstance:Lorg/telegram/messenger/NotificationCenter;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lorg/telegram/messenger/NotificationCenter;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lorg/telegram/messenger/NotificationCenter;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/NotificationCenter;->globalInstance:Lorg/telegram/messenger/NotificationCenter;

    .line 394
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    .locals 3

    .line 373
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 375
    const-class v1, Lorg/telegram/messenger/NotificationCenter;

    monitor-enter v1

    .line 376
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 378
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    new-instance v2, Lorg/telegram/messenger/NotificationCenter;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationCenter;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 380
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$checkForExpiredNotifications$0()V
    .locals 1

    .line 455
    new-instance v0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/NotificationCenter;)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$listenEmojiLoading$1(Landroid/view/View;II[Ljava/lang/Object;)V
    .locals 0

    .line 732
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    if-eqz p0, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 734
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static listenEmojiLoading(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 731
    :cond_0
    new-instance v0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    .line 738
    new-instance v1, Lorg/telegram/messenger/NotificationCenter$1;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/NotificationCenter$1;-><init>(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 2

    .line 620
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 621
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "addObserver allowed only from MAIN thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 625
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-eqz v0, :cond_3

    .line 626
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 634
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 636
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/NotificationCenter;->createArrayForId(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 638
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 641
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V
    .locals 3

    .line 62
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 63
    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPostponeNotificationsCallback(Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;)V
    .locals 2

    .line 679
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 680
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PostponeNotificationsCallback allowed only from MAIN thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 684
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public doOnIdle(Ljava/lang/Runnable;)V
    .locals 1

    .line 705
    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public getCurrentHeavyOperationFlags()I
    .locals 1

    .line 514
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    return v0
.end method

.method public getObservers(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public hasObservers(I)Z
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .line 510
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationFinish(I)V
    .locals 4

    .line 467
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    if-eqz v0, :cond_1

    .line 469
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    .line 470
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 472
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 473
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 476
    :cond_0
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    if-nez p1, :cond_1

    .line 477
    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->runDelayedNotifications()V

    .line 480
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 481
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 482
    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public varargs postNotificationName(I[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 522
    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/4 v6, 0x0

    if-nez v3, :cond_8

    .line 524
    iget-object v7, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 525
    iget-object v3, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 528
    iget-object v9, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    .line 530
    iget-wide v13, v12, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->time:J

    sub-long v13, v7, v13

    const-wide/16 v15, 0x1399

    cmp-long v17, v13, v15

    if-lez v17, :cond_4

    if-nez v6, :cond_3

    .line 532
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 534
    :cond_3
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_4
    iget-object v11, v12, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->allowedIds:[I

    if-eqz v11, :cond_6

    const/4 v12, 0x0

    .line 538
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_2

    .line 539
    aget v13, v11, v12

    if-ne v13, v1, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    if-ne v3, v10, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    move v3, v4

    .line 550
    :cond_8
    sget v4, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne v1, v4, :cond_9

    .line 551
    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    .line 552
    iget v7, v0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v7

    iput v4, v0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    goto :goto_5

    .line 553
    :cond_9
    sget v4, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-ne v1, v4, :cond_a

    .line 554
    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    .line 555
    iget v7, v0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v4, v7

    iput v4, v0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    .line 557
    :cond_a
    :goto_5
    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameInternal(IZ[Ljava/lang/Object;)V

    if-eqz v6, :cond_b

    .line 560
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    .line 561
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method public varargs postNotificationNameInternal(IZ[Ljava/lang/Object;)V
    .locals 4

    .line 568
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 569
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "postNotificationName allowed only from MAIN thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 573
    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 574
    new-instance p2, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    invoke-direct {p2, p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;-><init>(I[Ljava/lang/Object;Lorg/telegram/messenger/NotificationCenter$1;)V

    .line 575
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 578
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_4

    const/4 p2, 0x0

    .line 579
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 580
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;

    iget v3, p0, Lorg/telegram/messenger/NotificationCenter;->currentAccount:I

    invoke-interface {v2, p1, v3, p3}, Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;->needPostpone(II[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    invoke-direct {v1, p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;-><init>(I[Ljava/lang/Object;Lorg/telegram/messenger/NotificationCenter$1;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 586
    :cond_4
    iget p2, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    .line 587
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 588
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 589
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 590
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    .line 591
    iget v3, p0, Lorg/telegram/messenger/NotificationCenter;->currentAccount:I

    invoke-interface {v2, p1, v3, p3}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 594
    :cond_5
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-nez p1, :cond_b

    .line 596
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 597
    :goto_3
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 598
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 599
    iget-object p3, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 600
    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 601
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 604
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 606
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 607
    :goto_5
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 608
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 609
    iget-object p3, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 610
    :goto_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 611
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 614
    :cond_a
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_b
    return-void
.end method

.method public removeDelayed(Ljava/lang/Runnable;)V
    .locals 1

    .line 713
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 2

    .line 654
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 655
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "removeObserver allowed only from MAIN thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 659
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 668
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 670
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V
    .locals 3

    .line 68
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 69
    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePostponeNotificationsCallback(Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;)V
    .locals 2

    .line 690
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 691
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removePostponeNotificationsCallback allowed only from MAIN thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 696
    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->runDelayedNotifications()V

    :cond_2
    return-void
.end method

.method public runDelayedNotifications()V
    .locals 5

    .line 487
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 491
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 492
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    .line 493
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->access$100(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->access$200(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameInternal(IZ[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 498
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 499
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 500
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 501
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 502
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 503
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public setAnimationInProgress(I[I)I
    .locals 1

    const/4 v0, 0x1

    .line 404
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result p1

    return p1
.end method

.method public setAnimationInProgress(I[IZ)I
    .locals 5

    .line 408
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 409
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 410
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 413
    :cond_0
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    .line 414
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    if-eqz p3, :cond_1

    .line 417
    iget-object p3, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_1
    new-instance p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;-><init>(Lorg/telegram/messenger/NotificationCenter$1;)V

    .line 420
    iput-object p2, p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->allowedIds:[I

    .line 421
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    iget p3, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 423
    new-instance p1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/NotificationCenter;)V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1399

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 426
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    return p1
.end method

.method public updateAllowedNotifications(I[I)V
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    if-eqz p1, :cond_0

    .line 462
    iput-object p2, p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->allowedIds:[I

    :cond_0
    return-void
.end method
