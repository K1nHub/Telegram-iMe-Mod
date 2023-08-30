package org.telegram.messenger;

import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
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
    public static final int botAnswerChosen;
    public static final int botButtonClicked = 1;
    public static final int botContextMenu;
    public static final int botInfoDidLoad;
    public static final int botItemClicked;
    public static final int botKeyboardDidLoad;
    public static final int botLanguageChanged;
    public static final int botSettingsChanged;
    public static final int botsListChanged;
    public static final int cameraInitied;
    public static final int changeRepliesCounter;
    public static final int channelRightsUpdated;
    public static final int chatAvailableReactionsUpdated;
    public static final int chatDidCreated;
    public static final int chatDidFailCreate;
    public static final int chatInfoCantLoad;
    public static final int chatInfoDidLoad;
    public static final int chatOnlineCountDidLoad;
    public static final int chatSearchResultsAvailable;
    public static final int chatSearchResultsLoading;
    public static int chatSwithcedToForum = 0;
    public static int chatlistFolderUpdate = 0;
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
    public static final int didUpdateConnectionState;
    public static final int didUpdateExtendedMedia;
    public static int didUpdateGlobalAutoDeleteTimer = 0;
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
    public static final int needAddArchivedStickers;
    public static final int needCheckSystemBarColors;
    public static final int needDeleteDialog;
    public static final int needReloadRecentDialogsSearch;
    public static final int needSetDayNightTheme;
    public static final int needShareTheme;
    public static final int needShowAlert;
    public static final int needShowPlayServicesAlert;
    public static final int needUpdateMainActionBarMenu;
    public static final int neuroBotEnableChanged;
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
    public static int onDatabaseReset = 0;
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
    public static final int recordProgressChanged;
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
    public static final int stopEncodingService;
    public static final int stopSpoilers;
    public static final int storiesBlocklistUpdate;
    public static int storiesDraftsUpdated = 0;
    public static final int storiesEnabledUpdate;
    public static final int storiesLimitUpdate;
    public static int storiesListUpdated = 0;
    public static int storiesUpdated = 0;
    public static final int suggestedFiltersLoaded;
    public static final int suggestedLangpack;
    public static final int templatesDidChanged;
    public static final int themeAccentListUpdated;
    public static final int themeListUpdated;
    public static final int themeUploadError;
    public static final int themeUploadedToServer;
    public static final int threadMessagesRead;
    public static final int topicsDidLoad;
    public static int topicsDidLoaded = 0;
    public static final int topicsSettingsChanged;
    private static int totalEvents = 1;
    public static final int twoStepPasswordChanged;
    public static final int updateBotMenuButton;
    public static final int updateDefaultSendAsPeer;
    public static final int updateInterfaces;
    public static final int updateMentionsCount;
    public static final int updateMessageMedia;
    public static final int updateSearchSettings;
    public static final int updateWalletDialogVisibility;
    public static final int uploadStoryEnd;
    public static final int uploadStoryProgress;
    public static final int userEmojiStatusUpdated;
    public static final int userInfoDidLoad;
    public static final int videoLoadingStateChanged;
    public static final int voiceTranscriptionUpdate;
    public static final int voipServiceCreated;
    public static final int walletPendingTransactionsChanged;
    public static final int walletSyncProgressChanged;
    public static int wallpaperSettedToUser;
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

    static {
        int i = 1 + 1;
        totalEvents = i;
        int i2 = i + 1;
        totalEvents = i2;
        botItemClicked = i;
        int i3 = i2 + 1;
        totalEvents = i3;
        botAnswerChosen = i2;
        int i4 = i3 + 1;
        totalEvents = i4;
        botContextMenu = i3;
        int i5 = i4 + 1;
        totalEvents = i5;
        botsListChanged = i4;
        int i6 = i5 + 1;
        totalEvents = i6;
        neuroBotEnableChanged = i5;
        int i7 = i6 + 1;
        totalEvents = i7;
        botSettingsChanged = i6;
        int i8 = i7 + 1;
        totalEvents = i8;
        botLanguageChanged = i7;
        int i9 = i8 + 1;
        totalEvents = i9;
        multiPanelSettingsChanged = i8;
        int i10 = i9 + 1;
        totalEvents = i10;
        sendSocialEmotion = i9;
        int i11 = i10 + 1;
        totalEvents = i11;
        topicsDidLoad = i10;
        int i12 = i11 + 1;
        totalEvents = i12;
        recentChatsDidLoad = i11;
        int i13 = i12 + 1;
        totalEvents = i13;
        onContactsActionsClicked = i12;
        int i14 = i13 + 1;
        totalEvents = i14;
        filterTabsAtBottomUpdated = i13;
        int i15 = i14 + 1;
        totalEvents = i15;
        backupDidUpload = i14;
        int i16 = i15 + 1;
        totalEvents = i16;
        needUpdateMainActionBarMenu = i15;
        int i17 = i16 + 1;
        totalEvents = i17;
        gifStickerAvatarPreparingStarted = i16;
        int i18 = i17 + 1;
        totalEvents = i18;
        gifStickerAvatarPrepared = i17;
        int i19 = i18 + 1;
        totalEvents = i19;
        gifStickerAvatarPreparingFailed = i18;
        int i20 = i19 + 1;
        totalEvents = i20;
        topicsSettingsChanged = i19;
        int i21 = i20 + 1;
        totalEvents = i21;
        templatesDidChanged = i20;
        int i22 = i21 + 1;
        totalEvents = i22;
        combineMessagesSettingsDidChanged = i21;
        int i23 = i22 + 1;
        totalEvents = i23;
        playlistDidChanged = i22;
        int i24 = i23 + 1;
        totalEvents = i24;
        playerRepeatOptionsDidChanged = i23;
        int i25 = i24 + 1;
        totalEvents = i25;
        loginTokenDidAccepted = i24;
        int i26 = i25 + 1;
        totalEvents = i26;
        updateWalletDialogVisibility = i25;
        int i27 = i26 + 1;
        totalEvents = i27;
        didReceiveNewMessages = i26;
        int i28 = i27 + 1;
        totalEvents = i28;
        updateInterfaces = i27;
        int i29 = i28 + 1;
        totalEvents = i29;
        dialogsNeedReload = i28;
        int i30 = i29 + 1;
        totalEvents = i30;
        closeChats = i29;
        int i31 = i30 + 1;
        totalEvents = i31;
        messagesDeleted = i30;
        int i32 = i31 + 1;
        totalEvents = i32;
        historyCleared = i31;
        int i33 = i32 + 1;
        totalEvents = i33;
        messagesRead = i32;
        int i34 = i33 + 1;
        totalEvents = i34;
        threadMessagesRead = i33;
        int i35 = i34 + 1;
        totalEvents = i35;
        commentsRead = i34;
        int i36 = i35 + 1;
        totalEvents = i36;
        changeRepliesCounter = i35;
        int i37 = i36 + 1;
        totalEvents = i37;
        messagesDidLoad = i36;
        int i38 = i37 + 1;
        totalEvents = i38;
        didLoadSponsoredMessages = i37;
        int i39 = i38 + 1;
        totalEvents = i39;
        didLoadSendAsPeers = i38;
        int i40 = i39 + 1;
        totalEvents = i40;
        updateDefaultSendAsPeer = i39;
        int i41 = i40 + 1;
        totalEvents = i41;
        messagesDidLoadWithoutProcess = i40;
        int i42 = i41 + 1;
        totalEvents = i42;
        loadingMessagesFailed = i41;
        int i43 = i42 + 1;
        totalEvents = i43;
        messageReceivedByAck = i42;
        int i44 = i43 + 1;
        totalEvents = i44;
        messageReceivedByServer = i43;
        int i45 = i44 + 1;
        totalEvents = i45;
        messageSendError = i44;
        int i46 = i45 + 1;
        totalEvents = i46;
        forceImportContactsStart = i45;
        int i47 = i46 + 1;
        totalEvents = i47;
        contactsDidLoad = i46;
        int i48 = i47 + 1;
        totalEvents = i48;
        contactsImported = i47;
        int i49 = i48 + 1;
        totalEvents = i49;
        hasNewContactsToImport = i48;
        int i50 = i49 + 1;
        totalEvents = i50;
        chatDidCreated = i49;
        int i51 = i50 + 1;
        totalEvents = i51;
        chatDidFailCreate = i50;
        int i52 = i51 + 1;
        totalEvents = i52;
        chatInfoDidLoad = i51;
        int i53 = i52 + 1;
        totalEvents = i53;
        chatInfoCantLoad = i52;
        int i54 = i53 + 1;
        totalEvents = i54;
        mediaDidLoad = i53;
        int i55 = i54 + 1;
        totalEvents = i55;
        mediaCountDidLoad = i54;
        int i56 = i55 + 1;
        totalEvents = i56;
        mediaCountsDidLoad = i55;
        int i57 = i56 + 1;
        totalEvents = i57;
        encryptedChatUpdated = i56;
        int i58 = i57 + 1;
        totalEvents = i58;
        messagesReadEncrypted = i57;
        int i59 = i58 + 1;
        totalEvents = i59;
        encryptedChatCreated = i58;
        int i60 = i59 + 1;
        totalEvents = i60;
        dialogPhotosLoaded = i59;
        int i61 = i60 + 1;
        totalEvents = i61;
        reloadDialogPhotos = i60;
        int i62 = i61 + 1;
        totalEvents = i62;
        folderBecomeEmpty = i61;
        int i63 = i62 + 1;
        totalEvents = i63;
        removeAllMessagesFromDialog = i62;
        int i64 = i63 + 1;
        totalEvents = i64;
        notificationsSettingsUpdated = i63;
        int i65 = i64 + 1;
        totalEvents = i65;
        blockedUsersDidLoad = i64;
        int i66 = i65 + 1;
        totalEvents = i66;
        openedChatChanged = i65;
        int i67 = i66 + 1;
        totalEvents = i67;
        didCreatedNewDeleteTask = i66;
        int i68 = i67 + 1;
        totalEvents = i68;
        mainUserInfoChanged = i67;
        int i69 = i68 + 1;
        totalEvents = i69;
        privacyRulesUpdated = i68;
        int i70 = i69 + 1;
        totalEvents = i70;
        updateMessageMedia = i69;
        int i71 = i70 + 1;
        totalEvents = i71;
        replaceMessagesObjects = i70;
        int i72 = i71 + 1;
        totalEvents = i72;
        didSetPasscode = i71;
        int i73 = i72 + 1;
        totalEvents = i73;
        passcodeDismissed = i72;
        int i74 = i73 + 1;
        totalEvents = i74;
        twoStepPasswordChanged = i73;
        int i75 = i74 + 1;
        totalEvents = i75;
        didSetOrRemoveTwoStepPassword = i74;
        int i76 = i75 + 1;
        totalEvents = i76;
        didRemoveTwoStepPassword = i75;
        int i77 = i76 + 1;
        totalEvents = i77;
        replyMessagesDidLoad = i76;
        int i78 = i77 + 1;
        totalEvents = i78;
        didLoadPinnedMessages = i77;
        int i79 = i78 + 1;
        totalEvents = i79;
        newSessionReceived = i78;
        int i80 = i79 + 1;
        totalEvents = i80;
        didReceivedWebpages = i79;
        int i81 = i80 + 1;
        totalEvents = i81;
        didReceivedWebpagesInUpdates = i80;
        int i82 = i81 + 1;
        totalEvents = i82;
        stickersDidLoad = i81;
        int i83 = i82 + 1;
        totalEvents = i83;
        diceStickersDidLoad = i82;
        int i84 = i83 + 1;
        totalEvents = i84;
        featuredStickersDidLoad = i83;
        int i85 = i84 + 1;
        totalEvents = i85;
        featuredEmojiDidLoad = i84;
        int i86 = i85 + 1;
        totalEvents = i86;
        groupStickersDidLoad = i85;
        int i87 = i86 + 1;
        totalEvents = i87;
        messagesReadContent = i86;
        int i88 = i87 + 1;
        totalEvents = i88;
        botInfoDidLoad = i87;
        int i89 = i88 + 1;
        totalEvents = i89;
        userInfoDidLoad = i88;
        int i90 = i89 + 1;
        totalEvents = i90;
        pinnedInfoDidLoad = i89;
        int i91 = i90 + 1;
        totalEvents = i91;
        botKeyboardDidLoad = i90;
        int i92 = i91 + 1;
        totalEvents = i92;
        chatSearchResultsAvailable = i91;
        int i93 = i92 + 1;
        totalEvents = i93;
        chatSearchResultsLoading = i92;
        int i94 = i93 + 1;
        totalEvents = i94;
        musicDidLoad = i93;
        int i95 = i94 + 1;
        totalEvents = i95;
        moreMusicDidLoad = i94;
        int i96 = i95 + 1;
        totalEvents = i96;
        needShowAlert = i95;
        int i97 = i96 + 1;
        totalEvents = i97;
        needShowPlayServicesAlert = i96;
        int i98 = i97 + 1;
        totalEvents = i98;
        didUpdateMessagesViews = i97;
        int i99 = i98 + 1;
        totalEvents = i99;
        needReloadRecentDialogsSearch = i98;
        int i100 = i99 + 1;
        totalEvents = i100;
        peerSettingsDidLoad = i99;
        int i101 = i100 + 1;
        totalEvents = i101;
        wasUnableToFindCurrentLocation = i100;
        int i102 = i101 + 1;
        totalEvents = i102;
        reloadHints = i101;
        int i103 = i102 + 1;
        totalEvents = i103;
        reloadInlineHints = i102;
        int i104 = i103 + 1;
        totalEvents = i104;
        newDraftReceived = i103;
        int i105 = i104 + 1;
        totalEvents = i105;
        recentDocumentsDidLoad = i104;
        int i106 = i105 + 1;
        totalEvents = i106;
        needAddArchivedStickers = i105;
        int i107 = i106 + 1;
        totalEvents = i107;
        archivedStickersCountDidLoad = i106;
        int i108 = i107 + 1;
        totalEvents = i108;
        paymentFinished = i107;
        int i109 = i108 + 1;
        totalEvents = i109;
        channelRightsUpdated = i108;
        int i110 = i109 + 1;
        totalEvents = i110;
        openArticle = i109;
        int i111 = i110 + 1;
        totalEvents = i111;
        articleClosed = i110;
        int i112 = i111 + 1;
        totalEvents = i112;
        updateMentionsCount = i111;
        int i113 = i112 + 1;
        totalEvents = i113;
        didUpdatePollResults = i112;
        int i114 = i113 + 1;
        totalEvents = i114;
        chatOnlineCountDidLoad = i113;
        int i115 = i114 + 1;
        totalEvents = i115;
        videoLoadingStateChanged = i114;
        int i116 = i115 + 1;
        totalEvents = i116;
        newPeopleNearbyAvailable = i115;
        int i117 = i116 + 1;
        totalEvents = i117;
        stopAllHeavyOperations = i116;
        int i118 = i117 + 1;
        totalEvents = i118;
        startAllHeavyOperations = i117;
        int i119 = i118 + 1;
        totalEvents = i119;
        stopSpoilers = i118;
        int i120 = i119 + 1;
        totalEvents = i120;
        startSpoilers = i119;
        int i121 = i120 + 1;
        totalEvents = i121;
        sendingMessagesChanged = i120;
        int i122 = i121 + 1;
        totalEvents = i122;
        didUpdateReactions = i121;
        int i123 = i122 + 1;
        totalEvents = i123;
        didUpdateExtendedMedia = i122;
        int i124 = i123 + 1;
        totalEvents = i124;
        didVerifyMessagesStickers = i123;
        int i125 = i124 + 1;
        totalEvents = i125;
        scheduledMessagesUpdated = i124;
        int i126 = i125 + 1;
        totalEvents = i126;
        newSuggestionsAvailable = i125;
        int i127 = i126 + 1;
        totalEvents = i127;
        didLoadChatInviter = i126;
        int i128 = i127 + 1;
        totalEvents = i128;
        didLoadChatAdmins = i127;
        int i129 = i128 + 1;
        totalEvents = i129;
        historyImportProgressChanged = i128;
        int i130 = i129 + 1;
        totalEvents = i130;
        stickersImportProgressChanged = i129;
        int i131 = i130 + 1;
        totalEvents = i131;
        stickersImportComplete = i130;
        int i132 = i131 + 1;
        totalEvents = i132;
        dialogDeleted = i131;
        int i133 = i132 + 1;
        totalEvents = i133;
        webViewResultSent = i132;
        int i134 = i133 + 1;
        totalEvents = i134;
        voiceTranscriptionUpdate = i133;
        int i135 = i134 + 1;
        totalEvents = i135;
        animatedEmojiDocumentLoaded = i134;
        int i136 = i135 + 1;
        totalEvents = i136;
        recentEmojiStatusesUpdate = i135;
        int i137 = i136 + 1;
        totalEvents = i137;
        updateSearchSettings = i136;
        int i138 = i137 + 1;
        totalEvents = i138;
        messageTranslated = i137;
        int i139 = i138 + 1;
        totalEvents = i139;
        messageTranslating = i138;
        int i140 = i139 + 1;
        totalEvents = i140;
        dialogIsTranslatable = i139;
        int i141 = i140 + 1;
        totalEvents = i141;
        dialogTranslate = i140;
        int i142 = i141 + 1;
        totalEvents = i142;
        didGenerateFingerprintKeyPair = i141;
        int i143 = i142 + 1;
        totalEvents = i143;
        walletPendingTransactionsChanged = i142;
        int i144 = i143 + 1;
        totalEvents = i144;
        walletSyncProgressChanged = i143;
        int i145 = i144 + 1;
        totalEvents = i145;
        httpFileDidLoad = i144;
        int i146 = i145 + 1;
        totalEvents = i146;
        httpFileDidFailedLoad = i145;
        int i147 = i146 + 1;
        totalEvents = i147;
        didUpdateConnectionState = i146;
        int i148 = i147 + 1;
        totalEvents = i148;
        fileUploaded = i147;
        int i149 = i148 + 1;
        totalEvents = i149;
        fileUploadFailed = i148;
        int i150 = i149 + 1;
        totalEvents = i150;
        fileUploadProgressChanged = i149;
        int i151 = i150 + 1;
        totalEvents = i151;
        fileLoadProgressChanged = i150;
        int i152 = i151 + 1;
        totalEvents = i152;
        fileLoaded = i151;
        int i153 = i152 + 1;
        totalEvents = i153;
        fileLoadFailed = i152;
        int i154 = i153 + 1;
        totalEvents = i154;
        filePreparingStarted = i153;
        int i155 = i154 + 1;
        totalEvents = i155;
        fileNewChunkAvailable = i154;
        int i156 = i155 + 1;
        totalEvents = i156;
        filePreparingFailed = i155;
        int i157 = i156 + 1;
        totalEvents = i157;
        dialogsUnreadCounterChanged = i156;
        int i158 = i157 + 1;
        totalEvents = i158;
        messagePlayingProgressDidChanged = i157;
        int i159 = i158 + 1;
        totalEvents = i159;
        messagePlayingDidReset = i158;
        int i160 = i159 + 1;
        totalEvents = i160;
        messagePlayingPlayStateChanged = i159;
        int i161 = i160 + 1;
        totalEvents = i161;
        messagePlayingDidStart = i160;
        int i162 = i161 + 1;
        totalEvents = i162;
        messagePlayingDidSeek = i161;
        int i163 = i162 + 1;
        totalEvents = i163;
        messagePlayingGoingToStop = i162;
        int i164 = i163 + 1;
        totalEvents = i164;
        recordProgressChanged = i163;
        int i165 = i164 + 1;
        totalEvents = i165;
        recordStarted = i164;
        int i166 = i165 + 1;
        totalEvents = i166;
        recordStartError = i165;
        int i167 = i166 + 1;
        totalEvents = i167;
        recordStopped = i166;
        int i168 = i167 + 1;
        totalEvents = i168;
        screenshotTook = i167;
        int i169 = i168 + 1;
        totalEvents = i169;
        albumsDidLoad = i168;
        int i170 = i169 + 1;
        totalEvents = i170;
        audioDidSent = i169;
        int i171 = i170 + 1;
        totalEvents = i171;
        audioRecordTooShort = i170;
        int i172 = i171 + 1;
        totalEvents = i172;
        audioRouteChanged = i171;
        int i173 = i172 + 1;
        totalEvents = i173;
        didStartedCall = i172;
        int i174 = i173 + 1;
        totalEvents = i174;
        groupCallUpdated = i173;
        int i175 = i174 + 1;
        totalEvents = i175;
        groupCallSpeakingUsersUpdated = i174;
        int i176 = i175 + 1;
        totalEvents = i176;
        groupCallScreencastStateChanged = i175;
        int i177 = i176 + 1;
        totalEvents = i177;
        activeGroupCallsUpdated = i176;
        int i178 = i177 + 1;
        totalEvents = i178;
        applyGroupCallVisibleParticipants = i177;
        int i179 = i178 + 1;
        totalEvents = i179;
        groupCallTypingsUpdated = i178;
        int i180 = i179 + 1;
        totalEvents = i180;
        didEndCall = i179;
        int i181 = i180 + 1;
        totalEvents = i181;
        closeInCallActivity = i180;
        int i182 = i181 + 1;
        totalEvents = i182;
        groupCallVisibilityChanged = i181;
        int i183 = i182 + 1;
        totalEvents = i183;
        appDidLogout = i182;
        int i184 = i183 + 1;
        totalEvents = i184;
        configLoaded = i183;
        int i185 = i184 + 1;
        totalEvents = i185;
        needDeleteDialog = i184;
        int i186 = i185 + 1;
        totalEvents = i186;
        newEmojiSuggestionsAvailable = i185;
        int i187 = i186 + 1;
        totalEvents = i187;
        themeUploadedToServer = i186;
        int i188 = i187 + 1;
        totalEvents = i188;
        themeUploadError = i187;
        int i189 = i188 + 1;
        totalEvents = i189;
        dialogFiltersUpdated = i188;
        int i190 = i189 + 1;
        totalEvents = i190;
        filterSettingsUpdated = i189;
        int i191 = i190 + 1;
        totalEvents = i191;
        suggestedFiltersLoaded = i190;
        int i192 = i191 + 1;
        totalEvents = i192;
        updateBotMenuButton = i191;
        int i193 = i192 + 1;
        totalEvents = i193;
        didUpdatePremiumGiftStickers = i192;
        int i194 = i193 + 1;
        totalEvents = i194;
        didUpdatePremiumGiftFieldIcon = i193;
        int i195 = i194 + 1;
        totalEvents = i195;
        storiesEnabledUpdate = i194;
        int i196 = i195 + 1;
        totalEvents = i196;
        storiesBlocklistUpdate = i195;
        int i197 = i196 + 1;
        totalEvents = i197;
        storiesLimitUpdate = i196;
        int i198 = i197 + 1;
        totalEvents = i198;
        pushMessagesUpdated = i197;
        int i199 = i198 + 1;
        totalEvents = i199;
        stopEncodingService = i198;
        int i200 = i199 + 1;
        totalEvents = i200;
        wallpapersDidLoad = i199;
        int i201 = i200 + 1;
        totalEvents = i201;
        wallpapersNeedReload = i200;
        int i202 = i201 + 1;
        totalEvents = i202;
        didReceiveSmsCode = i201;
        int i203 = i202 + 1;
        totalEvents = i203;
        didReceiveCall = i202;
        int i204 = i203 + 1;
        totalEvents = i204;
        emojiLoaded = i203;
        int i205 = i204 + 1;
        totalEvents = i205;
        invalidateMotionBackground = i204;
        int i206 = i205 + 1;
        totalEvents = i206;
        closeOtherAppActivities = i205;
        int i207 = i206 + 1;
        totalEvents = i207;
        cameraInitied = i206;
        int i208 = i207 + 1;
        totalEvents = i208;
        didReplacedPhotoInMemCache = i207;
        int i209 = i208 + 1;
        totalEvents = i209;
        didSetNewTheme = i208;
        int i210 = i209 + 1;
        totalEvents = i210;
        themeListUpdated = i209;
        int i211 = i210 + 1;
        totalEvents = i211;
        didApplyNewTheme = i210;
        int i212 = i211 + 1;
        totalEvents = i212;
        themeAccentListUpdated = i211;
        int i213 = i212 + 1;
        totalEvents = i213;
        needCheckSystemBarColors = i212;
        int i214 = i213 + 1;
        totalEvents = i214;
        needShareTheme = i213;
        int i215 = i214 + 1;
        totalEvents = i215;
        needSetDayNightTheme = i214;
        int i216 = i215 + 1;
        totalEvents = i216;
        goingToPreviewTheme = i215;
        int i217 = i216 + 1;
        totalEvents = i217;
        locationPermissionGranted = i216;
        int i218 = i217 + 1;
        totalEvents = i218;
        locationPermissionDenied = i217;
        int i219 = i218 + 1;
        totalEvents = i219;
        reloadInterface = i218;
        int i220 = i219 + 1;
        totalEvents = i220;
        suggestedLangpack = i219;
        int i221 = i220 + 1;
        totalEvents = i221;
        didSetNewWallpapper = i220;
        int i222 = i221 + 1;
        totalEvents = i222;
        proxySettingsChanged = i221;
        int i223 = i222 + 1;
        totalEvents = i223;
        proxyCheckDone = i222;
        int i224 = i223 + 1;
        totalEvents = i224;
        proxyChangedByRotation = i223;
        int i225 = i224 + 1;
        totalEvents = i225;
        liveLocationsChanged = i224;
        int i226 = i225 + 1;
        totalEvents = i226;
        newLocationAvailable = i225;
        int i227 = i226 + 1;
        totalEvents = i227;
        liveLocationsCacheChanged = i226;
        int i228 = i227 + 1;
        totalEvents = i228;
        notificationsCountUpdated = i227;
        int i229 = i228 + 1;
        totalEvents = i229;
        playerDidStartPlaying = i228;
        int i230 = i229 + 1;
        totalEvents = i230;
        closeSearchByActiveAction = i229;
        int i231 = i230 + 1;
        totalEvents = i231;
        messagePlayingSpeedChanged = i230;
        int i232 = i231 + 1;
        totalEvents = i232;
        screenStateChanged = i231;
        int i233 = i232 + 1;
        totalEvents = i233;
        didClearDatabase = i232;
        int i234 = i233 + 1;
        totalEvents = i234;
        voipServiceCreated = i233;
        int i235 = i234 + 1;
        totalEvents = i235;
        webRtcMicAmplitudeEvent = i234;
        int i236 = i235 + 1;
        totalEvents = i236;
        webRtcSpeakerAmplitudeEvent = i235;
        int i237 = i236 + 1;
        totalEvents = i237;
        showBulletin = i236;
        int i238 = i237 + 1;
        totalEvents = i238;
        appUpdateAvailable = i237;
        int i239 = i238 + 1;
        totalEvents = i239;
        onDatabaseMigration = i238;
        int i240 = i239 + 1;
        totalEvents = i240;
        onEmojiInteractionsReceived = i239;
        int i241 = i240 + 1;
        totalEvents = i241;
        emojiPreviewThemesChanged = i240;
        int i242 = i241 + 1;
        totalEvents = i242;
        reactionsDidLoad = i241;
        int i243 = i242 + 1;
        totalEvents = i243;
        attachMenuBotsDidLoad = i242;
        int i244 = i243 + 1;
        totalEvents = i244;
        chatAvailableReactionsUpdated = i243;
        int i245 = i244 + 1;
        totalEvents = i245;
        dialogsUnreadReactionsCounterChanged = i244;
        int i246 = i245 + 1;
        totalEvents = i246;
        onDatabaseOpened = i245;
        int i247 = i246 + 1;
        totalEvents = i247;
        onDownloadingFilesChanged = i246;
        int i248 = i247 + 1;
        totalEvents = i248;
        onActivityResultReceived = i247;
        int i249 = i248 + 1;
        totalEvents = i249;
        onRequestPermissionResultReceived = i248;
        int i250 = i249 + 1;
        totalEvents = i250;
        onUserRingtonesUpdated = i249;
        int i251 = i250 + 1;
        totalEvents = i251;
        currentUserPremiumStatusChanged = i250;
        int i252 = i251 + 1;
        totalEvents = i252;
        premiumPromoUpdated = i251;
        int i253 = i252 + 1;
        totalEvents = i253;
        premiumStatusChangedGlobal = i252;
        int i254 = i253 + 1;
        totalEvents = i254;
        currentUserShowLimitReachedDialog = i253;
        int i255 = i254 + 1;
        totalEvents = i255;
        billingProductDetailsUpdated = i254;
        int i256 = i255 + 1;
        totalEvents = i256;
        billingConfirmPurchaseError = i255;
        int i257 = i256 + 1;
        totalEvents = i257;
        premiumStickersPreviewLoaded = i256;
        int i258 = i257 + 1;
        totalEvents = i258;
        userEmojiStatusUpdated = i257;
        int i259 = i258 + 1;
        totalEvents = i259;
        requestPermissions = i258;
        int i260 = i259 + 1;
        totalEvents = i260;
        permissionsGranted = i259;
        int i261 = i260 + 1;
        totalEvents = i261;
        topicsDidLoaded = i260;
        int i262 = i261 + 1;
        totalEvents = i262;
        chatSwithcedToForum = i261;
        int i263 = i262 + 1;
        totalEvents = i263;
        didUpdateGlobalAutoDeleteTimer = i262;
        int i264 = i263 + 1;
        totalEvents = i264;
        onDatabaseReset = i263;
        int i265 = i264 + 1;
        totalEvents = i265;
        wallpaperSettedToUser = i264;
        int i266 = i265 + 1;
        totalEvents = i266;
        storiesUpdated = i265;
        int i267 = i266 + 1;
        totalEvents = i267;
        storiesListUpdated = i266;
        int i268 = i267 + 1;
        totalEvents = i268;
        storiesDraftsUpdated = i267;
        int i269 = i268 + 1;
        totalEvents = i269;
        chatlistFolderUpdate = i268;
        int i270 = i269 + 1;
        totalEvents = i270;
        uploadStoryProgress = i269;
        int i271 = i270 + 1;
        totalEvents = i271;
        uploadStoryEnd = i270;
        int i272 = i271 + 1;
        totalEvents = i272;
        customTypefacesLoaded = i271;
        int i273 = i272 + 1;
        totalEvents = i273;
        stealthModeChanged = i272;
        totalEvents = i273 + 1;
        onReceivedChannelDifference = i273;
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
        private int f1470id;

        private DelayedPost(int i, Object[] objArr) {
            this.f1470id = i;
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
            NotificationCenter$$ExternalSyntheticLambda1 notificationCenter$$ExternalSyntheticLambda1 = new NotificationCenter$$ExternalSyntheticLambda1(this);
            this.checkForExpiredNotifications = notificationCenter$$ExternalSyntheticLambda1;
            AndroidUtilities.runOnUIThread(notificationCenter$$ExternalSyntheticLambda1, EXPIRE_NOTIFICATIONS_TIME);
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.this.lambda$checkForExpiredNotifications$0();
                }
            }, Math.max(17L, EXPIRE_NOTIFICATIONS_TIME - (elapsedRealtime - j)));
        }
    }

    public /* synthetic */ void lambda$checkForExpiredNotifications$0() {
        this.checkForExpiredNotifications = new NotificationCenter$$ExternalSyntheticLambda1(this);
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
                postNotificationNameInternal(delayedPost.f1470id, true, delayedPost.args);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda2
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
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda3
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
        FileLog.m66e((Throwable) new RuntimeException("Total observers more than 1000, need check for memory leak. " + i), true);
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

    public static void listenEmojiLoading(final View view) {
        if (view == null) {
            return;
        }
        final NotificationCenterDelegate notificationCenterDelegate = new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                NotificationCenter.lambda$listenEmojiLoading$3(view, i, i2, objArr);
            }
        };
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.messenger.NotificationCenter.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                NotificationCenter.getGlobalInstance().addObserver(notificationCenterDelegate, NotificationCenter.emojiLoaded);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                NotificationCenter.getGlobalInstance().removeObserver(notificationCenterDelegate, NotificationCenter.emojiLoaded);
            }
        });
    }

    public static /* synthetic */ void lambda$listenEmojiLoading$3(View view, int i, int i2, Object[] objArr) {
        if (i == emojiLoaded && view != null && view.isAttachedToWindow()) {
            view.invalidate();
        }
    }

    public void listenOnce(final int i, final Runnable runnable) {
        final NotificationCenterDelegate[] notificationCenterDelegateArr = {new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                NotificationCenter.this.lambda$listenOnce$4(i, notificationCenterDelegateArr, runnable, i2, i3, objArr);
            }
        }};
        addObserver(notificationCenterDelegateArr[0], i);
    }

    public /* synthetic */ void lambda$listenOnce$4(int i, NotificationCenterDelegate[] notificationCenterDelegateArr, Runnable runnable, int i2, int i3, Object[] objArr) {
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
