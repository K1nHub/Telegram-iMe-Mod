package org.telegram.messenger;

import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import org.telegram.messenger.Utilities;
/* loaded from: classes4.dex */
public class NotificationCenter {
    private static final long EXPIRE_NOTIFICATIONS_TIME = 5017;
    private static volatile NotificationCenter[] Instance = new NotificationCenter[5];
    public static final int activeGroupCallsUpdated;
    public static final int albumsDidLoad;
    public static boolean alreadyLogged = false;
    public static final int animatedEmojiDocumentLoaded;
    public static final int appDidLogout;
    public static final int appUpdateAvailable;
    public static final int applyGroupCallVisibleParticipants;
    public static final int archivedStickersCountDidLoad;
    public static final int articleClosed;
    public static final int attachMenuBotsDidLoad;
    public static final int audioDidSent;
    public static final int audioRecordTooShort;
    public static final int audioRouteChanged;
    public static final int backupDidUpload;
    public static final int billingConfirmPurchaseError;
    public static final int billingProductDetailsUpdated;
    public static final int blockedUsersDidLoad;
    public static final int boostByChannelCreated;
    public static final int boostedChannelByUser;
    public static final int botAnswerChosen = 1;
    public static final int botContextMenu;
    public static final int botInfoDidLoad;
    public static final int botKeyboardDidLoad;
    public static final int botLanguageChanged;
    public static final int botSettingsChanged;
    public static final int botsListChanged;
    public static final int cameraInitied;
    public static final int changeRepliesCounter;
    public static final int channelRecommendationsLoaded;
    public static final int channelRightsUpdated;
    public static final int chatAvailableReactionsUpdated;
    public static final int chatDidCreated;
    public static final int chatDidFailCreate;
    public static final int chatInfoCantLoad;
    public static final int chatInfoDidLoad;
    public static final int chatOnlineCountDidLoad;
    public static final int chatSearchResultsAvailable;
    public static final int chatSearchResultsLoading;
    public static final int chatSwithcedToForum;
    public static final int chatlistFolderUpdate;
    public static final int closeChats;
    public static final int closeInCallActivity;
    public static final int closeOtherAppActivities;
    public static final int closeSearchByActiveAction;
    public static final int combineMessagesSettingsDidChanged;
    public static final int commentsRead;
    public static final int configLoaded;
    public static final int contactsDidLoad;
    public static final int contactsImported;
    public static final int currentUserPremiumStatusChanged;
    public static final int currentUserShowLimitReachedDialog;
    public static final int customTypefacesLoaded;
    public static final int dialogDeleted;
    public static final int dialogFiltersUpdated;
    public static final int dialogIsTranslatable;
    public static final int dialogPhotosLoaded;
    public static final int dialogPhotosUpdate;
    public static final int dialogTranslate;
    public static final int dialogsNeedReload;
    public static final int dialogsUnreadCounterChanged;
    public static final int dialogsUnreadReactionsCounterChanged;
    public static final int diceStickersDidLoad;
    public static final int didApplyNewTheme;
    public static final int didClearDatabase;
    public static final int didCreatedNewDeleteTask;
    public static final int didEndCall;
    public static final int didGenerateFingerprintKeyPair;
    public static final int didLoadChatAdmins;
    public static final int didLoadChatInviter;
    public static final int didLoadPinnedMessages;
    public static final int didLoadSendAsPeers;
    public static final int didLoadSponsoredMessages;
    public static final int didReceiveCall;
    public static final int didReceiveNewMessages;
    public static final int didReceiveSmsCode;
    public static final int didReceivedWebpages;
    public static final int didReceivedWebpagesInUpdates;
    public static final int didRemoveTwoStepPassword;
    public static final int didReplacedPhotoInMemCache;
    public static final int didSetNewTheme;
    public static final int didSetNewWallpapper;
    public static final int didSetOrRemoveTwoStepPassword;
    public static final int didSetPasscode;
    public static final int didStartedCall;
    public static final int didStartedMultiGiftsSelector;
    public static final int didUpdateConnectionState;
    public static final int didUpdateExtendedMedia;
    public static final int didUpdateGlobalAutoDeleteTimer;
    public static final int didUpdateMessagesViews;
    public static final int didUpdatePollResults;
    public static final int didUpdatePremiumGiftFieldIcon;
    public static final int didUpdatePremiumGiftStickers;
    public static final int didUpdateReactions;
    public static final int didVerifyMessagesStickers;
    public static final int emojiLoaded;
    public static final int emojiPreviewThemesChanged;
    public static final int encryptedChatCreated;
    public static final int encryptedChatUpdated;
    public static final int featuredEmojiDidLoad;
    public static final int featuredStickersDidLoad;
    public static final int fileLoadFailed;
    public static final int fileLoadProgressChanged;
    public static final int fileLoaded;
    public static final int fileNewChunkAvailable;
    public static final int filePreparingFailed;
    public static final int filePreparingStarted;
    public static final int fileUploadFailed;
    public static final int fileUploadProgressChanged;
    public static final int fileUploaded;
    public static final int filterSettingsUpdated;
    public static final int filterTabsAtBottomUpdated;
    public static final int folderBecomeEmpty;
    public static final int forceImportContactsStart;
    public static final int gifStickerAvatarPrepared;
    public static final int gifStickerAvatarPreparingFailed;
    public static final int gifStickerAvatarPreparingStarted;
    public static final int giftsToUserSent;
    private static volatile NotificationCenter globalInstance = null;
    public static final int goingToPreviewTheme;
    public static final int groupCallScreencastStateChanged;
    public static final int groupCallSpeakingUsersUpdated;
    public static final int groupCallTypingsUpdated;
    public static final int groupCallUpdated;
    public static final int groupCallVisibilityChanged;
    public static final int groupStickersDidLoad;
    public static final int hasNewContactsToImport;
    public static final int historyCleared;
    public static final int historyImportProgressChanged;
    public static final int httpFileDidFailedLoad;
    public static final int httpFileDidLoad;
    public static final int invalidateMotionBackground;
    public static final int liveLocationsCacheChanged;
    public static final int liveLocationsChanged;
    public static final int loadingMessagesFailed;
    public static final int locationPermissionDenied;
    public static final int locationPermissionGranted;
    public static final int loginTokenDidAccepted;
    public static final int mainUserInfoChanged;
    public static final int mediaCountDidLoad;
    public static final int mediaCountsDidLoad;
    public static final int mediaDidLoad;
    public static final int messagePlayingDidReset;
    public static final int messagePlayingDidSeek;
    public static final int messagePlayingDidStart;
    public static final int messagePlayingGoingToStop;
    public static final int messagePlayingPlayStateChanged;
    public static final int messagePlayingProgressDidChanged;
    public static final int messagePlayingSpeedChanged;
    public static final int messageReceivedByAck;
    public static final int messageReceivedByServer;
    public static final int messageSendError;
    public static final int messageTranslated;
    public static final int messageTranslating;
    public static final int messagesDeleted;
    public static final int messagesDidLoad;
    public static final int messagesDidLoadWithoutProcess;
    public static final int messagesRead;
    public static final int messagesReadContent;
    public static final int messagesReadEncrypted;
    public static final int moreMusicDidLoad;
    public static final int multiPanelSettingsChanged;
    public static final int musicDidLoad;
    public static final int nearEarEvent;
    public static final int needAddArchivedStickers;
    public static final int needCheckSystemBarColors;
    public static final int needDeleteDialog;
    public static final int needReloadRecentDialogsSearch;
    public static final int needSetDayNightTheme;
    public static final int needShareTheme;
    public static final int needShowAlert;
    public static final int needShowPlayServicesAlert;
    public static final int needUpdateMainActionBarMenu;
    public static final int newDraftReceived;
    public static final int newEmojiSuggestionsAvailable;
    public static final int newLocationAvailable;
    public static final int newPeopleNearbyAvailable;
    public static final int newSessionReceived;
    public static final int newSuggestionsAvailable;
    public static final int notificationsCountUpdated;
    public static final int notificationsSettingsUpdated;
    public static final int onActivityResultReceived;
    public static final int onContactsActionsClicked;
    public static final int onDatabaseMigration;
    public static final int onDatabaseOpened;
    public static final int onDatabaseReset;
    public static final int onDownloadingFilesChanged;
    public static final int onEmojiInteractionsReceived;
    public static final int onReceivedChannelDifference;
    public static final int onRequestPermissionResultReceived;
    public static final int onUserRingtonesUpdated;
    public static final int openArticle;
    public static final int openedChatChanged;
    public static final int passcodeDismissed;
    public static final int paymentFinished;
    public static final int peerSettingsDidLoad;
    public static final int permissionsGranted;
    public static final int pinnedInfoDidLoad;
    public static final int playerDidStartPlaying;
    public static final int playerRepeatOptionsDidChanged;
    public static final int playlistDidChanged;
    public static final int premiumPromoUpdated;
    public static final int premiumStatusChangedGlobal;
    public static final int premiumStickersPreviewLoaded;
    public static final int privacyRulesUpdated;
    public static final int proxyChangedByRotation;
    public static final int proxyCheckDone;
    public static final int proxySettingsChanged;
    public static final int pushMessagesUpdated;
    public static final int reactionsDidLoad;
    public static final int recentChatsDidLoad;
    public static final int recentDocumentsDidLoad;
    public static final int recentEmojiStatusesUpdate;
    public static final int recordPaused;
    public static final int recordProgressChanged;
    public static final int recordResumed;
    public static final int recordStartError;
    public static final int recordStarted;
    public static final int recordStopped;
    public static final int reloadDialogPhotos;
    public static final int reloadHints;
    public static final int reloadInlineHints;
    public static final int reloadInterface;
    public static final int removeAllMessagesFromDialog;
    public static final int replaceMessagesObjects;
    public static final int replyMessagesDidLoad;
    public static final int requestPermissions;
    public static final int savedMessagesDialogsUpdate;
    public static final int savedReactionTagsUpdate;
    public static final int scheduledMessagesUpdated;
    public static final int screenStateChanged;
    public static final int screenshotTook;
    public static final int sendSocialEmotion;
    public static final int sendingMessagesChanged;
    public static final int showBulletin;
    public static final int startAllHeavyOperations;
    public static final int startSpoilers;
    public static final int stealthModeChanged;
    public static final int stickersDidLoad;
    public static final int stickersImportComplete;
    public static final int stickersImportProgressChanged;
    public static final int stopAllHeavyOperations;
    public static final int stopSpoilers;
    public static final int storiesBlocklistUpdate;
    public static final int storiesDraftsUpdated;
    public static final int storiesEnabledUpdate;
    public static final int storiesLimitUpdate;
    public static final int storiesListUpdated;
    public static final int storiesReadUpdated;
    public static final int storiesSendAsUpdate;
    public static final int storiesUpdated;
    public static final int suggestedFiltersLoaded;
    public static final int suggestedLangpack;
    public static final int templatesDidChanged;
    public static final int themeAccentListUpdated;
    public static final int themeListUpdated;
    public static final int themeUploadError;
    public static final int themeUploadedToServer;
    public static final int threadMessagesRead;
    public static final int topicsDidLoad;
    public static final int topicsDidLoaded;
    public static final int topicsSettingsChanged;
    private static int totalEvents = 1;
    public static final int twoStepPasswordChanged;
    public static final int unconfirmedAuthUpdate;
    public static final int updateBotMenuButton;
    public static final int updateDefaultSendAsPeer;
    public static final int updateInterfaces;
    public static final int updateMentionsCount;
    public static final int updateMessageMedia;
    public static final int updateSearchSettings;
    public static final int updateTranscriptionLock;
    public static final int uploadStoryEnd;
    public static final int uploadStoryProgress;
    public static final int userEmojiStatusUpdated;
    public static final int userInfoDidLoad;
    public static final int userIsPremiumBlockedUpadted;
    public static final int videoLoadingStateChanged;
    public static final int voiceTranscriptionUpdate;
    public static final int voipServiceCreated;
    public static final int walletPendingTransactionsChanged;
    public static final int walletSyncProgressChanged;
    public static final int wallpaperSettedToUser;
    public static final int wallpapersDidLoad;
    public static final int wallpapersNeedReload;
    public static final int wasUnableToFindCurrentLocation;
    public static final int webRtcMicAmplitudeEvent;
    public static final int webRtcSpeakerAmplitudeEvent;
    public static final int webViewResultSent;
    private int animationInProgressCount;
    private Runnable checkForExpiredNotifications;
    private int currentAccount;
    private int currentHeavyOperationFlags;
    private SparseArray<ArrayList<NotificationCenterDelegate>> observers = new SparseArray<>();
    private SparseArray<ArrayList<NotificationCenterDelegate>> removeAfterBroadcast = new SparseArray<>();
    private SparseArray<ArrayList<NotificationCenterDelegate>> addAfterBroadcast = new SparseArray<>();
    private ArrayList<DelayedPost> delayedPosts = new ArrayList<>(10);
    private ArrayList<Runnable> delayedRunnables = new ArrayList<>(10);
    private ArrayList<Runnable> delayedRunnablesTmp = new ArrayList<>(10);
    private ArrayList<DelayedPost> delayedPostsTmp = new ArrayList<>(10);
    private ArrayList<PostponeNotificationCallback> postponeCallbackList = new ArrayList<>(10);
    private int broadcasting = 0;
    private int animationInProgressPointer = 1;
    HashSet<Integer> heavyOperationsCounter = new HashSet<>();
    private final SparseArray<AllowedNotifications> allowedNotifications = new SparseArray<>();
    SparseArray<Runnable> alreadyPostedRannubles = new SparseArray<>();

    /* loaded from: classes4.dex */
    public interface NotificationCenterDelegate {
        void didReceivedNotification(int i, int i2, Object... objArr);
    }

    /* loaded from: classes4.dex */
    public interface PostponeNotificationCallback {
        boolean needPostpone(int i, int i2, Object[] objArr);
    }

    public static /* synthetic */ void lambda$listen$3() {
    }

    static {
        int i = 1 + 1;
        totalEvents = i;
        int i2 = i + 1;
        totalEvents = i2;
        botContextMenu = i;
        int i3 = i2 + 1;
        totalEvents = i3;
        botsListChanged = i2;
        int i4 = i3 + 1;
        totalEvents = i4;
        botSettingsChanged = i3;
        int i5 = i4 + 1;
        totalEvents = i5;
        botLanguageChanged = i4;
        int i6 = i5 + 1;
        totalEvents = i6;
        multiPanelSettingsChanged = i5;
        int i7 = i6 + 1;
        totalEvents = i7;
        sendSocialEmotion = i6;
        int i8 = i7 + 1;
        totalEvents = i8;
        topicsDidLoad = i7;
        int i9 = i8 + 1;
        totalEvents = i9;
        recentChatsDidLoad = i8;
        int i10 = i9 + 1;
        totalEvents = i10;
        onContactsActionsClicked = i9;
        int i11 = i10 + 1;
        totalEvents = i11;
        filterTabsAtBottomUpdated = i10;
        int i12 = i11 + 1;
        totalEvents = i12;
        backupDidUpload = i11;
        int i13 = i12 + 1;
        totalEvents = i13;
        needUpdateMainActionBarMenu = i12;
        int i14 = i13 + 1;
        totalEvents = i14;
        gifStickerAvatarPreparingStarted = i13;
        int i15 = i14 + 1;
        totalEvents = i15;
        gifStickerAvatarPrepared = i14;
        int i16 = i15 + 1;
        totalEvents = i16;
        gifStickerAvatarPreparingFailed = i15;
        int i17 = i16 + 1;
        totalEvents = i17;
        topicsSettingsChanged = i16;
        int i18 = i17 + 1;
        totalEvents = i18;
        templatesDidChanged = i17;
        int i19 = i18 + 1;
        totalEvents = i19;
        combineMessagesSettingsDidChanged = i18;
        int i20 = i19 + 1;
        totalEvents = i20;
        playlistDidChanged = i19;
        int i21 = i20 + 1;
        totalEvents = i21;
        playerRepeatOptionsDidChanged = i20;
        int i22 = i21 + 1;
        totalEvents = i22;
        loginTokenDidAccepted = i21;
        int i23 = i22 + 1;
        totalEvents = i23;
        didReceiveNewMessages = i22;
        int i24 = i23 + 1;
        totalEvents = i24;
        updateInterfaces = i23;
        int i25 = i24 + 1;
        totalEvents = i25;
        dialogsNeedReload = i24;
        int i26 = i25 + 1;
        totalEvents = i26;
        closeChats = i25;
        int i27 = i26 + 1;
        totalEvents = i27;
        messagesDeleted = i26;
        int i28 = i27 + 1;
        totalEvents = i28;
        historyCleared = i27;
        int i29 = i28 + 1;
        totalEvents = i29;
        messagesRead = i28;
        int i30 = i29 + 1;
        totalEvents = i30;
        threadMessagesRead = i29;
        int i31 = i30 + 1;
        totalEvents = i31;
        commentsRead = i30;
        int i32 = i31 + 1;
        totalEvents = i32;
        changeRepliesCounter = i31;
        int i33 = i32 + 1;
        totalEvents = i33;
        messagesDidLoad = i32;
        int i34 = i33 + 1;
        totalEvents = i34;
        didLoadSponsoredMessages = i33;
        int i35 = i34 + 1;
        totalEvents = i35;
        didLoadSendAsPeers = i34;
        int i36 = i35 + 1;
        totalEvents = i36;
        updateDefaultSendAsPeer = i35;
        int i37 = i36 + 1;
        totalEvents = i37;
        messagesDidLoadWithoutProcess = i36;
        int i38 = i37 + 1;
        totalEvents = i38;
        loadingMessagesFailed = i37;
        int i39 = i38 + 1;
        totalEvents = i39;
        messageReceivedByAck = i38;
        int i40 = i39 + 1;
        totalEvents = i40;
        messageReceivedByServer = i39;
        int i41 = i40 + 1;
        totalEvents = i41;
        messageSendError = i40;
        int i42 = i41 + 1;
        totalEvents = i42;
        forceImportContactsStart = i41;
        int i43 = i42 + 1;
        totalEvents = i43;
        contactsDidLoad = i42;
        int i44 = i43 + 1;
        totalEvents = i44;
        contactsImported = i43;
        int i45 = i44 + 1;
        totalEvents = i45;
        hasNewContactsToImport = i44;
        int i46 = i45 + 1;
        totalEvents = i46;
        chatDidCreated = i45;
        int i47 = i46 + 1;
        totalEvents = i47;
        chatDidFailCreate = i46;
        int i48 = i47 + 1;
        totalEvents = i48;
        chatInfoDidLoad = i47;
        int i49 = i48 + 1;
        totalEvents = i49;
        chatInfoCantLoad = i48;
        int i50 = i49 + 1;
        totalEvents = i50;
        mediaDidLoad = i49;
        int i51 = i50 + 1;
        totalEvents = i51;
        mediaCountDidLoad = i50;
        int i52 = i51 + 1;
        totalEvents = i52;
        mediaCountsDidLoad = i51;
        int i53 = i52 + 1;
        totalEvents = i53;
        encryptedChatUpdated = i52;
        int i54 = i53 + 1;
        totalEvents = i54;
        messagesReadEncrypted = i53;
        int i55 = i54 + 1;
        totalEvents = i55;
        encryptedChatCreated = i54;
        int i56 = i55 + 1;
        totalEvents = i56;
        dialogPhotosLoaded = i55;
        int i57 = i56 + 1;
        totalEvents = i57;
        reloadDialogPhotos = i56;
        int i58 = i57 + 1;
        totalEvents = i58;
        folderBecomeEmpty = i57;
        int i59 = i58 + 1;
        totalEvents = i59;
        removeAllMessagesFromDialog = i58;
        int i60 = i59 + 1;
        totalEvents = i60;
        notificationsSettingsUpdated = i59;
        int i61 = i60 + 1;
        totalEvents = i61;
        blockedUsersDidLoad = i60;
        int i62 = i61 + 1;
        totalEvents = i62;
        openedChatChanged = i61;
        int i63 = i62 + 1;
        totalEvents = i63;
        didCreatedNewDeleteTask = i62;
        int i64 = i63 + 1;
        totalEvents = i64;
        mainUserInfoChanged = i63;
        int i65 = i64 + 1;
        totalEvents = i65;
        privacyRulesUpdated = i64;
        int i66 = i65 + 1;
        totalEvents = i66;
        updateMessageMedia = i65;
        int i67 = i66 + 1;
        totalEvents = i67;
        replaceMessagesObjects = i66;
        int i68 = i67 + 1;
        totalEvents = i68;
        didSetPasscode = i67;
        int i69 = i68 + 1;
        totalEvents = i69;
        passcodeDismissed = i68;
        int i70 = i69 + 1;
        totalEvents = i70;
        twoStepPasswordChanged = i69;
        int i71 = i70 + 1;
        totalEvents = i71;
        didSetOrRemoveTwoStepPassword = i70;
        int i72 = i71 + 1;
        totalEvents = i72;
        didRemoveTwoStepPassword = i71;
        int i73 = i72 + 1;
        totalEvents = i73;
        replyMessagesDidLoad = i72;
        int i74 = i73 + 1;
        totalEvents = i74;
        didLoadPinnedMessages = i73;
        int i75 = i74 + 1;
        totalEvents = i75;
        newSessionReceived = i74;
        int i76 = i75 + 1;
        totalEvents = i76;
        didReceivedWebpages = i75;
        int i77 = i76 + 1;
        totalEvents = i77;
        didReceivedWebpagesInUpdates = i76;
        int i78 = i77 + 1;
        totalEvents = i78;
        stickersDidLoad = i77;
        int i79 = i78 + 1;
        totalEvents = i79;
        diceStickersDidLoad = i78;
        int i80 = i79 + 1;
        totalEvents = i80;
        featuredStickersDidLoad = i79;
        int i81 = i80 + 1;
        totalEvents = i81;
        featuredEmojiDidLoad = i80;
        int i82 = i81 + 1;
        totalEvents = i82;
        groupStickersDidLoad = i81;
        int i83 = i82 + 1;
        totalEvents = i83;
        messagesReadContent = i82;
        int i84 = i83 + 1;
        totalEvents = i84;
        botInfoDidLoad = i83;
        int i85 = i84 + 1;
        totalEvents = i85;
        userInfoDidLoad = i84;
        int i86 = i85 + 1;
        totalEvents = i86;
        pinnedInfoDidLoad = i85;
        int i87 = i86 + 1;
        totalEvents = i87;
        botKeyboardDidLoad = i86;
        int i88 = i87 + 1;
        totalEvents = i88;
        chatSearchResultsAvailable = i87;
        int i89 = i88 + 1;
        totalEvents = i89;
        chatSearchResultsLoading = i88;
        int i90 = i89 + 1;
        totalEvents = i90;
        musicDidLoad = i89;
        int i91 = i90 + 1;
        totalEvents = i91;
        moreMusicDidLoad = i90;
        int i92 = i91 + 1;
        totalEvents = i92;
        needShowAlert = i91;
        int i93 = i92 + 1;
        totalEvents = i93;
        needShowPlayServicesAlert = i92;
        int i94 = i93 + 1;
        totalEvents = i94;
        didUpdateMessagesViews = i93;
        int i95 = i94 + 1;
        totalEvents = i95;
        needReloadRecentDialogsSearch = i94;
        int i96 = i95 + 1;
        totalEvents = i96;
        peerSettingsDidLoad = i95;
        int i97 = i96 + 1;
        totalEvents = i97;
        wasUnableToFindCurrentLocation = i96;
        int i98 = i97 + 1;
        totalEvents = i98;
        reloadHints = i97;
        int i99 = i98 + 1;
        totalEvents = i99;
        reloadInlineHints = i98;
        int i100 = i99 + 1;
        totalEvents = i100;
        newDraftReceived = i99;
        int i101 = i100 + 1;
        totalEvents = i101;
        recentDocumentsDidLoad = i100;
        int i102 = i101 + 1;
        totalEvents = i102;
        needAddArchivedStickers = i101;
        int i103 = i102 + 1;
        totalEvents = i103;
        archivedStickersCountDidLoad = i102;
        int i104 = i103 + 1;
        totalEvents = i104;
        paymentFinished = i103;
        int i105 = i104 + 1;
        totalEvents = i105;
        channelRightsUpdated = i104;
        int i106 = i105 + 1;
        totalEvents = i106;
        openArticle = i105;
        int i107 = i106 + 1;
        totalEvents = i107;
        articleClosed = i106;
        int i108 = i107 + 1;
        totalEvents = i108;
        updateMentionsCount = i107;
        int i109 = i108 + 1;
        totalEvents = i109;
        didUpdatePollResults = i108;
        int i110 = i109 + 1;
        totalEvents = i110;
        chatOnlineCountDidLoad = i109;
        int i111 = i110 + 1;
        totalEvents = i111;
        videoLoadingStateChanged = i110;
        int i112 = i111 + 1;
        totalEvents = i112;
        newPeopleNearbyAvailable = i111;
        int i113 = i112 + 1;
        totalEvents = i113;
        stopAllHeavyOperations = i112;
        int i114 = i113 + 1;
        totalEvents = i114;
        startAllHeavyOperations = i113;
        int i115 = i114 + 1;
        totalEvents = i115;
        stopSpoilers = i114;
        int i116 = i115 + 1;
        totalEvents = i116;
        startSpoilers = i115;
        int i117 = i116 + 1;
        totalEvents = i117;
        sendingMessagesChanged = i116;
        int i118 = i117 + 1;
        totalEvents = i118;
        didUpdateReactions = i117;
        int i119 = i118 + 1;
        totalEvents = i119;
        didUpdateExtendedMedia = i118;
        int i120 = i119 + 1;
        totalEvents = i120;
        didVerifyMessagesStickers = i119;
        int i121 = i120 + 1;
        totalEvents = i121;
        scheduledMessagesUpdated = i120;
        int i122 = i121 + 1;
        totalEvents = i122;
        newSuggestionsAvailable = i121;
        int i123 = i122 + 1;
        totalEvents = i123;
        didLoadChatInviter = i122;
        int i124 = i123 + 1;
        totalEvents = i124;
        didLoadChatAdmins = i123;
        int i125 = i124 + 1;
        totalEvents = i125;
        historyImportProgressChanged = i124;
        int i126 = i125 + 1;
        totalEvents = i126;
        stickersImportProgressChanged = i125;
        int i127 = i126 + 1;
        totalEvents = i127;
        stickersImportComplete = i126;
        int i128 = i127 + 1;
        totalEvents = i128;
        dialogDeleted = i127;
        int i129 = i128 + 1;
        totalEvents = i129;
        webViewResultSent = i128;
        int i130 = i129 + 1;
        totalEvents = i130;
        voiceTranscriptionUpdate = i129;
        int i131 = i130 + 1;
        totalEvents = i131;
        animatedEmojiDocumentLoaded = i130;
        int i132 = i131 + 1;
        totalEvents = i132;
        recentEmojiStatusesUpdate = i131;
        int i133 = i132 + 1;
        totalEvents = i133;
        updateSearchSettings = i132;
        int i134 = i133 + 1;
        totalEvents = i134;
        updateTranscriptionLock = i133;
        int i135 = i134 + 1;
        totalEvents = i135;
        messageTranslated = i134;
        int i136 = i135 + 1;
        totalEvents = i136;
        messageTranslating = i135;
        int i137 = i136 + 1;
        totalEvents = i137;
        dialogIsTranslatable = i136;
        int i138 = i137 + 1;
        totalEvents = i138;
        dialogTranslate = i137;
        int i139 = i138 + 1;
        totalEvents = i139;
        didGenerateFingerprintKeyPair = i138;
        int i140 = i139 + 1;
        totalEvents = i140;
        walletPendingTransactionsChanged = i139;
        int i141 = i140 + 1;
        totalEvents = i141;
        walletSyncProgressChanged = i140;
        int i142 = i141 + 1;
        totalEvents = i142;
        httpFileDidLoad = i141;
        int i143 = i142 + 1;
        totalEvents = i143;
        httpFileDidFailedLoad = i142;
        int i144 = i143 + 1;
        totalEvents = i144;
        didUpdateConnectionState = i143;
        int i145 = i144 + 1;
        totalEvents = i145;
        fileUploaded = i144;
        int i146 = i145 + 1;
        totalEvents = i146;
        fileUploadFailed = i145;
        int i147 = i146 + 1;
        totalEvents = i147;
        fileUploadProgressChanged = i146;
        int i148 = i147 + 1;
        totalEvents = i148;
        fileLoadProgressChanged = i147;
        int i149 = i148 + 1;
        totalEvents = i149;
        fileLoaded = i148;
        int i150 = i149 + 1;
        totalEvents = i150;
        fileLoadFailed = i149;
        int i151 = i150 + 1;
        totalEvents = i151;
        filePreparingStarted = i150;
        int i152 = i151 + 1;
        totalEvents = i152;
        fileNewChunkAvailable = i151;
        int i153 = i152 + 1;
        totalEvents = i153;
        filePreparingFailed = i152;
        int i154 = i153 + 1;
        totalEvents = i154;
        dialogsUnreadCounterChanged = i153;
        int i155 = i154 + 1;
        totalEvents = i155;
        messagePlayingProgressDidChanged = i154;
        int i156 = i155 + 1;
        totalEvents = i156;
        messagePlayingDidReset = i155;
        int i157 = i156 + 1;
        totalEvents = i157;
        messagePlayingPlayStateChanged = i156;
        int i158 = i157 + 1;
        totalEvents = i158;
        messagePlayingDidStart = i157;
        int i159 = i158 + 1;
        totalEvents = i159;
        messagePlayingDidSeek = i158;
        int i160 = i159 + 1;
        totalEvents = i160;
        messagePlayingGoingToStop = i159;
        int i161 = i160 + 1;
        totalEvents = i161;
        recordProgressChanged = i160;
        int i162 = i161 + 1;
        totalEvents = i162;
        recordStarted = i161;
        int i163 = i162 + 1;
        totalEvents = i163;
        recordStartError = i162;
        int i164 = i163 + 1;
        totalEvents = i164;
        recordStopped = i163;
        int i165 = i164 + 1;
        totalEvents = i165;
        recordPaused = i164;
        int i166 = i165 + 1;
        totalEvents = i166;
        recordResumed = i165;
        int i167 = i166 + 1;
        totalEvents = i167;
        screenshotTook = i166;
        int i168 = i167 + 1;
        totalEvents = i168;
        albumsDidLoad = i167;
        int i169 = i168 + 1;
        totalEvents = i169;
        audioDidSent = i168;
        int i170 = i169 + 1;
        totalEvents = i170;
        audioRecordTooShort = i169;
        int i171 = i170 + 1;
        totalEvents = i171;
        audioRouteChanged = i170;
        int i172 = i171 + 1;
        totalEvents = i172;
        didStartedCall = i171;
        int i173 = i172 + 1;
        totalEvents = i173;
        groupCallUpdated = i172;
        int i174 = i173 + 1;
        totalEvents = i174;
        groupCallSpeakingUsersUpdated = i173;
        int i175 = i174 + 1;
        totalEvents = i175;
        groupCallScreencastStateChanged = i174;
        int i176 = i175 + 1;
        totalEvents = i176;
        activeGroupCallsUpdated = i175;
        int i177 = i176 + 1;
        totalEvents = i177;
        applyGroupCallVisibleParticipants = i176;
        int i178 = i177 + 1;
        totalEvents = i178;
        groupCallTypingsUpdated = i177;
        int i179 = i178 + 1;
        totalEvents = i179;
        didEndCall = i178;
        int i180 = i179 + 1;
        totalEvents = i180;
        closeInCallActivity = i179;
        int i181 = i180 + 1;
        totalEvents = i181;
        groupCallVisibilityChanged = i180;
        int i182 = i181 + 1;
        totalEvents = i182;
        appDidLogout = i181;
        int i183 = i182 + 1;
        totalEvents = i183;
        configLoaded = i182;
        int i184 = i183 + 1;
        totalEvents = i184;
        needDeleteDialog = i183;
        int i185 = i184 + 1;
        totalEvents = i185;
        newEmojiSuggestionsAvailable = i184;
        int i186 = i185 + 1;
        totalEvents = i186;
        themeUploadedToServer = i185;
        int i187 = i186 + 1;
        totalEvents = i187;
        themeUploadError = i186;
        int i188 = i187 + 1;
        totalEvents = i188;
        dialogFiltersUpdated = i187;
        int i189 = i188 + 1;
        totalEvents = i189;
        filterSettingsUpdated = i188;
        int i190 = i189 + 1;
        totalEvents = i190;
        suggestedFiltersLoaded = i189;
        int i191 = i190 + 1;
        totalEvents = i191;
        updateBotMenuButton = i190;
        int i192 = i191 + 1;
        totalEvents = i192;
        giftsToUserSent = i191;
        int i193 = i192 + 1;
        totalEvents = i193;
        didStartedMultiGiftsSelector = i192;
        int i194 = i193 + 1;
        totalEvents = i194;
        boostedChannelByUser = i193;
        int i195 = i194 + 1;
        totalEvents = i195;
        boostByChannelCreated = i194;
        int i196 = i195 + 1;
        totalEvents = i196;
        didUpdatePremiumGiftStickers = i195;
        int i197 = i196 + 1;
        totalEvents = i197;
        didUpdatePremiumGiftFieldIcon = i196;
        int i198 = i197 + 1;
        totalEvents = i198;
        storiesEnabledUpdate = i197;
        int i199 = i198 + 1;
        totalEvents = i199;
        storiesBlocklistUpdate = i198;
        int i200 = i199 + 1;
        totalEvents = i200;
        storiesLimitUpdate = i199;
        int i201 = i200 + 1;
        totalEvents = i201;
        storiesSendAsUpdate = i200;
        int i202 = i201 + 1;
        totalEvents = i202;
        unconfirmedAuthUpdate = i201;
        int i203 = i202 + 1;
        totalEvents = i203;
        dialogPhotosUpdate = i202;
        int i204 = i203 + 1;
        totalEvents = i204;
        channelRecommendationsLoaded = i203;
        int i205 = i204 + 1;
        totalEvents = i205;
        savedMessagesDialogsUpdate = i204;
        int i206 = i205 + 1;
        totalEvents = i206;
        savedReactionTagsUpdate = i205;
        int i207 = i206 + 1;
        totalEvents = i207;
        userIsPremiumBlockedUpadted = i206;
        int i208 = i207 + 1;
        totalEvents = i208;
        pushMessagesUpdated = i207;
        int i209 = i208 + 1;
        totalEvents = i209;
        wallpapersDidLoad = i208;
        int i210 = i209 + 1;
        totalEvents = i210;
        wallpapersNeedReload = i209;
        int i211 = i210 + 1;
        totalEvents = i211;
        didReceiveSmsCode = i210;
        int i212 = i211 + 1;
        totalEvents = i212;
        didReceiveCall = i211;
        int i213 = i212 + 1;
        totalEvents = i213;
        emojiLoaded = i212;
        int i214 = i213 + 1;
        totalEvents = i214;
        invalidateMotionBackground = i213;
        int i215 = i214 + 1;
        totalEvents = i215;
        closeOtherAppActivities = i214;
        int i216 = i215 + 1;
        totalEvents = i216;
        cameraInitied = i215;
        int i217 = i216 + 1;
        totalEvents = i217;
        didReplacedPhotoInMemCache = i216;
        int i218 = i217 + 1;
        totalEvents = i218;
        didSetNewTheme = i217;
        int i219 = i218 + 1;
        totalEvents = i219;
        themeListUpdated = i218;
        int i220 = i219 + 1;
        totalEvents = i220;
        didApplyNewTheme = i219;
        int i221 = i220 + 1;
        totalEvents = i221;
        themeAccentListUpdated = i220;
        int i222 = i221 + 1;
        totalEvents = i222;
        needCheckSystemBarColors = i221;
        int i223 = i222 + 1;
        totalEvents = i223;
        needShareTheme = i222;
        int i224 = i223 + 1;
        totalEvents = i224;
        needSetDayNightTheme = i223;
        int i225 = i224 + 1;
        totalEvents = i225;
        goingToPreviewTheme = i224;
        int i226 = i225 + 1;
        totalEvents = i226;
        locationPermissionGranted = i225;
        int i227 = i226 + 1;
        totalEvents = i227;
        locationPermissionDenied = i226;
        int i228 = i227 + 1;
        totalEvents = i228;
        reloadInterface = i227;
        int i229 = i228 + 1;
        totalEvents = i229;
        suggestedLangpack = i228;
        int i230 = i229 + 1;
        totalEvents = i230;
        didSetNewWallpapper = i229;
        int i231 = i230 + 1;
        totalEvents = i231;
        proxySettingsChanged = i230;
        int i232 = i231 + 1;
        totalEvents = i232;
        proxyCheckDone = i231;
        int i233 = i232 + 1;
        totalEvents = i233;
        proxyChangedByRotation = i232;
        int i234 = i233 + 1;
        totalEvents = i234;
        liveLocationsChanged = i233;
        int i235 = i234 + 1;
        totalEvents = i235;
        newLocationAvailable = i234;
        int i236 = i235 + 1;
        totalEvents = i236;
        liveLocationsCacheChanged = i235;
        int i237 = i236 + 1;
        totalEvents = i237;
        notificationsCountUpdated = i236;
        int i238 = i237 + 1;
        totalEvents = i238;
        playerDidStartPlaying = i237;
        int i239 = i238 + 1;
        totalEvents = i239;
        closeSearchByActiveAction = i238;
        int i240 = i239 + 1;
        totalEvents = i240;
        messagePlayingSpeedChanged = i239;
        int i241 = i240 + 1;
        totalEvents = i241;
        screenStateChanged = i240;
        int i242 = i241 + 1;
        totalEvents = i242;
        didClearDatabase = i241;
        int i243 = i242 + 1;
        totalEvents = i243;
        voipServiceCreated = i242;
        int i244 = i243 + 1;
        totalEvents = i244;
        webRtcMicAmplitudeEvent = i243;
        int i245 = i244 + 1;
        totalEvents = i245;
        webRtcSpeakerAmplitudeEvent = i244;
        int i246 = i245 + 1;
        totalEvents = i246;
        showBulletin = i245;
        int i247 = i246 + 1;
        totalEvents = i247;
        appUpdateAvailable = i246;
        int i248 = i247 + 1;
        totalEvents = i248;
        onDatabaseMigration = i247;
        int i249 = i248 + 1;
        totalEvents = i249;
        onEmojiInteractionsReceived = i248;
        int i250 = i249 + 1;
        totalEvents = i250;
        emojiPreviewThemesChanged = i249;
        int i251 = i250 + 1;
        totalEvents = i251;
        reactionsDidLoad = i250;
        int i252 = i251 + 1;
        totalEvents = i252;
        attachMenuBotsDidLoad = i251;
        int i253 = i252 + 1;
        totalEvents = i253;
        chatAvailableReactionsUpdated = i252;
        int i254 = i253 + 1;
        totalEvents = i254;
        dialogsUnreadReactionsCounterChanged = i253;
        int i255 = i254 + 1;
        totalEvents = i255;
        onDatabaseOpened = i254;
        int i256 = i255 + 1;
        totalEvents = i256;
        onDownloadingFilesChanged = i255;
        int i257 = i256 + 1;
        totalEvents = i257;
        onActivityResultReceived = i256;
        int i258 = i257 + 1;
        totalEvents = i258;
        onRequestPermissionResultReceived = i257;
        int i259 = i258 + 1;
        totalEvents = i259;
        onUserRingtonesUpdated = i258;
        int i260 = i259 + 1;
        totalEvents = i260;
        currentUserPremiumStatusChanged = i259;
        int i261 = i260 + 1;
        totalEvents = i261;
        premiumPromoUpdated = i260;
        int i262 = i261 + 1;
        totalEvents = i262;
        premiumStatusChangedGlobal = i261;
        int i263 = i262 + 1;
        totalEvents = i263;
        currentUserShowLimitReachedDialog = i262;
        int i264 = i263 + 1;
        totalEvents = i264;
        billingProductDetailsUpdated = i263;
        int i265 = i264 + 1;
        totalEvents = i265;
        billingConfirmPurchaseError = i264;
        int i266 = i265 + 1;
        totalEvents = i266;
        premiumStickersPreviewLoaded = i265;
        int i267 = i266 + 1;
        totalEvents = i267;
        userEmojiStatusUpdated = i266;
        int i268 = i267 + 1;
        totalEvents = i268;
        requestPermissions = i267;
        int i269 = i268 + 1;
        totalEvents = i269;
        permissionsGranted = i268;
        int i270 = i269 + 1;
        totalEvents = i270;
        topicsDidLoaded = i269;
        int i271 = i270 + 1;
        totalEvents = i271;
        chatSwithcedToForum = i270;
        int i272 = i271 + 1;
        totalEvents = i272;
        didUpdateGlobalAutoDeleteTimer = i271;
        int i273 = i272 + 1;
        totalEvents = i273;
        onDatabaseReset = i272;
        int i274 = i273 + 1;
        totalEvents = i274;
        wallpaperSettedToUser = i273;
        int i275 = i274 + 1;
        totalEvents = i275;
        storiesUpdated = i274;
        int i276 = i275 + 1;
        totalEvents = i276;
        storiesListUpdated = i275;
        int i277 = i276 + 1;
        totalEvents = i277;
        storiesDraftsUpdated = i276;
        int i278 = i277 + 1;
        totalEvents = i278;
        chatlistFolderUpdate = i277;
        int i279 = i278 + 1;
        totalEvents = i279;
        uploadStoryProgress = i278;
        int i280 = i279 + 1;
        totalEvents = i280;
        uploadStoryEnd = i279;
        int i281 = i280 + 1;
        totalEvents = i281;
        customTypefacesLoaded = i280;
        int i282 = i281 + 1;
        totalEvents = i282;
        stealthModeChanged = i281;
        int i283 = i282 + 1;
        totalEvents = i283;
        onReceivedChannelDifference = i282;
        int i284 = i283 + 1;
        totalEvents = i284;
        storiesReadUpdated = i283;
        totalEvents = i284 + 1;
        nearEarEvent = i284;
    }

    public void addObservers(NotificationCenterDelegate notificationCenterDelegate, int[] iArr) {
        for (int i : iArr) {
            addObserver(notificationCenterDelegate, i);
        }
    }

    public void removeObservers(NotificationCenterDelegate notificationCenterDelegate, int[] iArr) {
        for (int i : iArr) {
            removeObserver(notificationCenterDelegate, i);
        }
    }

    /* loaded from: classes4.dex */
    public static class DelayedPost {
        private Object[] args;

        /* renamed from: id */
        private int f1541id;

        private DelayedPost(int i, Object[] objArr) {
            this.f1541id = i;
            this.args = objArr;
        }
    }

    public static NotificationCenter getInstance(int i) {
        NotificationCenter notificationCenter = Instance[i];
        if (notificationCenter == null) {
            synchronized (NotificationCenter.class) {
                notificationCenter = Instance[i];
                if (notificationCenter == null) {
                    NotificationCenter[] notificationCenterArr = Instance;
                    NotificationCenter notificationCenter2 = new NotificationCenter(i);
                    notificationCenterArr[i] = notificationCenter2;
                    notificationCenter = notificationCenter2;
                }
            }
        }
        return notificationCenter;
    }

    public static NotificationCenter getGlobalInstance() {
        NotificationCenter notificationCenter = globalInstance;
        if (notificationCenter == null) {
            synchronized (NotificationCenter.class) {
                notificationCenter = globalInstance;
                if (notificationCenter == null) {
                    notificationCenter = new NotificationCenter(-1);
                    globalInstance = notificationCenter;
                }
            }
        }
        return notificationCenter;
    }

    public NotificationCenter(int i) {
        this.currentAccount = i;
    }

    public int setAnimationInProgress(int i, int[] iArr) {
        return setAnimationInProgress(i, iArr, true);
    }

    public int setAnimationInProgress(int i, int[] iArr, boolean z) {
        onAnimationFinish(i);
        if (this.heavyOperationsCounter.isEmpty() && z) {
            getGlobalInstance().lambda$postNotificationNameOnUIThread$1(stopAllHeavyOperations, 512);
        }
        this.animationInProgressCount++;
        int i2 = this.animationInProgressPointer + 1;
        this.animationInProgressPointer = i2;
        if (z) {
            this.heavyOperationsCounter.add(Integer.valueOf(i2));
        }
        AllowedNotifications allowedNotifications = new AllowedNotifications();
        allowedNotifications.allowedIds = iArr;
        this.allowedNotifications.put(this.animationInProgressPointer, allowedNotifications);
        if (this.checkForExpiredNotifications == null) {
            NotificationCenter$$ExternalSyntheticLambda2 notificationCenter$$ExternalSyntheticLambda2 = new NotificationCenter$$ExternalSyntheticLambda2(this);
            this.checkForExpiredNotifications = notificationCenter$$ExternalSyntheticLambda2;
            AndroidUtilities.runOnUIThread(notificationCenter$$ExternalSyntheticLambda2, EXPIRE_NOTIFICATIONS_TIME);
        }
        return this.animationInProgressPointer;
    }

    public void checkForExpiredNotifications() {
        ArrayList arrayList = null;
        this.checkForExpiredNotifications = null;
        if (this.allowedNotifications.size() == 0) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = Long.MAX_VALUE;
        for (int i = 0; i < this.allowedNotifications.size(); i++) {
            long j2 = this.allowedNotifications.valueAt(i).time;
            if (elapsedRealtime - j2 > 1000) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(Integer.valueOf(this.allowedNotifications.keyAt(i)));
            } else {
                j = Math.min(j2, j);
            }
        }
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                onAnimationFinish(((Integer) arrayList.get(i2)).intValue());
            }
        }
        if (j != Long.MAX_VALUE) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.this.lambda$checkForExpiredNotifications$0();
                }
            }, Math.max(17L, EXPIRE_NOTIFICATIONS_TIME - (elapsedRealtime - j)));
        }
    }

    public /* synthetic */ void lambda$checkForExpiredNotifications$0() {
        this.checkForExpiredNotifications = new NotificationCenter$$ExternalSyntheticLambda2(this);
    }

    public void updateAllowedNotifications(int i, int[] iArr) {
        AllowedNotifications allowedNotifications = this.allowedNotifications.get(i);
        if (allowedNotifications != null) {
            allowedNotifications.allowedIds = iArr;
        }
    }

    public void onAnimationFinish(int i) {
        AllowedNotifications allowedNotifications = this.allowedNotifications.get(i);
        this.allowedNotifications.delete(i);
        if (allowedNotifications != null) {
            this.animationInProgressCount--;
            if (!this.heavyOperationsCounter.isEmpty()) {
                this.heavyOperationsCounter.remove(Integer.valueOf(i));
                if (this.heavyOperationsCounter.isEmpty()) {
                    getGlobalInstance().lambda$postNotificationNameOnUIThread$1(startAllHeavyOperations, 512);
                }
            }
            if (this.animationInProgressCount == 0) {
                runDelayedNotifications();
            }
        }
        if (this.checkForExpiredNotifications == null || this.allowedNotifications.size() != 0) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.checkForExpiredNotifications);
        this.checkForExpiredNotifications = null;
    }

    public void runDelayedNotifications() {
        if (!this.delayedPosts.isEmpty()) {
            this.delayedPostsTmp.clear();
            this.delayedPostsTmp.addAll(this.delayedPosts);
            this.delayedPosts.clear();
            for (int i = 0; i < this.delayedPostsTmp.size(); i++) {
                DelayedPost delayedPost = this.delayedPostsTmp.get(i);
                postNotificationNameInternal(delayedPost.f1541id, true, delayedPost.args);
            }
            this.delayedPostsTmp.clear();
        }
        if (this.delayedRunnables.isEmpty()) {
            return;
        }
        this.delayedRunnablesTmp.clear();
        this.delayedRunnablesTmp.addAll(this.delayedRunnables);
        this.delayedRunnables.clear();
        for (int i2 = 0; i2 < this.delayedRunnablesTmp.size(); i2++) {
            AndroidUtilities.runOnUIThread(this.delayedRunnablesTmp.get(i2));
        }
        this.delayedRunnablesTmp.clear();
    }

    public boolean isAnimationInProgress() {
        return this.animationInProgressCount > 0;
    }

    public int getCurrentHeavyOperationFlags() {
        return this.currentHeavyOperationFlags;
    }

    public ArrayList<NotificationCenterDelegate> getObservers(int i) {
        return this.observers.get(i);
    }

    public void postNotificationNameOnUIThread(final int i, final Object... objArr) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.this.lambda$postNotificationNameOnUIThread$1(i, objArr);
            }
        });
    }

    /* renamed from: postNotificationName */
    public void lambda$postNotificationNameOnUIThread$1(int i, Object... objArr) {
        boolean z = i == startAllHeavyOperations || i == stopAllHeavyOperations || i == didReplacedPhotoInMemCache || i == closeChats || i == invalidateMotionBackground;
        ArrayList arrayList = null;
        if (!z && this.allowedNotifications.size() > 0) {
            int size = this.allowedNotifications.size();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i2 = 0;
            for (int i3 = 0; i3 < this.allowedNotifications.size(); i3++) {
                AllowedNotifications valueAt = this.allowedNotifications.valueAt(i3);
                if (elapsedRealtime - valueAt.time > EXPIRE_NOTIFICATIONS_TIME) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(Integer.valueOf(this.allowedNotifications.keyAt(i3)));
                }
                int[] iArr = valueAt.allowedIds;
                if (iArr == null) {
                    break;
                }
                int i4 = 0;
                while (true) {
                    if (i4 >= iArr.length) {
                        break;
                    } else if (iArr[i4] == i) {
                        i2++;
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            z = size == i2;
        }
        if (i == startAllHeavyOperations) {
            this.currentHeavyOperationFlags = (~((Integer) objArr[0]).intValue()) & this.currentHeavyOperationFlags;
        } else if (i == stopAllHeavyOperations) {
            this.currentHeavyOperationFlags = ((Integer) objArr[0]).intValue() | this.currentHeavyOperationFlags;
        }
        if (shouldDebounce(i, objArr) && BuildVars.DEBUG_VERSION) {
            postNotificationDebounced(i, objArr);
        } else {
            postNotificationNameInternal(i, z, objArr);
        }
        if (arrayList != null) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                onAnimationFinish(((Integer) arrayList.get(i5)).intValue());
            }
        }
    }

    private void postNotificationDebounced(final int i, final Object[] objArr) {
        final int hashCode = (Arrays.hashCode(objArr) << 16) + i;
        if (this.alreadyPostedRannubles.indexOfKey(hashCode) >= 0) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.this.lambda$postNotificationDebounced$2(i, objArr, hashCode);
            }
        };
        this.alreadyPostedRannubles.put(hashCode, runnable);
        AndroidUtilities.runOnUIThread(runnable, 250L);
    }

    public /* synthetic */ void lambda$postNotificationDebounced$2(int i, Object[] objArr, int i2) {
        postNotificationNameInternal(i, false, objArr);
        this.alreadyPostedRannubles.remove(i2);
    }

    private boolean shouldDebounce(int i, Object[] objArr) {
        return i == updateInterfaces;
    }

    public void postNotificationNameInternal(int i, boolean z, Object... objArr) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("postNotificationName allowed only from MAIN thread");
        }
        if (!z && isAnimationInProgress()) {
            this.delayedPosts.add(new DelayedPost(i, objArr));
            return;
        }
        if (!this.postponeCallbackList.isEmpty()) {
            for (int i2 = 0; i2 < this.postponeCallbackList.size(); i2++) {
                if (this.postponeCallbackList.get(i2).needPostpone(i, this.currentAccount, objArr)) {
                    this.delayedPosts.add(new DelayedPost(i, objArr));
                    return;
                }
            }
        }
        this.broadcasting++;
        ArrayList<NotificationCenterDelegate> arrayList = this.observers.get(i);
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                arrayList.get(i3).didReceivedNotification(i, this.currentAccount, objArr);
            }
        }
        int i4 = this.broadcasting - 1;
        this.broadcasting = i4;
        if (i4 == 0) {
            if (this.removeAfterBroadcast.size() != 0) {
                for (int i5 = 0; i5 < this.removeAfterBroadcast.size(); i5++) {
                    int keyAt = this.removeAfterBroadcast.keyAt(i5);
                    ArrayList<NotificationCenterDelegate> arrayList2 = this.removeAfterBroadcast.get(keyAt);
                    for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                        removeObserver(arrayList2.get(i6), keyAt);
                    }
                }
                this.removeAfterBroadcast.clear();
            }
            if (this.addAfterBroadcast.size() != 0) {
                for (int i7 = 0; i7 < this.addAfterBroadcast.size(); i7++) {
                    int keyAt2 = this.addAfterBroadcast.keyAt(i7);
                    ArrayList<NotificationCenterDelegate> arrayList3 = this.addAfterBroadcast.get(keyAt2);
                    for (int i8 = 0; i8 < arrayList3.size(); i8++) {
                        addObserver(arrayList3.get(i8), keyAt2);
                    }
                }
                this.addAfterBroadcast.clear();
            }
        }
    }

    public void addObserver(NotificationCenterDelegate notificationCenterDelegate, int i) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("addObserver allowed only from MAIN thread");
        }
        if (this.broadcasting != 0) {
            ArrayList<NotificationCenterDelegate> arrayList = this.addAfterBroadcast.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.addAfterBroadcast.put(i, arrayList);
            }
            arrayList.add(notificationCenterDelegate);
            return;
        }
        ArrayList<NotificationCenterDelegate> arrayList2 = this.observers.get(i);
        if (arrayList2 == null) {
            SparseArray<ArrayList<NotificationCenterDelegate>> sparseArray = this.observers;
            ArrayList<NotificationCenterDelegate> createArrayForId = createArrayForId(i);
            sparseArray.put(i, createArrayForId);
            arrayList2 = createArrayForId;
        }
        if (arrayList2.contains(notificationCenterDelegate)) {
            return;
        }
        arrayList2.add(notificationCenterDelegate);
        if (!BuildVars.DEBUG_VERSION || alreadyLogged || arrayList2.size() <= 1000) {
            return;
        }
        alreadyLogged = true;
        FileLog.m101e((Throwable) new RuntimeException("Total observers more than 1000, need check for memory leak. " + i), true);
    }

    private ArrayList<NotificationCenterDelegate> createArrayForId(int i) {
        if (i == didReplacedPhotoInMemCache || i == stopAllHeavyOperations || i == startAllHeavyOperations) {
            return new UniqArrayList();
        }
        return new ArrayList<>();
    }

    public void removeObserver(NotificationCenterDelegate notificationCenterDelegate, int i) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("removeObserver allowed only from MAIN thread");
        }
        if (this.broadcasting != 0) {
            ArrayList<NotificationCenterDelegate> arrayList = this.removeAfterBroadcast.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.removeAfterBroadcast.put(i, arrayList);
            }
            arrayList.add(notificationCenterDelegate);
            return;
        }
        ArrayList<NotificationCenterDelegate> arrayList2 = this.observers.get(i);
        if (arrayList2 != null) {
            arrayList2.remove(notificationCenterDelegate);
        }
    }

    public boolean hasObservers(int i) {
        return this.observers.indexOfKey(i) >= 0;
    }

    public void addPostponeNotificationsCallback(PostponeNotificationCallback postponeNotificationCallback) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("PostponeNotificationsCallback allowed only from MAIN thread");
        }
        if (this.postponeCallbackList.contains(postponeNotificationCallback)) {
            return;
        }
        this.postponeCallbackList.add(postponeNotificationCallback);
    }

    public void removePostponeNotificationsCallback(PostponeNotificationCallback postponeNotificationCallback) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("removePostponeNotificationsCallback allowed only from MAIN thread");
        }
        if (this.postponeCallbackList.remove(postponeNotificationCallback)) {
            runDelayedNotifications();
        }
    }

    public void doOnIdle(Runnable runnable) {
        if (isAnimationInProgress()) {
            this.delayedRunnables.add(runnable);
        } else {
            runnable.run();
        }
    }

    public void removeDelayed(Runnable runnable) {
        this.delayedRunnables.remove(runnable);
    }

    /* loaded from: classes4.dex */
    public static class AllowedNotifications {
        int[] allowedIds;
        final long time;

        private AllowedNotifications() {
            this.time = SystemClock.elapsedRealtime();
        }
    }

    public Runnable listen(final View view, final int i, final Utilities.Callback<Object[]> callback) {
        if (view == null || callback == null) {
            return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.lambda$listen$3();
                }
            };
        }
        final NotificationCenterDelegate notificationCenterDelegate = new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                NotificationCenter.lambda$listen$4(i, callback, i2, i3, objArr);
            }
        };
        final View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.messenger.NotificationCenter.1
            {
                NotificationCenter.this = this;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                NotificationCenter.getGlobalInstance().addObserver(notificationCenterDelegate, i);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                NotificationCenter.getGlobalInstance().removeObserver(notificationCenterDelegate, i);
            }
        };
        view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.lambda$listen$5(view, onAttachStateChangeListener, notificationCenterDelegate, i);
            }
        };
    }

    public static /* synthetic */ void lambda$listen$4(int i, Utilities.Callback callback, int i2, int i3, Object[] objArr) {
        if (i2 == i) {
            callback.run(objArr);
        }
    }

    public static /* synthetic */ void lambda$listen$5(View view, View.OnAttachStateChangeListener onAttachStateChangeListener, NotificationCenterDelegate notificationCenterDelegate, int i) {
        view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        getGlobalInstance().removeObserver(notificationCenterDelegate, i);
    }

    public static void listenEmojiLoading(final View view) {
        getGlobalInstance().listen(view, emojiLoaded, new Utilities.Callback() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                Object[] objArr = (Object[]) obj;
                view.invalidate();
            }
        });
    }

    public void listenOnce(final int i, final Runnable runnable) {
        final NotificationCenterDelegate[] notificationCenterDelegateArr = {new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                NotificationCenter.this.lambda$listenOnce$7(i, notificationCenterDelegateArr, runnable, i2, i3, objArr);
            }
        }};
        addObserver(notificationCenterDelegateArr[0], i);
    }

    public /* synthetic */ void lambda$listenOnce$7(int i, NotificationCenterDelegate[] notificationCenterDelegateArr, Runnable runnable, int i2, int i3, Object[] objArr) {
        if (i2 != i || notificationCenterDelegateArr[0] == null) {
            return;
        }
        if (runnable != null) {
            runnable.run();
        }
        removeObserver(notificationCenterDelegateArr[0], i);
        notificationCenterDelegateArr[0] = null;
    }

    /* loaded from: classes4.dex */
    public class UniqArrayList<T> extends ArrayList<T> {
        HashSet<T> set;

        private UniqArrayList() {
            NotificationCenter.this = r1;
            this.set = new HashSet<>();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(T t) {
            if (this.set.add(t)) {
                return super.add(t);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public void add(int i, T t) {
            if (this.set.add(t)) {
                super.add(i, t);
            }
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection<? extends T> collection) {
            boolean z = false;
            for (T t : collection) {
                if (add(t)) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection<? extends T> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public T remove(int i) {
            T t = (T) super.remove(i);
            if (t != null) {
                this.set.remove(t);
            }
            return t;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object obj) {
            if (this.set.remove(obj)) {
                return super.remove(obj);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.set.contains(obj);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.set.clear();
            super.clear();
        }
    }
}
