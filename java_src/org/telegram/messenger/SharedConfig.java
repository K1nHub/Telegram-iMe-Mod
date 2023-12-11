package org.telegram.messenger;

import android.app.ActivityManager;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import androidx.core.content.p009pm.ShortcutManagerCompat;
import com.google.android.exoplayer2.C0485C;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.enums.DrawerHolidayIconType;
import com.iMe.fork.enums.ExtendedAvatarPreviewerItem;
import com.iMe.fork.enums.FilterTabNotificationMode;
import com.iMe.fork.enums.FilterTabWidthMode;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.enums.PhotoViewerMenuItem;
import com.iMe.fork.enums.StickersSize;
import com.iMe.fork.enums.TemplatesMode;
import com.iMe.fork.enums.TemplatesSortingType;
import com.iMe.fork.enums.VideoVoiceCamera;
import com.iMe.fork.models.DrawerHeaderSettings;
import com.iMe.p030ui.drawer.DrawerAccountData;
import com.iMe.p030ui.drawer.DrawerItem;
import java.io.File;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONObject;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLRPC$TL_help_appUpdate;
/* loaded from: classes4.dex */
public class SharedConfig {
    private static final int[] LOW_SOC;
    public static final int PASSCODE_TYPE_PASSWORD = 1;
    public static final int PASSCODE_TYPE_PIN = 0;
    public static final int PERFORMANCE_CLASS_AVERAGE = 1;
    public static final int PERFORMANCE_CLASS_HIGH = 2;
    public static final int PERFORMANCE_CLASS_LOW = 0;
    private static final int PROXY_CURRENT_SCHEMA_VERSION = 2;
    private static final int PROXY_SCHEMA_V2 = 2;
    public static final int SAVE_TO_GALLERY_FLAG_CHANNELS = 4;
    public static final int SAVE_TO_GALLERY_FLAG_GROUP = 2;
    public static final int SAVE_TO_GALLERY_FLAG_PEER = 1;
    public static boolean allowBigEmoji = false;
    static Boolean allowPreparingHevcPlayers = null;
    public static boolean allowScreenCapture = false;
    private static Boolean animationsEnabled = null;
    public static boolean appLocked = false;
    public static boolean archiveHidden = false;
    public static int autoLockIn = 0;
    public static int badPasscodeTries = 0;
    public static boolean bigCameraForRound = false;
    public static int bubbleRadius = 0;
    public static boolean chatBubbles = false;
    private static int chatSwipeAction = 0;
    private static boolean configLoaded = false;
    public static ProxyInfo currentProxy = null;
    public static boolean customTabs = false;
    public static int dayNightThemeSwitchHintCount = 0;
    public static int dayNightWallpaperSwitchHint = 0;
    public static boolean debugWebView = false;
    private static int devicePerformanceClass = 0;
    public static boolean directShare = false;
    public static String directShareHash = null;
    public static boolean disableVoiceAudioEffects = false;
    public static int distanceSystemType = 0;
    public static boolean dontAskManageStorage = false;
    public static boolean drawActionBarShadow = false;
    public static boolean drawDialogIcons = false;
    public static DrawerHolidayIconType drawerHolidayIconType = null;
    public static int emojiInteractionsHintCount = 0;
    public static int fastScrollHintCount = 0;
    public static int fontSize = 0;
    public static boolean fontSizeIsDefault = false;
    public static boolean forceDisableTabletMode = false;
    public static boolean forwardingOptionsHintShown = false;
    private static String goodHevcEncoder = null;
    public static boolean hasCameraCache = false;
    public static boolean hasEmailLogin = false;
    private static HashSet<String> hevcEncoderWhitelist = null;
    public static boolean inappCamera = false;
    public static boolean isActionBarAccountSwitchEnabled = false;
    public static boolean isAlbumsIntroShown = false;
    public static boolean isBotHelpTranslateEnabled = false;
    public static boolean isCallsConfirmationEnabled = false;
    public static boolean isChatAttachAlertWalletBotEnabled = false;
    public static boolean isChatSortingEnabledByDefault = false;
    public static boolean isChatThemesEnabled = false;
    public static boolean isCloudAlbumsEnabled = false;
    public static boolean isCombineMessagesEnabled = false;
    public static boolean isDebugThemeSwitchEnabled = false;
    public static boolean isDeleteCloudConfirmationEnabled = false;
    public static boolean isDialogsCompactModeEnabled = false;
    public static boolean isDialogsPremiumHintEnabled = false;
    public static boolean isExtendedAvatarPreviewerByTapEnabled = false;
    public static boolean isExtendedAvatarPreviewerEnabled = false;
    public static boolean isFilesOriginalNameSavingEnabled = false;
    public static boolean isFilesSendingPreviewAndCaptionEnabled = false;
    public static boolean isFilterTabsAtBottomEnabled = false;
    public static boolean isFloatingDebugActive = false;
    public static boolean isForwardingPreviewEditorHintShown = false;
    public static boolean isHideChatKeyboardOnScrollEnabled = false;
    public static boolean isMainActionBarMenuEnabled = false;
    public static boolean isMessageQuickTranslateEnabled = false;
    public static boolean isMultiForwardingOptionsHintShown = false;
    public static boolean isMultiReplyEnabled = false;
    public static boolean isMusicIntroShown = false;
    public static boolean isNewTelegramAuthorizationRulesRead = false;
    public static boolean isOpenForwardingOptionsAutomaticallyEnabled = false;
    public static boolean isPinnedPlayerMinimized = false;
    public static boolean isPinnedPlayerNightThemeEnabled = false;
    public static boolean isPlayerPinned = false;
    public static boolean isProfileInfoHidden = false;
    public static boolean isProxyButtonEnabled = false;
    public static boolean isReactionsEnabled = false;
    public static boolean isReactionsInSendPopupEnabled = false;
    public static boolean isReadAllChatsConfirmationShown = false;
    public static boolean isRememberLastFilterTabEnabled = false;
    public static boolean isReplyColorsEnabled = false;
    public static boolean isSendingGifConfirmationEnabled = false;
    public static boolean isSendingStickerConfirmationEnabled = false;
    public static boolean isShowDrawerHeaderArchiveEnabled = false;
    public static boolean isShowDrawerHeaderAvatarEnabled = false;
    public static boolean isShowDrawerHeaderSubtitleEnabled = false;
    public static boolean isShowDrawerHeaderTitleEnabled = false;
    public static boolean isSortCloudAlbumsByNameEnabled = false;
    public static boolean isSpeakWithoutHoldEnabled = false;
    public static boolean isTranslateInSendPopupEnabled = false;
    public static boolean isVibrationEnabled = false;
    public static boolean isVideoSpeakWithoutHoldEnabled = false;
    public static boolean isWaitingForPasscodeEnter = false;
    public static int ivFontSize = 0;
    public static int keepMedia = 0;
    public static int lastKeepMediaCheckTime = 0;
    private static int lastLocalId = 0;
    public static int lastLogsCheckTime = 0;
    public static int lastPauseTime = 0;
    public static String lastSelectedLanguage = null;
    public static long lastUpdateCheckTime = 0;
    public static String lastUpdateVersion = null;
    public static long lastUptimeMillis = 0;
    private static int legacyDevicePerformanceClass = -1;
    public static LiteMode liteMode = null;
    private static final Object localIdSync;
    public static int lockRecordAudioVideoHint = 0;
    public static int mapPreviewType = 0;
    public static int mediaColumnsCount = 0;
    public static int messageSeenHintCount = 0;
    public static boolean nextMediaTap = false;
    public static boolean noSoundHintShowed = false;
    public static final boolean noStatusBar = true;
    public static boolean noiseSupression;
    private static int overrideDevicePerformanceClass;
    public static String passcodeHash;
    public static long passcodeRetryInMs;
    public static byte[] passcodeSalt;
    public static int passcodeType;
    public static int passportConfigHash;
    private static String passportConfigJson;
    private static HashMap<String, String> passportConfigMap;
    public static boolean pauseMusicOnMedia;
    public static boolean pauseMusicOnRecord;
    public static boolean payByInvoice;
    public static TLRPC$TL_help_appUpdate pendingAppUpdate;
    public static int pendingAppUpdateBuildVersion;
    public static boolean photoViewerBlur;
    public static boolean playOrderReversed;
    public static ArrayList<ProxyInfo> proxyList;
    private static boolean proxyListLoaded;
    public static boolean proxyRotationEnabled;
    public static int proxyRotationTimeout;
    public static byte[] pushAuthKey;
    public static byte[] pushAuthKeyId;
    public static boolean pushStatSent;
    public static String pushString;
    public static long pushStringGetTimeEnd;
    public static long pushStringGetTimeStart;
    public static String pushStringStatus;
    public static int pushType;
    public static boolean raiseToListen;
    public static boolean raiseToSpeak;
    public static boolean readOnlyStorageDirAlertShowed;
    public static boolean recordViaSco;
    public static int repeatMode;
    public static boolean replyingOptionsHintShown;
    public static boolean roundCamera16to9;
    public static boolean saveIncomingPhotos;
    public static boolean saveStreamMedia;
    public static long scheduledHintSeenAt;
    public static int scheduledHintShows;
    public static long scheduledOrNoSoundHintSeenAt;
    public static int scheduledOrNoSoundHintShows;
    public static int searchMessagesAsListHintShows;
    public static boolean searchMessagesAsListUsed;
    public static Set<DialogType> selectedDialogTypesForMessagePopupReactions;
    public static DrawerAccountData selectedDrawerHeaderSubtitle;
    public static DrawerAccountData selectedDrawerHeaderTitle;
    public static Set<DrawerItem> selectedDrawerItems;
    public static List<ExtendedAvatarPreviewerItem> selectedExtendedAvatarPreviewerItems;
    public static FilterTabWidthMode selectedFilterTabWidthMode;
    public static FilterTabNotificationMode selectedFilterTabsNotificationMode;
    public static Set<PhotoViewerMenuItem> selectedPhotoViewerMenuItems;
    public static StickersSize selectedStickersSize;
    public static TemplatesMode selectedTemplatesMode;
    public static TemplatesSortingType selectedTemplatesSortingType;
    public static VideoVoiceCamera selectedVideoVoiceCamera;
    public static boolean showNotificationsForAllAccounts;
    public static boolean shuffleMusic;
    public static boolean sortContactsByName;
    public static boolean sortFilesByName;
    public static int stealthModeSendMessageConfirm;
    public static boolean stickersReorderingHintUsed;
    public static String storageCacheDir;
    public static int storiesColumnsCount;
    public static boolean storiesIntroShown;
    public static boolean storyReactionsLongPressHint;
    public static boolean streamAllVideo;
    public static boolean streamMedia;
    public static boolean streamMkv;
    public static boolean suggestAnimatedEmoji;
    public static int suggestStickers;
    private static final Object sync;
    public static int textSelectionHintShows;
    public static boolean translateChats;
    public static boolean updateStickersOrderOnSend;
    public static boolean useFingerprint;
    public static boolean useSurfaceInStories;
    public static boolean useSystemEmoji;
    public static boolean useThreeLinesLayout;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface PasscodeType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface PerformanceClass {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkSdCard$0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkSdCard$1(DialogInterface dialogInterface, int i) {
    }

    public static String performanceClassName(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "UNKNOWN" : "HIGH" : "AVERAGE" : "LOW";
    }

    public static boolean hasPreferenceKey(String str) {
        return MessagesController.getGlobalMainSettings().contains(str);
    }

    public static DrawerHeaderSettings getDrawerHeaderSettings() {
        return new DrawerHeaderSettings(selectedDrawerHeaderTitle, selectedDrawerHeaderSubtitle, isShowDrawerHeaderTitleEnabled, isShowDrawerHeaderSubtitleEnabled, isShowDrawerHeaderAvatarEnabled, isShowDrawerHeaderArchiveEnabled);
    }

    public static void setDebugThemeSwitchEnabled(boolean z) {
        isDebugThemeSwitchEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isDebugThemeSwitchEnabled(), isDebugThemeSwitchEnabled).apply();
    }

    public static void setFilesOriginalNameSavingEnabled(boolean z) {
        isFilesOriginalNameSavingEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isFilesOriginalNameSavingEnabled(), isFilesOriginalNameSavingEnabled).apply();
    }

    public static void setFilesSendingPreviewAndCaptionEnabled(boolean z) {
        isFilesSendingPreviewAndCaptionEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isFilesSendingPreviewAndCaptionEnabled(), isFilesSendingPreviewAndCaptionEnabled).apply();
    }

    public static void setVibrationEnabled(boolean z) {
        isVibrationEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isVibrationEnabled(), isVibrationEnabled).apply();
    }

    public static void setSelectedStickersSize(StickersSize stickersSize) {
        selectedStickersSize = stickersSize;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedStickersSize(), selectedStickersSize.name()).apply();
    }

    public static void setProxyButtonEnabled(boolean z) {
        isProxyButtonEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isProxyButtonEnabled(), isProxyButtonEnabled).apply();
    }

    public static void setReadAllChatsConfirmationShown(boolean z) {
        isReadAllChatsConfirmationShown = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isReadAllChatsConfirmationShown(), isReadAllChatsConfirmationShown).apply();
    }

    public static void setProfileInfoHidden(boolean z) {
        isProfileInfoHidden = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isProfileInfoHidden(), isProfileInfoHidden).apply();
    }

    public static void setMultiForwardingOptionsHintShown(boolean z) {
        isMultiForwardingOptionsHintShown = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isMultiForwardingOptionsHintShown(), isMultiForwardingOptionsHintShown).apply();
    }

    public static void setDrawerHeaderSettings(DrawerHeaderSettings drawerHeaderSettings) {
        selectedDrawerHeaderTitle = drawerHeaderSettings.getTitle();
        selectedDrawerHeaderSubtitle = drawerHeaderSettings.getSubtitle();
        isShowDrawerHeaderTitleEnabled = drawerHeaderSettings.isShowTitle();
        isShowDrawerHeaderSubtitleEnabled = drawerHeaderSettings.isShowSubtitle();
        isShowDrawerHeaderAvatarEnabled = drawerHeaderSettings.isShowAvatar();
        isShowDrawerHeaderArchiveEnabled = drawerHeaderSettings.isShowArchive();
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedDrawerHeaderTitle(), selectedDrawerHeaderTitle.name()).putString(TelegramPreferenceKeys.Global.selectedDrawerHeaderSubtitle(), selectedDrawerHeaderSubtitle.name()).putBoolean(TelegramPreferenceKeys.Global.isShowDrawerHeaderTitleEnabled(), isShowDrawerHeaderTitleEnabled).putBoolean(TelegramPreferenceKeys.Global.isShowDrawerHeaderSubtitleEnabled(), isShowDrawerHeaderSubtitleEnabled).putBoolean(TelegramPreferenceKeys.Global.isShowDrawerHeaderAvatarEnabled(), isShowDrawerHeaderAvatarEnabled).putBoolean(TelegramPreferenceKeys.Global.isShowDrawerHeaderArchiveEnabled(), isShowDrawerHeaderArchiveEnabled).apply();
    }

    public static void setShowDrawerHeaderArchiveEnabled(boolean z) {
        isShowDrawerHeaderArchiveEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isShowDrawerHeaderArchiveEnabled(), isShowDrawerHeaderArchiveEnabled).apply();
    }

    public static void setSelectedDrawerItems(Set<DrawerItem> set) {
        selectedDrawerItems = new HashSet(set);
        MessagesController.getGlobalMainSettings().edit().putStringSet(TelegramPreferenceKeys.Global.selectedDrawerItems(), DrawerItem.mapEnumsToNames(selectedDrawerItems)).apply();
    }

    public static void setActionBarAccountSwitchEnabled(boolean z) {
        isActionBarAccountSwitchEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isActionBarAccountSwitchEnabled(), isActionBarAccountSwitchEnabled).apply();
    }

    public static void setMainActionBarMenuEnabled(boolean z) {
        isMainActionBarMenuEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isMainActionBarMenuEnabled(), isMainActionBarMenuEnabled).apply();
    }

    public static void setDialogsCompactModeEnabled(boolean z) {
        isDialogsCompactModeEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isDialogsCompactModeEnabled(), isDialogsCompactModeEnabled).apply();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, Boolean.TRUE);
    }

    public static void setHideChatKeyboardOnScrollEnabled(boolean z) {
        isHideChatKeyboardOnScrollEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isHideChatKeyboardOnScrollEnabled(), isHideChatKeyboardOnScrollEnabled).apply();
    }

    public static void setChatThemesEnabled(boolean z) {
        isChatThemesEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isChatThemesEnabled(), isChatThemesEnabled).apply();
    }

    public static void setExtendedAvatarPreviewerEnabled(boolean z) {
        isExtendedAvatarPreviewerEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isExtendedAvatarPreviewerEnabled(), isExtendedAvatarPreviewerEnabled).apply();
    }

    public static void setExtendedAvatarPreviewerByTapEnabled(boolean z) {
        isExtendedAvatarPreviewerByTapEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isExtendedAvatarPreviewerByTapEnabled(), isExtendedAvatarPreviewerByTapEnabled).apply();
    }

    public static void setSelectedExtendedAvatarPreviewerItems(List<ExtendedAvatarPreviewerItem> list) {
        selectedExtendedAvatarPreviewerItems = new ArrayList(list);
        MessagesController.getGlobalMainSettings().edit().putStringSet(TelegramPreferenceKeys.Global.selectedExtendedAvatarPreviewerItems(), ExtendedAvatarPreviewerItem.mapEnumsToNames(selectedExtendedAvatarPreviewerItems)).apply();
    }

    public static void setCallsConfirmationEnabled(boolean z) {
        isCallsConfirmationEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isCallsConfirmationEnabled(), isCallsConfirmationEnabled).apply();
    }

    public static void setDeleteCloudConfirmationEnabled(boolean z) {
        isDeleteCloudConfirmationEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isDeleteCloudConfirmationEnabled(), isDeleteCloudConfirmationEnabled).apply();
    }

    public static void setSendingGifConfirmationEnabled(boolean z) {
        isSendingGifConfirmationEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isSendingGifConfirmationEnabled(), isSendingGifConfirmationEnabled).apply();
    }

    public static void setSendingStickerConfirmationEnabled(boolean z) {
        isSendingStickerConfirmationEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isSendingStickerConfirmationEnabled(), isSendingStickerConfirmationEnabled).apply();
    }

    public static void setSpeakWithoutHoldEnabled(boolean z) {
        isSpeakWithoutHoldEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isSpeakWithoutHoldEnabled(), isSpeakWithoutHoldEnabled).apply();
    }

    public static void setVideoSpeakWithoutHoldEnabled(boolean z) {
        isVideoSpeakWithoutHoldEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isVideoSpeakWithoutHoldEnabled(), isVideoSpeakWithoutHoldEnabled).apply();
    }

    public static void setSelectedVideoVoiceCamera(VideoVoiceCamera videoVoiceCamera) {
        selectedVideoVoiceCamera = videoVoiceCamera;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedVideoVoiceCamera(), videoVoiceCamera.name()).apply();
    }

    public static void setOpenForwardingOptionsAutomaticallyEnabled(boolean z) {
        isOpenForwardingOptionsAutomaticallyEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isOpenForwardingOptionsAutomaticallyEnabled(), isOpenForwardingOptionsAutomaticallyEnabled).apply();
    }

    public static void setMultiReplyEnabled(boolean z) {
        isMultiReplyEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isMultiReplyEnabled(), isMultiReplyEnabled).apply();
    }

    public static void setMessageQuickTranslateEnabled(boolean z) {
        isMessageQuickTranslateEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isMessageQuickTranslateEnabled(), isMessageQuickTranslateEnabled).apply();
    }

    public static void setBotHelpTranslateEnabled(boolean z) {
        isBotHelpTranslateEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isBotHelpTranslateEnabled(), isBotHelpTranslateEnabled).apply();
    }

    public static void setTranslateInSendPopupEnabled(boolean z) {
        isTranslateInSendPopupEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isTranslateInSendPopupEnabled(), isTranslateInSendPopupEnabled).apply();
    }

    public static void setCombineMessagesEnabled(boolean z) {
        isCombineMessagesEnabled = z;
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.combineMessagesSettingsDidChanged, new Object[0]);
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isCombineMessagesEnabled(), isCombineMessagesEnabled).apply();
    }

    public static void setSelectedPhotoViewerMenuItems(Set<PhotoViewerMenuItem> set) {
        selectedPhotoViewerMenuItems = new HashSet(set);
        MessagesController.getGlobalMainSettings().edit().putStringSet(TelegramPreferenceKeys.Global.selectedPhotoViewerMenuItems(), PhotoViewerMenuItem.mapEnumsToNames(selectedPhotoViewerMenuItems)).apply();
    }

    public static void setReactionsEnabled(boolean z) {
        isReactionsEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isReactionsEnabled(), isReactionsEnabled).apply();
    }

    public static void setSelectedDialogTypesForMessagePopupReactions(Set<DialogType> set) {
        selectedDialogTypesForMessagePopupReactions = new HashSet(set);
        MessagesController.getGlobalMainSettings().edit().putStringSet(TelegramPreferenceKeys.Global.selectedDialogTypesForMessagePopupReactions(), DialogType.mapEnumsToNames(selectedDialogTypesForMessagePopupReactions)).apply();
    }

    public static void setReactionsInSendPopupEnabled(boolean z) {
        isReactionsInSendPopupEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isReactionsInSendPopupEnabled(), isReactionsInSendPopupEnabled).apply();
    }

    public static void setFilterTabsAtBottomEnabled(boolean z) {
        isFilterTabsAtBottomEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isFilterTabsAtBottomEnabled(), isFilterTabsAtBottomEnabled).apply();
    }

    public static void setSelectedFilterTabsNotificationMode(FilterTabNotificationMode filterTabNotificationMode) {
        selectedFilterTabsNotificationMode = filterTabNotificationMode;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedFilterTabsNotificationMode(), filterTabNotificationMode.name()).apply();
    }

    public static void setRememberLastFilterTabEnabled(boolean z) {
        isRememberLastFilterTabEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isRememberLastFilterTabEnabled(), isRememberLastFilterTabEnabled).apply();
    }

    public static void setChatSortingEnabledByDefault(boolean z) {
        isChatSortingEnabledByDefault = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isChatSortingEnabledByDefault(), isChatSortingEnabledByDefault).apply();
    }

    public static void setCloudAlbumsEnabled(boolean z) {
        isCloudAlbumsEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isCloudAlbumsEnabled(), isCloudAlbumsEnabled).apply();
    }

    public static void setAlbumsIntroShown(boolean z) {
        isAlbumsIntroShown = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isAlbumsIntroShown(), isAlbumsIntroShown).apply();
    }

    public static void setSortCloudAlbumsByNameEnabled(boolean z) {
        isSortCloudAlbumsByNameEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isSortCloudAlbumsByNameEnabled(), isSortCloudAlbumsByNameEnabled).apply();
    }

    public static void setPlayerPinned(boolean z) {
        isPlayerPinned = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isPlayerPinned(), isPlayerPinned).apply();
    }

    public static void setPinnedPlayerMinimized(boolean z) {
        isPinnedPlayerMinimized = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isPinnedPlayerMinimized(), isPinnedPlayerMinimized).apply();
    }

    public static void setPinnedPlayerNightThemeEnabled(boolean z) {
        isPinnedPlayerNightThemeEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isPinnedPlayerNightThemeEnabled(), isPinnedPlayerNightThemeEnabled).apply();
    }

    public static void setMusicIntroShown(boolean z) {
        isMusicIntroShown = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isMusicIntroShown(), isMusicIntroShown).apply();
    }

    public static void setSelectedTemplatesMode(TemplatesMode templatesMode) {
        selectedTemplatesMode = templatesMode;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedTemplatesMode(), templatesMode.name()).apply();
    }

    public static void setSelectedTemplatesSortingType(TemplatesSortingType templatesSortingType) {
        if (selectedTemplatesSortingType == templatesSortingType) {
            return;
        }
        selectedTemplatesSortingType = templatesSortingType;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedTemplatesSortingType(), templatesSortingType.name()).apply();
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    public static void setLastSelectedLanguage(String str) {
        lastSelectedLanguage = str;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.lastSelectedLanguages(), lastSelectedLanguage).apply();
    }

    public static void setSelectedFilterTabsWidthMode(FilterTabWidthMode filterTabWidthMode) {
        selectedFilterTabWidthMode = filterTabWidthMode;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedFilterTabsWidthMode(), filterTabWidthMode.name()).apply();
    }

    public static void setDrawerHolidayIconType(DrawerHolidayIconType drawerHolidayIconType2) {
        drawerHolidayIconType = drawerHolidayIconType2;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedDrawerHolidayIconType(), drawerHolidayIconType2.name()).apply();
    }

    public static void setNewTelegramAuthorizationRulesRead(boolean z) {
        isNewTelegramAuthorizationRulesRead = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isNewTelegramAuthorizationRulesRead(), isNewTelegramAuthorizationRulesRead).apply();
    }

    public static void setDialogsPremiumHintEnabled(boolean z) {
        isDialogsPremiumHintEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isDialogsPremiumHintEnabled(), isDialogsPremiumHintEnabled).apply();
    }

    public static void setChatAttachAlertWalletBotEnabled(boolean z) {
        isChatAttachAlertWalletBotEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isChatAttachAlertWalletBotEnabled(), isChatAttachAlertWalletBotEnabled).apply();
    }

    public static void setForwardingPreviewEditorHintShown(boolean z) {
        isForwardingPreviewEditorHintShown = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isForwardingPreviewEditorHintShown(), isForwardingPreviewEditorHintShown).apply();
    }

    public static void setReplyColorsEnabled(boolean z) {
        isReplyColorsEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isReplyColorsEnabled(), isReplyColorsEnabled).apply();
    }

    public static boolean loopStickers() {
        return LiteMode.isEnabled(2);
    }

    public static void checkSdCard(File file) {
        if (file == null || storageCacheDir == null || readOnlyStorageDirAlertShowed || !file.getPath().startsWith(storageCacheDir)) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SharedConfig$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SharedConfig.lambda$checkSdCard$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkSdCard$2() {
        BaseFragment lastFragment;
        if (readOnlyStorageDirAlertShowed || (lastFragment = LaunchActivity.getLastFragment()) == null || lastFragment.getParentActivity() == null) {
            return;
        }
        storageCacheDir = null;
        saveConfig();
        ImageLoader.getInstance().checkMediaPaths(new Runnable() { // from class: org.telegram.messenger.SharedConfig$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SharedConfig.lambda$checkSdCard$0();
            }
        });
        readOnlyStorageDirAlertShowed = true;
        AlertDialog.Builder builder = new AlertDialog.Builder(lastFragment.getParentActivity());
        builder.setTitle(LocaleController.getString("SdCardError", C3632R.string.SdCardError));
        builder.setSubtitle(LocaleController.getString("SdCardErrorDescription", C3632R.string.SdCardErrorDescription));
        builder.setPositiveButton(LocaleController.getString("DoNotUseSDCard", C3632R.string.DoNotUseSDCard), new DialogInterface.OnClickListener() { // from class: org.telegram.messenger.SharedConfig$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SharedConfig.lambda$checkSdCard$1(dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        create.setCanceledOnTouchOutside(false);
        create.show();
    }

    public static boolean allowPreparingHevcPlayers() {
        int maxSupportedInstances;
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        if (allowPreparingHevcPlayers == null) {
            int codecCount = MediaCodecList.getCodecCount();
            int i = 0;
            int i2 = 0;
            while (true) {
                boolean z = true;
                if (i >= codecCount) {
                    break;
                }
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (!codecInfoAt.isEncoder()) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= codecInfoAt.getSupportedTypes().length) {
                            z = false;
                            break;
                        } else if (codecInfoAt.getSupportedTypes()[i3].contains(MimeTypes.VIDEO_H265)) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (z && (maxSupportedInstances = codecInfoAt.getCapabilitiesForType(MimeTypes.VIDEO_H265).getMaxSupportedInstances()) > i2) {
                        i2 = maxSupportedInstances;
                    }
                }
                i++;
            }
            allowPreparingHevcPlayers = Boolean.valueOf(i2 >= 8);
        }
        return allowPreparingHevcPlayers.booleanValue();
    }

    public static void togglePaymentByInvoice() {
        payByInvoice = !payByInvoice;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putBoolean("payByInvoice", payByInvoice).apply();
    }

    public static void toggleSurfaceInStories() {
        useSurfaceInStories = !useSurfaceInStories;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putBoolean("useSurfaceInStories", useSurfaceInStories).apply();
    }

    public static void togglePhotoViewerBlur() {
        photoViewerBlur = !photoViewerBlur;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putBoolean("photoViewerBlur", photoViewerBlur).apply();
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        hevcEncoderWhitelist = hashSet;
        hashSet.add("c2.exynos.hevc.encoder");
        hevcEncoderWhitelist.add("OMX.Exynos.HEVC.Encoder".toLowerCase());
        pushType = 2;
        pushString = "";
        pushStringStatus = "";
        passcodeHash = "";
        passcodeSalt = new byte[0];
        autoLockIn = 3600;
        useFingerprint = true;
        keepMedia = CacheByChatsController.KEEP_MEDIA_ONE_MONTH;
        updateStickersOrderOnSend = true;
        photoViewerBlur = true;
        stealthModeSendMessageConfirm = 2;
        lastLocalId = -210000;
        passportConfigJson = "";
        sync = new Object();
        localIdSync = new Object();
        mapPreviewType = 2;
        chatBubbles = Build.VERSION.SDK_INT >= 30;
        raiseToSpeak = false;
        raiseToListen = true;
        nextMediaTap = true;
        recordViaSco = false;
        customTabs = true;
        directShare = true;
        inappCamera = true;
        roundCamera16to9 = true;
        noSoundHintShowed = false;
        streamMedia = true;
        streamAllVideo = false;
        streamMkv = false;
        saveStreamMedia = true;
        pauseMusicOnRecord = false;
        pauseMusicOnMedia = false;
        showNotificationsForAllAccounts = true;
        fontSize = 16;
        bubbleRadius = 17;
        ivFontSize = 16;
        mediaColumnsCount = 3;
        storiesColumnsCount = 3;
        fastScrollHintCount = 3;
        translateChats = true;
        LOW_SOC = new int[]{-1775228513, 802464304, 802464333, 802464302, 2067362118, 2067362060, 2067362084, 2067362241, 2067362117, 2067361998, -1853602818};
        loadConfig();
        proxyList = new ArrayList<>();
        drawActionBarShadow = true;
    }

    public static String findGoodHevcEncoder() {
        if (goodHevcEncoder == null) {
            int codecCount = MediaCodecList.getCodecCount();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (codecInfoAt.isEncoder()) {
                    for (int i2 = 0; i2 < codecInfoAt.getSupportedTypes().length; i2++) {
                        if (codecInfoAt.getSupportedTypes()[i2].contains(MimeTypes.VIDEO_H265) && codecInfoAt.isHardwareAccelerated() && isWhitelisted(codecInfoAt)) {
                            String name = codecInfoAt.getName();
                            goodHevcEncoder = name;
                            return name;
                        }
                    }
                    continue;
                }
            }
            goodHevcEncoder = "";
        }
        if (TextUtils.isEmpty(goodHevcEncoder)) {
            return null;
        }
        return goodHevcEncoder;
    }

    private static boolean isWhitelisted(MediaCodecInfo mediaCodecInfo) {
        if (BuildVars.DEBUG_PRIVATE_VERSION) {
            return true;
        }
        return hevcEncoderWhitelist.contains(mediaCodecInfo.getName().toLowerCase());
    }

    /* loaded from: classes4.dex */
    public static class ProxyInfo {
        public String address;
        public boolean available;
        public long availableCheckTime;
        public boolean checking;
        public String password;
        public long ping;
        public int port;
        public long proxyCheckPingId;
        public String secret;
        public String username;

        public ProxyInfo(String str, int i, String str2, String str3, String str4) {
            this.address = str;
            this.port = i;
            this.username = str2;
            this.password = str3;
            this.secret = str4;
            if (str == null) {
                this.address = "";
            }
            if (str3 == null) {
                this.password = "";
            }
            if (str2 == null) {
                this.username = "";
            }
            if (str4 == null) {
                this.secret = "";
            }
        }

        public String getLink() {
            StringBuilder sb = new StringBuilder(!TextUtils.isEmpty(this.secret) ? "https://t.me/proxy?" : "https://t.me/socks?");
            try {
                sb.append("server=");
                sb.append(URLEncoder.encode(this.address, "UTF-8"));
                sb.append("&");
                sb.append("port=");
                sb.append(this.port);
                if (!TextUtils.isEmpty(this.username)) {
                    sb.append("&user=");
                    sb.append(URLEncoder.encode(this.username, "UTF-8"));
                }
                if (!TextUtils.isEmpty(this.password)) {
                    sb.append("&pass=");
                    sb.append(URLEncoder.encode(this.password, "UTF-8"));
                }
                if (!TextUtils.isEmpty(this.secret)) {
                    sb.append("&secret=");
                    sb.append(URLEncoder.encode(this.secret, "UTF-8"));
                }
            } catch (UnsupportedEncodingException unused) {
            }
            return sb.toString();
        }
    }

    public static void saveConfig() {
        synchronized (sync) {
            try {
                SharedPreferences.Editor edit = ApplicationLoader.applicationContext.getSharedPreferences("userconfing", 0).edit();
                edit.putBoolean("saveIncomingPhotos", saveIncomingPhotos);
                edit.putString("passcodeHash1", passcodeHash);
                byte[] bArr = passcodeSalt;
                edit.putString("passcodeSalt", bArr.length > 0 ? Base64.encodeToString(bArr, 0) : "");
                edit.putBoolean("appLocked", appLocked);
                edit.putInt("passcodeType", passcodeType);
                edit.putLong("passcodeRetryInMs", passcodeRetryInMs);
                edit.putLong("lastUptimeMillis", lastUptimeMillis);
                edit.putInt("badPasscodeTries", badPasscodeTries);
                edit.putInt("autoLockIn", autoLockIn);
                edit.putInt("lastPauseTime", lastPauseTime);
                edit.putString("lastUpdateVersion2", lastUpdateVersion);
                edit.putBoolean("useFingerprint", useFingerprint);
                edit.putBoolean("allowScreenCapture", allowScreenCapture);
                edit.putString("pushString2", pushString);
                edit.putInt("pushType", pushType);
                edit.putBoolean("pushStatSent", pushStatSent);
                byte[] bArr2 = pushAuthKey;
                edit.putString("pushAuthKey", bArr2 != null ? Base64.encodeToString(bArr2, 0) : "");
                edit.putInt("lastLocalId", lastLocalId);
                edit.putString("passportConfigJson", passportConfigJson);
                edit.putInt("passportConfigHash", passportConfigHash);
                edit.putBoolean("sortContactsByName", sortContactsByName);
                edit.putBoolean("sortFilesByName", sortFilesByName);
                edit.putInt("textSelectionHintShows", textSelectionHintShows);
                edit.putInt("scheduledOrNoSoundHintShows", scheduledOrNoSoundHintShows);
                edit.putLong("scheduledOrNoSoundHintSeenAt", scheduledOrNoSoundHintSeenAt);
                edit.putInt("scheduledHintShows", scheduledHintShows);
                edit.putLong("scheduledHintSeenAt", scheduledHintSeenAt);
                edit.putBoolean("forwardingOptionsHintShown", forwardingOptionsHintShown);
                edit.putBoolean("replyingOptionsHintShown", replyingOptionsHintShown);
                edit.putInt("lockRecordAudioVideoHint", lockRecordAudioVideoHint);
                edit.putString("storageCacheDir", !TextUtils.isEmpty(storageCacheDir) ? storageCacheDir : "");
                edit.putBoolean("proxyRotationEnabled", proxyRotationEnabled);
                edit.putInt("proxyRotationTimeout", proxyRotationTimeout);
                TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate = pendingAppUpdate;
                if (tLRPC$TL_help_appUpdate != null) {
                    try {
                        SerializedData serializedData = new SerializedData(tLRPC$TL_help_appUpdate.getObjectSize());
                        pendingAppUpdate.serializeToStream(serializedData);
                        edit.putString("appUpdate", Base64.encodeToString(serializedData.toByteArray(), 0));
                        edit.putInt("appUpdateBuild", pendingAppUpdateBuildVersion);
                        serializedData.cleanup();
                    } catch (Exception unused) {
                    }
                } else {
                    edit.remove("appUpdate");
                }
                edit.putLong("appUpdateCheckTime", lastUpdateCheckTime);
                edit.apply();
                SharedPreferences.Editor edit2 = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit();
                edit2.putBoolean("hasEmailLogin", hasEmailLogin);
                edit2.putBoolean("floatingDebugActive", isFloatingDebugActive);
                edit2.putBoolean("record_via_sco", recordViaSco);
                edit2.apply();
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }
    }

    public static int getLastLocalId() {
        int i;
        synchronized (localIdSync) {
            i = lastLocalId;
            lastLocalId = i - 1;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x018e A[Catch: Exception -> 0x01aa, all -> 0x0834, TryCatch #2 {Exception -> 0x01aa, blocks: (B:22:0x013f, B:24:0x0147, B:26:0x0157, B:27:0x016b, B:38:0x018e, B:40:0x0192, B:41:0x0194, B:43:0x0198, B:45:0x019e, B:47:0x01a2, B:36:0x0188), top: B:88:0x013f, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0192 A[Catch: Exception -> 0x01aa, all -> 0x0834, TryCatch #2 {Exception -> 0x01aa, blocks: (B:22:0x013f, B:24:0x0147, B:26:0x0157, B:27:0x016b, B:38:0x018e, B:40:0x0192, B:41:0x0194, B:43:0x0198, B:45:0x019e, B:47:0x01a2, B:36:0x0188), top: B:88:0x013f, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x05fc  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x07f0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0824 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void loadConfig() {
        /*
            Method dump skipped, instructions count: 2103
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SharedConfig.loadConfig():void");
    }

    public static void updateTabletConfig() {
        if (fontSizeIsDefault) {
            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
            int i = sharedPreferences.getInt("fons_size", AndroidUtilities.isTablet() ? 18 : 16);
            fontSize = i;
            ivFontSize = sharedPreferences.getInt("iv_font_size", i);
        }
    }

    public static void increaseBadPasscodeTries(int i, LockedSection lockedSection) {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        LockedSectionsController lockedSectionsController = LockedSectionsController.getInstance(i);
        if (lockedSection != null) {
            sectionPasscodeData = lockedSectionsController.getSectionsPasscodeData(lockedSection);
            if (sectionPasscodeData == null) {
                return;
            }
        } else {
            sectionPasscodeData = null;
        }
        int badPasscodeTries2 = (sectionPasscodeData != null ? sectionPasscodeData.getBadPasscodeTries() : badPasscodeTries) + 1;
        if (badPasscodeTries2 >= 3) {
            long j = badPasscodeTries2 != 3 ? badPasscodeTries2 != 4 ? badPasscodeTries2 != 5 ? badPasscodeTries2 != 6 ? badPasscodeTries2 != 7 ? 30000L : 25000L : SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US : C0485C.DEFAULT_SEEK_FORWARD_INCREMENT_MS : 10000L : 5000L;
            if (sectionPasscodeData != null) {
                sectionPasscodeData.setLastUptimeMillis(SystemClock.elapsedRealtime());
            } else {
                lastUptimeMillis = SystemClock.elapsedRealtime();
            }
            if (sectionPasscodeData != null) {
                sectionPasscodeData.setPasscodeRetryInMs(j);
            } else {
                passcodeRetryInMs = j;
            }
        }
        if (sectionPasscodeData != null) {
            sectionPasscodeData.setBadPasscodeTries(badPasscodeTries2);
        } else {
            badPasscodeTries = badPasscodeTries2;
        }
        if (sectionPasscodeData != null) {
            lockedSectionsController.saveConfig();
        } else {
            saveConfig();
        }
    }

    public static boolean isAutoplayVideo() {
        return LiteMode.isEnabled(1024);
    }

    public static boolean isAutoplayGifs() {
        return LiteMode.isEnabled(2048);
    }

    public static boolean isPassportConfigLoaded() {
        return passportConfigMap != null;
    }

    public static void setPassportConfig(String str, int i) {
        passportConfigMap = null;
        passportConfigJson = str;
        passportConfigHash = i;
        saveConfig();
        getCountryLangs();
    }

    public static HashMap<String, String> getCountryLangs() {
        if (passportConfigMap == null) {
            passportConfigMap = new HashMap<>();
            try {
                JSONObject jSONObject = new JSONObject(passportConfigJson);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    passportConfigMap.put(next.toUpperCase(), jSONObject.getString(next).toUpperCase());
                }
            } catch (Throwable th) {
                FileLog.m99e(th);
            }
        }
        return passportConfigMap;
    }

    public static boolean isAppUpdateAvailable() {
        int i;
        TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate = pendingAppUpdate;
        if (tLRPC$TL_help_appUpdate == null || tLRPC$TL_help_appUpdate.document == null || !ApplicationLoader.isStandaloneBuild()) {
            return false;
        }
        try {
            i = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            FileLog.m99e(e);
            i = BuildVars.BUILD_VERSION;
        }
        return pendingAppUpdateBuildVersion == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean setNewAppVersionAvailable(org.telegram.tgnet.TLRPC$TL_help_appUpdate r3) {
        /*
            r0 = 0
            android.content.Context r1 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Exception -> L18
            android.content.pm.PackageManager r1 = r1.getPackageManager()     // Catch: java.lang.Exception -> L18
            android.content.Context r2 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Exception -> L18
            java.lang.String r2 = r2.getPackageName()     // Catch: java.lang.Exception -> L18
            android.content.pm.PackageInfo r1 = r1.getPackageInfo(r2, r0)     // Catch: java.lang.Exception -> L18
            int r2 = r1.versionCode     // Catch: java.lang.Exception -> L18
            java.lang.String r1 = r1.versionName     // Catch: java.lang.Exception -> L16
            goto L1e
        L16:
            r1 = move-exception
            goto L1a
        L18:
            r1 = move-exception
            r2 = r0
        L1a:
            org.telegram.messenger.FileLog.m99e(r1)
            r1 = 0
        L1e:
            if (r2 != 0) goto L22
            int r2 = org.telegram.messenger.BuildVars.BUILD_VERSION
        L22:
            if (r1 != 0) goto L26
            java.lang.String r1 = org.telegram.messenger.BuildVars.BUILD_VERSION_STRING
        L26:
            java.lang.String r1 = r3.version
            if (r1 != 0) goto L2b
            return r0
        L2b:
            org.telegram.messenger.SharedConfig.pendingAppUpdate = r3
            org.telegram.messenger.SharedConfig.pendingAppUpdateBuildVersion = r2
            saveConfig()
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SharedConfig.setNewAppVersionAvailable(org.telegram.tgnet.TLRPC$TL_help_appUpdate):boolean");
    }

    private static boolean versionBiggerOrEqual(String str, String str2) {
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        for (int i = 0; i < Math.min(split.length, split2.length); i++) {
            int parseInt = Integer.parseInt(split[i]);
            int parseInt2 = Integer.parseInt(split2[i]);
            if (parseInt < parseInt2) {
                return false;
            }
            if (parseInt > parseInt2) {
                return true;
            }
        }
        return true;
    }

    public static boolean checkPasscode(String str, int i, LockedSection lockedSection) {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        LockedSectionsController lockedSectionsController = LockedSectionsController.getInstance(i);
        if (lockedSection != null) {
            sectionPasscodeData = lockedSectionsController.getSectionsPasscodeData(lockedSection);
            if (sectionPasscodeData == null) {
                return false;
            }
        } else {
            sectionPasscodeData = null;
        }
        byte[] passcodeSalt2 = sectionPasscodeData != null ? sectionPasscodeData.getPasscodeSalt() : passcodeSalt;
        String passcodeHash2 = sectionPasscodeData != null ? sectionPasscodeData.getPasscodeHash() : passcodeHash;
        if (passcodeSalt2.length == 0) {
            boolean equals = Utilities.MD5(str).equals(passcodeHash2);
            if (equals) {
                try {
                    byte[] bArr = new byte[16];
                    Utilities.random.nextBytes(bArr);
                    byte[] bytes = str.getBytes("UTF-8");
                    int length = bytes.length + 32;
                    byte[] bArr2 = new byte[length];
                    System.arraycopy(bArr, 0, bArr2, 0, 16);
                    System.arraycopy(bytes, 0, bArr2, 16, bytes.length);
                    System.arraycopy(bArr, 0, bArr2, bytes.length + 16, 16);
                    String bytesToHex = Utilities.bytesToHex(Utilities.computeSHA256(bArr2, 0, length));
                    if (sectionPasscodeData != null) {
                        sectionPasscodeData.setPasscodeSalt(bArr);
                        sectionPasscodeData.setPasscodeHash(bytesToHex);
                    } else {
                        passcodeSalt = bArr;
                        passcodeHash = bytesToHex;
                    }
                    if (sectionPasscodeData != null) {
                        lockedSectionsController.saveConfig();
                    } else {
                        saveConfig();
                    }
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            }
            return equals;
        }
        try {
            byte[] bytes2 = str.getBytes("UTF-8");
            int length2 = bytes2.length + 32;
            byte[] bArr3 = new byte[length2];
            System.arraycopy(passcodeSalt2, 0, bArr3, 0, 16);
            System.arraycopy(bytes2, 0, bArr3, 16, bytes2.length);
            System.arraycopy(passcodeSalt2, 0, bArr3, bytes2.length + 16, 16);
            return passcodeHash2.equals(Utilities.bytesToHex(Utilities.computeSHA256(bArr3, 0, length2)));
        } catch (Exception e2) {
            FileLog.m99e(e2);
            return false;
        }
    }

    public static void clearConfig() {
        saveIncomingPhotos = false;
        appLocked = false;
        passcodeType = 0;
        passcodeRetryInMs = 0L;
        lastUptimeMillis = 0L;
        badPasscodeTries = 0;
        passcodeHash = "";
        passcodeSalt = new byte[0];
        autoLockIn = 3600;
        lastPauseTime = 0;
        useFingerprint = true;
        isWaitingForPasscodeEnter = false;
        allowScreenCapture = false;
        lastUpdateVersion = BuildVars.BUILD_VERSION_STRING;
        textSelectionHintShows = 0;
        scheduledOrNoSoundHintShows = 0;
        scheduledOrNoSoundHintSeenAt = 0L;
        scheduledHintShows = 0;
        scheduledHintSeenAt = 0L;
        lockRecordAudioVideoHint = 0;
        forwardingOptionsHintShown = false;
        replyingOptionsHintShown = false;
        messageSeenHintCount = 3;
        emojiInteractionsHintCount = 3;
        dayNightThemeSwitchHintCount = 3;
        stealthModeSendMessageConfirm = 2;
        dayNightWallpaperSwitchHint = 0;
        saveConfig();
    }

    public static void setSuggestStickers(int i) {
        suggestStickers = i;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("suggestStickers", suggestStickers);
        edit.apply();
    }

    public static void setSearchMessagesAsListUsed(boolean z) {
        searchMessagesAsListUsed = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("searchMessagesAsListUsed", searchMessagesAsListUsed);
        edit.apply();
    }

    public static void setStickersReorderingHintUsed(boolean z) {
        stickersReorderingHintUsed = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("stickersReorderingHintUsed", stickersReorderingHintUsed);
        edit.apply();
    }

    public static void setStoriesReactionsLongPressHintUsed(boolean z) {
        storyReactionsLongPressHint = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("storyReactionsLongPressHint", storyReactionsLongPressHint);
        edit.apply();
    }

    public static void setStoriesIntroShown(boolean z) {
        storiesIntroShown = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("storiesIntroShown", storiesIntroShown);
        edit.apply();
    }

    public static void increaseTextSelectionHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = textSelectionHintShows + 1;
        textSelectionHintShows = i;
        edit.putInt("textSelectionHintShows", i);
        edit.apply();
    }

    public static void increaseDayNightWallpaperSiwtchHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = dayNightWallpaperSwitchHint + 1;
        dayNightWallpaperSwitchHint = i;
        edit.putInt("dayNightWallpaperSwitchHint", i);
        edit.apply();
    }

    public static void removeTextSelectionHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("textSelectionHintShows", 3);
        edit.apply();
    }

    public static void increaseScheduledOrNoSoundHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        scheduledOrNoSoundHintSeenAt = System.currentTimeMillis();
        int i = scheduledOrNoSoundHintShows + 1;
        scheduledOrNoSoundHintShows = i;
        edit.putInt("scheduledOrNoSoundHintShows", i);
        edit.putLong("scheduledOrNoSoundHintSeenAt", scheduledOrNoSoundHintSeenAt);
        edit.apply();
    }

    public static void increaseScheduledHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        scheduledHintSeenAt = System.currentTimeMillis();
        int i = scheduledHintShows + 1;
        scheduledHintShows = i;
        edit.putInt("scheduledHintShows", i);
        edit.putLong("scheduledHintSeenAt", scheduledHintSeenAt);
        edit.apply();
    }

    public static void forwardingOptionsHintHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        forwardingOptionsHintShown = true;
        edit.putBoolean("forwardingOptionsHintShown", true);
        edit.apply();
    }

    public static void replyingOptionsHintHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        replyingOptionsHintShown = true;
        edit.putBoolean("replyingOptionsHintShown", true);
        edit.apply();
    }

    public static void removeScheduledOrNoSoundHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("scheduledOrNoSoundHintShows", 3);
        edit.apply();
    }

    public static void removeScheduledHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("scheduledHintShows", 3);
        edit.apply();
    }

    public static void increaseLockRecordAudioVideoHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = lockRecordAudioVideoHint + 1;
        lockRecordAudioVideoHint = i;
        edit.putInt("lockRecordAudioVideoHint", i);
        edit.apply();
    }

    public static void removeLockRecordAudioVideoHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("lockRecordAudioVideoHint", 3);
        edit.apply();
    }

    public static void increaseSearchAsListHintShows() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = searchMessagesAsListHintShows + 1;
        searchMessagesAsListHintShows = i;
        edit.putInt("searchMessagesAsListHintShows", i);
        edit.apply();
    }

    public static void setKeepMedia(int i) {
        keepMedia = i;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("keep_media", keepMedia);
        edit.apply();
    }

    public static void toggleUpdateStickersOrderOnSend() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        boolean z = !updateStickersOrderOnSend;
        updateStickersOrderOnSend = z;
        edit.putBoolean("updateStickersOrderOnSend", z);
        edit.apply();
    }

    public static void checkLogsToDelete() {
        if (BuildVars.LOGS_ENABLED) {
            final int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            if (Math.abs(currentTimeMillis - lastLogsCheckTime) < 3600) {
                return;
            }
            lastLogsCheckTime = currentTimeMillis;
            Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SharedConfig$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SharedConfig.lambda$checkLogsToDelete$3(currentTimeMillis);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkLogsToDelete$3(int i) {
        File logsDir;
        long j = i - 864000;
        try {
            logsDir = AndroidUtilities.getLogsDir();
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
        if (logsDir == null) {
            return;
        }
        Utilities.clearDir(logsDir.getAbsolutePath(), 0, j, false);
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("lastLogsCheckTime", lastLogsCheckTime);
        edit.apply();
    }

    public static void toggleDisableVoiceAudioEffects() {
        disableVoiceAudioEffects = !disableVoiceAudioEffects;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("disableVoiceAudioEffects", disableVoiceAudioEffects);
        edit.apply();
    }

    public static void toggleNoiseSupression() {
        noiseSupression = !noiseSupression;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("noiseSupression", noiseSupression);
        edit.apply();
    }

    public static void toggleDebugWebView() {
        boolean z = !debugWebView;
        debugWebView = z;
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(z);
        }
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("debugWebView", debugWebView);
        edit.apply();
    }

    public static void toggleLoopStickers() {
        LiteMode.toggleFlag(2);
    }

    public static void toggleBigEmoji() {
        allowBigEmoji = !allowBigEmoji;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("allowBigEmoji", allowBigEmoji);
        edit.apply();
    }

    public static void toggleSuggestAnimatedEmoji() {
        suggestAnimatedEmoji = !suggestAnimatedEmoji;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("suggestAnimatedEmoji", suggestAnimatedEmoji);
        edit.apply();
    }

    public static void setPlaybackOrderType(int i) {
        if (i == 2) {
            shuffleMusic = true;
            playOrderReversed = false;
        } else if (i == 1) {
            playOrderReversed = true;
            shuffleMusic = false;
        } else {
            playOrderReversed = false;
            shuffleMusic = false;
        }
        MediaController.getInstance().checkIsNextMediaFileDownloaded();
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("shuffleMusic", shuffleMusic);
        edit.putBoolean("playOrderReversed", playOrderReversed);
        edit.apply();
    }

    public static void setRepeatMode(int i) {
        repeatMode = i;
        if (i < 0 || i > 2) {
            repeatMode = 0;
        }
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("repeatMode", repeatMode);
        edit.apply();
    }

    public static void overrideDevicePerformanceClass(int i) {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        overrideDevicePerformanceClass = i;
        edit.putInt("overrideDevicePerformanceClass", i).remove("lite_mode").remove("lite_mode2").remove("lite_mode_battery_level").apply();
        LiteMode.loadPreference();
        if (liteMode != null) {
            LiteMode.loadPreference();
        }
    }

    public static void toggleAutoplayGifs() {
        LiteMode.toggleFlag(2048);
    }

    public static void setUseThreeLinesLayout(boolean z) {
        useThreeLinesLayout = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("useThreeLinesLayout", useThreeLinesLayout);
        edit.apply();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, Boolean.TRUE);
    }

    public static void toggleArchiveHidden() {
        archiveHidden = !archiveHidden;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("archiveHidden", archiveHidden);
        edit.apply();
    }

    public static void toggleAutoplayVideo() {
        LiteMode.toggleFlag(1024);
    }

    public static boolean isSecretMapPreviewSet() {
        return MessagesController.getGlobalMainSettings().contains("mapPreviewType");
    }

    public static void setSecretMapPreviewType(int i) {
        mapPreviewType = i;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("mapPreviewType", mapPreviewType);
        edit.apply();
    }

    public static void setNoSoundHintShowed(boolean z) {
        if (noSoundHintShowed == z) {
            return;
        }
        noSoundHintShowed = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("noSoundHintShowed", noSoundHintShowed);
        edit.apply();
    }

    public static void toggleRaiseToSpeak() {
        raiseToSpeak = !raiseToSpeak;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("raise_to_speak", raiseToSpeak);
        edit.apply();
    }

    public static void toggleRaiseToListen() {
        raiseToListen = !raiseToListen;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("raise_to_listen", raiseToListen);
        edit.apply();
    }

    public static void toggleNextMediaTap() {
        nextMediaTap = !nextMediaTap;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("next_media_on_tap", nextMediaTap);
        edit.apply();
    }

    public static boolean enabledRaiseTo(boolean z) {
        return raiseToListen && (!z || raiseToSpeak);
    }

    public static void toggleCustomTabs() {
        customTabs = !customTabs;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("custom_tabs", customTabs);
        edit.apply();
    }

    public static void toggleDirectShare() {
        directShare = !directShare;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("direct_share", directShare);
        edit.apply();
        ShortcutManagerCompat.removeAllDynamicShortcuts(ApplicationLoader.applicationContext);
        MediaDataController.getInstance(UserConfig.selectedAccount).buildShortcuts();
    }

    public static void toggleStreamMedia() {
        streamMedia = !streamMedia;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("streamMedia", streamMedia);
        edit.apply();
    }

    public static void toggleSortContactsByName() {
        sortContactsByName = !sortContactsByName;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("sortContactsByName", sortContactsByName);
        edit.apply();
    }

    public static void toggleSortFilesByName() {
        sortFilesByName = !sortFilesByName;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("sortFilesByName", sortFilesByName);
        edit.apply();
    }

    public static void toggleStreamAllVideo() {
        streamAllVideo = !streamAllVideo;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("streamAllVideo", streamAllVideo);
        edit.apply();
    }

    public static void toggleStreamMkv() {
        streamMkv = !streamMkv;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("streamMkv", streamMkv);
        edit.apply();
    }

    public static void toggleSaveStreamMedia() {
        saveStreamMedia = !saveStreamMedia;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("saveStreamMedia", saveStreamMedia);
        edit.apply();
    }

    public static void togglePauseMusicOnRecord() {
        pauseMusicOnRecord = !pauseMusicOnRecord;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("pauseMusicOnRecord", pauseMusicOnRecord);
        edit.apply();
    }

    public static void togglePauseMusicOnMedia() {
        pauseMusicOnMedia = !pauseMusicOnMedia;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("pauseMusicOnMedia", pauseMusicOnMedia);
        edit.apply();
    }

    public static void toggleChatBlur() {
        LiteMode.toggleFlag(256);
    }

    public static void toggleForceDisableTabletMode() {
        forceDisableTabletMode = !forceDisableTabletMode;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("forceDisableTabletMode", forceDisableTabletMode);
        edit.apply();
    }

    public static void toggleInappCamera() {
        inappCamera = !inappCamera;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("inappCamera", inappCamera);
        edit.apply();
    }

    public static void toggleRoundCamera16to9() {
        roundCamera16to9 = !roundCamera16to9;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("roundCamera16to9", roundCamera16to9);
        edit.apply();
    }

    public static void setDistanceSystemType(int i) {
        distanceSystemType = i;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("distanceSystemType", distanceSystemType);
        edit.apply();
        LocaleController.resetImperialSystemType();
    }

    public static void loadProxyList() {
        byte readByte;
        if (proxyListLoaded) {
            return;
        }
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
        String string = sharedPreferences.getString("proxy_ip", "");
        String string2 = sharedPreferences.getString("proxy_user", "");
        String string3 = sharedPreferences.getString("proxy_pass", "");
        String string4 = sharedPreferences.getString("proxy_secret", "");
        int i = sharedPreferences.getInt("proxy_port", 1080);
        proxyListLoaded = true;
        proxyList.clear();
        currentProxy = null;
        String string5 = sharedPreferences.getString("proxy_list", null);
        if (!TextUtils.isEmpty(string5)) {
            SerializedData serializedData = new SerializedData(Base64.decode(string5, 0));
            int readInt32 = serializedData.readInt32(false);
            if (readInt32 == -1) {
                if (serializedData.readByte(false) == 2) {
                    int readInt322 = serializedData.readInt32(false);
                    for (int i2 = 0; i2 < readInt322; i2++) {
                        ProxyInfo proxyInfo = new ProxyInfo(serializedData.readString(false), serializedData.readInt32(false), serializedData.readString(false), serializedData.readString(false), serializedData.readString(false));
                        proxyInfo.ping = serializedData.readInt64(false);
                        proxyInfo.availableCheckTime = serializedData.readInt64(false);
                        proxyList.add(0, proxyInfo);
                        if (currentProxy == null && !TextUtils.isEmpty(string) && string.equals(proxyInfo.address) && i == proxyInfo.port && string2.equals(proxyInfo.username) && string3.equals(proxyInfo.password)) {
                            currentProxy = proxyInfo;
                        }
                    }
                } else {
                    FileLog.m101e("Unknown proxy schema version: " + ((int) readByte));
                }
            } else {
                for (int i3 = 0; i3 < readInt32; i3++) {
                    ProxyInfo proxyInfo2 = new ProxyInfo(serializedData.readString(false), serializedData.readInt32(false), serializedData.readString(false), serializedData.readString(false), serializedData.readString(false));
                    proxyList.add(0, proxyInfo2);
                    if (currentProxy == null && !TextUtils.isEmpty(string) && string.equals(proxyInfo2.address) && i == proxyInfo2.port && string2.equals(proxyInfo2.username) && string3.equals(proxyInfo2.password)) {
                        currentProxy = proxyInfo2;
                    }
                }
            }
            serializedData.cleanup();
        }
        if (currentProxy != null || TextUtils.isEmpty(string)) {
            return;
        }
        ProxyInfo proxyInfo3 = new ProxyInfo(string, i, string2, string3, string4);
        currentProxy = proxyInfo3;
        proxyList.add(0, proxyInfo3);
    }

    public static void saveProxyList() {
        ArrayList arrayList = new ArrayList(proxyList);
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.SharedConfig$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$saveProxyList$4;
                lambda$saveProxyList$4 = SharedConfig.lambda$saveProxyList$4((SharedConfig.ProxyInfo) obj, (SharedConfig.ProxyInfo) obj2);
                return lambda$saveProxyList$4;
            }
        });
        SerializedData serializedData = new SerializedData();
        serializedData.writeInt32(-1);
        serializedData.writeByte(2);
        int size = arrayList.size();
        serializedData.writeInt32(size);
        for (int i = size - 1; i >= 0; i--) {
            ProxyInfo proxyInfo = (ProxyInfo) arrayList.get(i);
            String str = proxyInfo.address;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            serializedData.writeString(str);
            serializedData.writeInt32(proxyInfo.port);
            String str3 = proxyInfo.username;
            if (str3 == null) {
                str3 = "";
            }
            serializedData.writeString(str3);
            String str4 = proxyInfo.password;
            if (str4 == null) {
                str4 = "";
            }
            serializedData.writeString(str4);
            String str5 = proxyInfo.secret;
            if (str5 != null) {
                str2 = str5;
            }
            serializedData.writeString(str2);
            serializedData.writeInt64(proxyInfo.ping);
            serializedData.writeInt64(proxyInfo.availableCheckTime);
        }
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putString("proxy_list", Base64.encodeToString(serializedData.toByteArray(), 2)).apply();
        serializedData.cleanup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$saveProxyList$4(ProxyInfo proxyInfo, ProxyInfo proxyInfo2) {
        ProxyInfo proxyInfo3 = currentProxy;
        long j = proxyInfo3 == proxyInfo ? -200000L : 0L;
        if (!proxyInfo.available) {
            j += 100000;
        }
        long j2 = proxyInfo3 != proxyInfo2 ? 0L : -200000L;
        if (!proxyInfo2.available) {
            j2 += 100000;
        }
        return Long.compare(proxyInfo.ping + j, proxyInfo2.ping + j2);
    }

    public static ProxyInfo addProxy(ProxyInfo proxyInfo) {
        loadProxyList();
        int size = proxyList.size();
        for (int i = 0; i < size; i++) {
            ProxyInfo proxyInfo2 = proxyList.get(i);
            if (proxyInfo.address.equals(proxyInfo2.address) && proxyInfo.port == proxyInfo2.port && proxyInfo.username.equals(proxyInfo2.username) && proxyInfo.password.equals(proxyInfo2.password) && proxyInfo.secret.equals(proxyInfo2.secret)) {
                return proxyInfo2;
            }
        }
        proxyList.add(0, proxyInfo);
        saveProxyList();
        return proxyInfo;
    }

    public static boolean isProxyEnabled() {
        return MessagesController.getGlobalMainSettings().getBoolean("proxy_enabled", false) && currentProxy != null;
    }

    public static void deleteProxy(ProxyInfo proxyInfo) {
        if (currentProxy == proxyInfo) {
            currentProxy = null;
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            boolean z = globalMainSettings.getBoolean("proxy_enabled", false);
            SharedPreferences.Editor edit = globalMainSettings.edit();
            edit.putString("proxy_ip", "");
            edit.putString("proxy_pass", "");
            edit.putString("proxy_user", "");
            edit.putString("proxy_secret", "");
            edit.putInt("proxy_port", 1080);
            edit.putBoolean("proxy_enabled", false);
            edit.putBoolean("proxy_enabled_calls", false);
            edit.apply();
            if (z) {
                ConnectionsManager.setProxySettings(false, "", 0, "", "", "");
            }
        }
        proxyList.remove(proxyInfo);
        saveProxyList();
    }

    public static void checkSaveToGalleryFiles() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SharedConfig$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                SharedConfig.lambda$checkSaveToGalleryFiles$5();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkSaveToGalleryFiles$5() {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), "Telegram");
            File file2 = new File(file, "Telegram Images");
            file2.mkdir();
            File file3 = new File(file, "Telegram Video");
            file3.mkdir();
            if (!BuildVars.NO_SCOPED_STORAGE) {
                if (file2.isDirectory()) {
                    new File(file2, ".nomedia").delete();
                }
                if (file3.isDirectory()) {
                    new File(file3, ".nomedia").delete();
                    return;
                }
                return;
            }
            if (file2.isDirectory()) {
                AndroidUtilities.createEmptyFile(new File(file2, ".nomedia"));
            }
            if (file3.isDirectory()) {
                AndroidUtilities.createEmptyFile(new File(file3, ".nomedia"));
            }
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    public static int getChatSwipeAction(int i) {
        boolean isFoldersHidden = FiltersController.getInstance(i).isFoldersHidden();
        boolean z = FiltersController.getInstance(i).getActiveSortingTabsCount(false) > 0;
        int i2 = chatSwipeAction;
        if (i2 < 0) {
            return ((isFoldersHidden || MessagesController.getInstance(i).dialogFilters.isEmpty()) && !z) ? 2 : 5;
        } else if (i2 != 5 || (!(isFoldersHidden || MessagesController.getInstance(i).dialogFilters.isEmpty()) || z)) {
            return chatSwipeAction;
        } else {
            return 2;
        }
    }

    public static void updateChatListSwipeSetting(int i) {
        chatSwipeAction = i;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("ChatSwipeAction", chatSwipeAction).apply();
    }

    public static void updateMessageSeenHintCount(int i) {
        messageSeenHintCount = i;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("messageSeenCount", messageSeenHintCount).apply();
    }

    public static void updateEmojiInteractionsHintCount(int i) {
        emojiInteractionsHintCount = i;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("emojiInteractionsHintCount", emojiInteractionsHintCount).apply();
    }

    public static void updateDayNightThemeSwitchHintCount(int i) {
        dayNightThemeSwitchHintCount = i;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("dayNightThemeSwitchHintCount", dayNightThemeSwitchHintCount).apply();
    }

    public static void updateStealthModeSendMessageConfirm(int i) {
        stealthModeSendMessageConfirm = i;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("stealthModeSendMessageConfirm", stealthModeSendMessageConfirm).apply();
    }

    public static int getDevicePerformanceClass() {
        int i = overrideDevicePerformanceClass;
        if (i != -1) {
            return i;
        }
        if (devicePerformanceClass == -1) {
            devicePerformanceClass = measureDevicePerformanceClass();
        }
        return devicePerformanceClass;
    }

    public static int measureDevicePerformanceClass() {
        long j;
        String str;
        int i = Build.VERSION.SDK_INT;
        int i2 = ConnectionsManager.CPU_COUNT;
        int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
        int i3 = 0;
        if (i >= 31 && (str = Build.SOC_MODEL) != null) {
            int hashCode = str.toUpperCase().hashCode();
            int i4 = 0;
            while (true) {
                int[] iArr = LOW_SOC;
                if (i4 >= iArr.length) {
                    break;
                } else if (iArr[i4] == hashCode) {
                    return 0;
                } else {
                    i4++;
                }
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(String.format(Locale.ENGLISH, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq", Integer.valueOf(i7)), "r");
                String readLine = randomAccessFile.readLine();
                if (readLine != null) {
                    i6 += Utilities.parseInt((CharSequence) readLine).intValue() / 1000;
                    i5++;
                }
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
        int ceil = i5 == 0 ? -1 : (int) Math.ceil(i6 / i5);
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryInfo(memoryInfo);
            j = memoryInfo.totalMem;
        } catch (Exception unused2) {
            j = -1;
        }
        if (i >= 21 && i2 > 2 && memoryClass > 100 && ((i2 > 4 || ceil == -1 || ceil > 1250) && ((i2 > 4 || ceil > 1600 || memoryClass > 128 || i > 21) && ((i2 > 4 || ceil > 1300 || memoryClass > 128 || i > 24) && (j == -1 || j >= 2147483648L))))) {
            i3 = (i2 < 8 || memoryClass <= 160 || (ceil != -1 && ceil <= 2055) || (ceil == -1 && i2 == 8 && i <= 23)) ? 1 : 2;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m102d("device performance info selected_class = " + i3 + " (cpu_count = " + i2 + ", freq = " + ceil + ", memoryClass = " + memoryClass + ", android version " + i + ", manufacture " + Build.MANUFACTURER + ", screenRefreshRate=" + AndroidUtilities.screenRefreshRate + ")");
        }
        return i3;
    }

    public static void setMediaColumnsCount(int i) {
        if (mediaColumnsCount != i) {
            mediaColumnsCount = i;
            ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("mediaColumnsCount", mediaColumnsCount).apply();
        }
    }

    public static void setStoriesColumnsCount(int i) {
        if (storiesColumnsCount != i) {
            storiesColumnsCount = i;
            ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("storiesColumnsCount", storiesColumnsCount).apply();
        }
    }

    public static void setFastScrollHintCount(int i) {
        if (fastScrollHintCount != i) {
            fastScrollHintCount = i;
            ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("fastScrollHintCount", fastScrollHintCount).apply();
        }
    }

    public static void setDontAskManageStorage(boolean z) {
        dontAskManageStorage = z;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putBoolean("dontAskManageStorage", dontAskManageStorage).apply();
    }

    public static boolean canBlurChat() {
        return getDevicePerformanceClass() == 2;
    }

    public static boolean chatBlurEnabled() {
        return canBlurChat() && LiteMode.isEnabled(256);
    }

    /* loaded from: classes4.dex */
    public static class BackgroundActivityPrefs {
        private static SharedPreferences prefs;

        public static long getLastCheckedBackgroundActivity() {
            return prefs.getLong("last_checked", 0L);
        }

        public static void setLastCheckedBackgroundActivity(long j) {
            prefs.edit().putLong("last_checked", j).apply();
        }

        public static int getDismissedCount() {
            return prefs.getInt("dismissed_count", 0);
        }

        public static void increaseDismissedCount() {
            prefs.edit().putInt("dismissed_count", getDismissedCount() + 1).apply();
        }
    }

    public static void setAnimationsEnabled(boolean z) {
        animationsEnabled = Boolean.valueOf(z);
    }

    public static boolean animationsEnabled() {
        if (animationsEnabled == null) {
            animationsEnabled = Boolean.valueOf(MessagesController.getGlobalMainSettings().getBoolean("view_animations", true));
        }
        return animationsEnabled.booleanValue();
    }

    public static SharedPreferences getPreferences() {
        return ApplicationLoader.applicationContext.getSharedPreferences("userconfing", 0);
    }

    public static boolean deviceIsLow() {
        return getDevicePerformanceClass() == 0;
    }

    public static boolean deviceIsAboveAverage() {
        return getDevicePerformanceClass() >= 1;
    }

    public static boolean deviceIsHigh() {
        return getDevicePerformanceClass() >= 2;
    }

    public static boolean deviceIsAverage() {
        return getDevicePerformanceClass() <= 1;
    }

    public static void toggleRoundCamera() {
        bigCameraForRound = !bigCameraForRound;
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putBoolean("bigCameraForRound", bigCameraForRound).apply();
    }

    @Deprecated
    public static int getLegacyDevicePerformanceClass() {
        if (legacyDevicePerformanceClass == -1) {
            int i = Build.VERSION.SDK_INT;
            int i2 = ConnectionsManager.CPU_COUNT;
            int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(String.format(Locale.ENGLISH, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq", Integer.valueOf(i5)), "r");
                    String readLine = randomAccessFile.readLine();
                    if (readLine != null) {
                        i4 += Utilities.parseInt((CharSequence) readLine).intValue() / 1000;
                        i3++;
                    }
                    randomAccessFile.close();
                } catch (Throwable unused) {
                }
            }
            int ceil = i3 == 0 ? -1 : (int) Math.ceil(i4 / i3);
            if (i < 21 || i2 <= 2 || memoryClass <= 100 || ((i2 <= 4 && ceil != -1 && ceil <= 1250) || ((i2 <= 4 && ceil <= 1600 && memoryClass <= 128 && i <= 21) || (i2 <= 4 && ceil <= 1300 && memoryClass <= 128 && i <= 24)))) {
                legacyDevicePerformanceClass = 0;
            } else if (i2 < 8 || memoryClass <= 160 || ((ceil != -1 && ceil <= 2050) || (ceil == -1 && i2 == 8 && i <= 23))) {
                legacyDevicePerformanceClass = 1;
            } else {
                legacyDevicePerformanceClass = 2;
            }
        }
        return legacyDevicePerformanceClass;
    }

    private static void loadDebugConfig(SharedPreferences sharedPreferences) {
        drawActionBarShadow = sharedPreferences.getBoolean("drawActionBarShadow", true);
    }

    public static void saveDebugConfig() {
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putBoolean("drawActionBarShadow", drawActionBarShadow);
    }
}
