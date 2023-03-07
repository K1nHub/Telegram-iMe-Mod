package org.telegram.messenger;

import android.app.ActivityManager;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import androidx.core.content.p009pm.ShortcutManagerCompat;
import com.google.android.exoplayer2.C0474C;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.p031ui.drawer.DrawerAccountData;
import com.smedialink.p031ui.drawer.DrawerSwitchableItem;
import java.io.File;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.fork.controller.FiltersController;
import org.fork.enums.ChatProfileTelegramIdMode;
import org.fork.enums.DialogType;
import org.fork.enums.DrawerHolidayIconType;
import org.fork.enums.ExtendedAvatarPreviewerItem;
import org.fork.enums.FilterTabNotificationMode;
import org.fork.enums.FilterTabWidthMode;
import org.fork.enums.PhotoViewerMenuItem;
import org.fork.enums.StickersSize;
import org.fork.enums.TemplatesMode;
import org.fork.enums.TemplatesSortingType;
import org.fork.enums.VideoVoiceCamera;
import org.fork.models.DrawerHeaderSettings;
import org.json.JSONObject;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLRPC$TL_help_appUpdate;
/* loaded from: classes4.dex */
public class SharedConfig {
    private static final int[] AVERAGE_DEVICES;
    private static final int[] HIGH_DEVICES;
    private static final int[] LOW_DEVICES;
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
    public static boolean allowScreenCapture = false;
    private static Boolean animationsEnabled = null;
    public static boolean appLocked = false;
    public static boolean archiveHidden = false;
    public static int autoLockIn = 3600;
    public static int badPasscodeTries = 0;
    public static int bubbleRadius = 0;
    public static boolean chatBubbles = false;
    private static int chatSwipeAction = 0;
    private static boolean configLoaded = false;
    public static ProxyInfo currentProxy = null;
    public static boolean customTabs = false;
    public static int dayNightThemeSwitchHintCount = 0;
    public static boolean debugWebView = false;
    private static int devicePerformanceClass = 0;
    public static boolean directShare = false;
    public static String directShareHash = null;
    public static boolean disableVoiceAudioEffects = false;
    public static int distanceSystemType = 0;
    public static boolean dontAskManageStorage = false;
    public static boolean drawDialogIcons = false;
    public static DrawerHolidayIconType drawerHolidayIconType = null;
    public static int emojiInteractionsHintCount = 0;
    public static int fastScrollHintCount = 0;
    public static int fontSize = 0;
    public static boolean fontSizeIsDefault = false;
    public static boolean forceDisableTabletMode = false;
    public static boolean forceRtmpStream = false;
    public static boolean forwardingOptionsHintShown = false;
    public static boolean hasCameraCache = false;
    public static boolean hasEmailLogin = false;
    public static boolean inappCamera = false;
    public static boolean isActionBarAccountSwitchEnabled = false;
    public static boolean isAlbumsIntroShown = false;
    public static boolean isBotHelpTranslateEnabled = false;
    public static boolean isCallsConfirmationEnabled = false;
    public static boolean isChatSortingEnabledByDefault = false;
    public static boolean isChatThemesEnabled = false;
    public static boolean isCloudAlbumsEnabled = false;
    public static boolean isCombineMessagesEnabled = false;
    public static boolean isCustomSharingModeEnabled = false;
    public static boolean isDebugForceHighPerformanceEnabled = false;
    public static boolean isDebugThemeSwitchEnabled = false;
    public static boolean isDeleteCloudConfirmationEnabled = false;
    public static boolean isDialogsCompactModeEnabled = false;
    public static boolean isExtendedAvatarPreviewerByTapEnabled = false;
    public static boolean isExtendedAvatarPreviewerEnabled = false;
    public static boolean isFilesOriginalNameSavingEnabled = false;
    public static boolean isFilesSendingPreviewAndCaptionEnabled = false;
    public static boolean isFilterTabsAtBottomEnabled = false;
    public static boolean isFloatingDebugActive = false;
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
    public static boolean isPinnedPlayerThemeOverridden = false;
    public static boolean isPlayerPinned = false;
    public static boolean isProfileInfoHidden = false;
    public static boolean isProxyButtonForceVisible = false;
    public static boolean isRaiseToSwitchSpeakerEnabled = false;
    public static boolean isReactionsEnabled = false;
    public static boolean isReactionsInSendPopupEnabled = false;
    public static boolean isReadAllChatsConfirmationShown = false;
    public static boolean isRememberLastFilterTabEnabled = false;
    public static boolean isSendingGifConfirmationEnabled = false;
    public static boolean isSendingStickerConfirmationEnabled = false;
    public static boolean isShowDrawerHeaderArchiveEnabled = false;
    public static boolean isShowDrawerHeaderAvatarEnabled = false;
    public static boolean isShowDrawerHeaderSubtitleEnabled = false;
    public static boolean isShowDrawerHeaderTitleEnabled = false;
    public static boolean isSortCloudAlbumsByNameEnabled = false;
    public static boolean isSpeakWithoutHoldEnabled = false;
    public static boolean isSuggestPremiumReactionsEmoji = false;
    public static boolean isTranslateInSendPopupEnabled = false;
    public static boolean isVibrationEnabled = false;
    public static boolean isVideoSpeakWithoutHoldEnabled = false;
    public static boolean isWaitingForPasscodeEnter = false;
    public static boolean isWaitingForSectionPasscodeEnter = false;
    public static int ivFontSize = 0;
    public static int lastKeepMediaCheckTime = 0;
    public static int lastLockedSectionsPauseTime = 0;
    public static int lastLogsCheckTime = 0;
    public static int lastPauseTime = 0;
    public static String lastSelectedLanguage = null;
    public static long lastUpdateCheckTime = 0;
    public static String lastUpdateVersion = null;
    public static long lastUptimeMillis = 0;
    public static LiteMode liteMode = null;
    public static int lockRecordAudioVideoHint = 0;
    public static int mediaColumnsCount = 0;
    public static int messageSeenHintCount = 0;
    public static boolean noSoundHintShowed = false;
    public static boolean noStatusBar = false;
    public static boolean noiseSupression = false;
    private static int overrideDevicePerformanceClass = 0;
    public static String passcodeHash = "";
    public static long passcodeRetryInMs = 0;
    public static int passcodeType = 0;
    public static int passportConfigHash = 0;
    private static HashMap<String, String> passportConfigMap = null;
    public static boolean pauseMusicOnRecord = false;
    public static TLRPC$TL_help_appUpdate pendingAppUpdate = null;
    public static int pendingAppUpdateBuildVersion = 0;
    public static boolean playOrderReversed = false;
    public static ArrayList<ProxyInfo> proxyList = null;
    private static boolean proxyListLoaded = false;
    public static boolean proxyRotationEnabled = false;
    public static int proxyRotationTimeout = 0;
    public static byte[] pushAuthKey = null;
    public static byte[] pushAuthKeyId = null;
    public static boolean pushStatSent = false;
    public static String pushString = "";
    public static long pushStringGetTimeEnd = 0;
    public static long pushStringGetTimeStart = 0;
    public static String pushStringStatus = "";
    public static int pushType = 2;
    public static boolean raiseToSpeak = false;
    public static boolean recordViaSco = false;
    public static int repeatMode = 0;
    public static boolean roundCamera16to9 = false;
    public static boolean saveIncomingPhotos = false;
    public static boolean saveStreamMedia = false;
    public static int scheduledOrNoSoundHintShows = 0;
    public static int searchMessagesAsListHintShows = 0;
    public static boolean searchMessagesAsListUsed = false;
    public static ChatProfileTelegramIdMode selectedChatProfileTelegramIdMode = null;
    public static Set<DialogType> selectedDialogTypesForMessagePopupReactions = null;
    public static DrawerAccountData selectedDrawerHeaderSubtitle = null;
    public static DrawerAccountData selectedDrawerHeaderTitle = null;
    public static Set<DrawerSwitchableItem> selectedDrawerItems = null;
    public static List<ExtendedAvatarPreviewerItem> selectedExtendedAvatarPreviewerItems = null;
    public static FilterTabWidthMode selectedFilterTabWidthMode = null;
    public static FilterTabNotificationMode selectedFilterTabsNotificationMode = null;
    public static Set<PhotoViewerMenuItem> selectedPhotoViewerMenuItems = null;
    public static StickersSize selectedStickersSize = null;
    public static TemplatesMode selectedTemplatesMode = null;
    public static TemplatesSortingType selectedTemplatesSortingType = null;
    public static VideoVoiceCamera selectedVideoVoiceCamera = null;
    public static boolean showNotificationsForAllAccounts = false;
    public static boolean shuffleMusic = false;
    public static boolean smoothKeyboard = false;
    public static boolean sortContactsByName = false;
    public static boolean sortFilesByName = false;
    public static boolean stickersReorderingHintUsed = false;
    public static String storageCacheDir = null;
    public static boolean streamAllVideo = false;
    public static boolean streamMedia = false;
    public static boolean streamMkv = false;
    public static boolean suggestAnimatedEmoji = false;
    public static int suggestStickers = 0;
    public static int textSelectionHintShows = 0;
    public static boolean translateChats = false;
    public static boolean useFingerprint = true;
    public static boolean useLNavigation;
    public static boolean useSystemEmoji;
    public static boolean useThreeLinesLayout;
    public static byte[] passcodeSalt = new byte[0];
    public static int keepMedia = CacheByChatsController.KEEP_MEDIA_ONE_MONTH;
    public static boolean updateStickersOrderOnSend = true;
    private static int lastLocalId = -210000;
    private static String passportConfigJson = "";
    private static final Object sync = new Object();
    private static final Object localIdSync = new Object();
    public static int mapPreviewType = 2;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface PasscodeType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface PerformanceClass {
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

    public static void setLastLockedSectionsPauseTime(int i) {
        lastLockedSectionsPauseTime = i;
        MessagesController.getGlobalMainSettings().edit().putInt(TelegramPreferenceKeys.Global.lastLockedSectionsPauseTime(), lastLockedSectionsPauseTime).apply();
    }

    public static void setWaitingForSectionPasscodeEnter(boolean z) {
        isWaitingForSectionPasscodeEnter = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isWaitingForSectionPasscodeEnter(), isWaitingForSectionPasscodeEnter).apply();
    }

    public static void setDebugThemeSwitchEnabled(boolean z) {
        isDebugThemeSwitchEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isDebugThemeSwitchEnabled(), isDebugThemeSwitchEnabled).apply();
    }

    public static void setDebugForceHighPerformanceEnabled(boolean z) {
        isDebugForceHighPerformanceEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isDebugForceHighPerformanceEnabled(), isDebugForceHighPerformanceEnabled).apply();
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

    public static void setRaiseToSwitchSpeakerEnabled(boolean z) {
        isRaiseToSwitchSpeakerEnabled = z;
        if (!z && raiseToSpeak) {
            toogleRaiseToSpeak();
        }
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isRaiseToSwitchSpeakerEnabled(), isRaiseToSwitchSpeakerEnabled).apply();
    }

    public static void setSelectedStickersSize(StickersSize stickersSize) {
        selectedStickersSize = stickersSize;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedStickersSize(), selectedStickersSize.name()).apply();
    }

    public static void setProxyButtonForceVisible(boolean z) {
        isProxyButtonForceVisible = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isProxyButtonForceVisible(), isProxyButtonForceVisible).apply();
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

    public static void setSelectedDrawerItems(Set<DrawerSwitchableItem> set) {
        selectedDrawerItems = new HashSet(set);
        MessagesController.getGlobalMainSettings().edit().putStringSet(TelegramPreferenceKeys.Global.selectedDrawerItems(), DrawerSwitchableItem.mapEnumsToNames(selectedDrawerItems)).apply();
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
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.dialogsNeedReload, Boolean.TRUE);
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

    public static void setCustomSharingModeEnabled(boolean z) {
        isCustomSharingModeEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isCustomSharingModeEnabled(), isCustomSharingModeEnabled).apply();
    }

    public static void setMultiReplyEnabled(boolean z) {
        isMultiReplyEnabled = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isMultiReplyEnabled(), isMultiReplyEnabled).apply();
    }

    public static void setSelectedChatProfileTelegramIdMode(ChatProfileTelegramIdMode chatProfileTelegramIdMode) {
        selectedChatProfileTelegramIdMode = chatProfileTelegramIdMode;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.selectedChatProfileTelegramIdMode(), selectedChatProfileTelegramIdMode.name()).apply();
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
        NotificationCenter.getInstance(UserConfig.selectedAccount).postNotificationName(NotificationCenter.combineMessagesSettingsDidChanged, new Object[0]);
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

    public static void setPinnedPlayerThemeOverridden(boolean z) {
        isPinnedPlayerThemeOverridden = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isPinnedPlayerThemeOverridden(), isPinnedPlayerThemeOverridden).apply();
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
        NotificationCenter.getInstance(UserConfig.selectedAccount).postNotificationName(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    public static void setLastSelectedLanguage(String str) {
        lastSelectedLanguage = str;
        MessagesController.getGlobalMainSettings().edit().putString(TelegramPreferenceKeys.Global.lastSelectedLanguages(), lastSelectedLanguage).apply();
    }

    public static void setSuggestPremiumReactionsEmoji(boolean z) {
        isSuggestPremiumReactionsEmoji = z;
        MessagesController.getGlobalMainSettings().edit().putBoolean(TelegramPreferenceKeys.Global.isSuggestPremiumReactionsEmoji(), isSuggestPremiumReactionsEmoji).apply();
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

    public static boolean loopStickers() {
        return LiteMode.isEnabled(2);
    }

    static {
        chatBubbles = Build.VERSION.SDK_INT >= 30;
        raiseToSpeak = false;
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
        smoothKeyboard = true;
        pauseMusicOnRecord = false;
        noStatusBar = true;
        showNotificationsForAllAccounts = true;
        fontSize = 16;
        bubbleRadius = 17;
        ivFontSize = 16;
        mediaColumnsCount = 3;
        fastScrollHintCount = 3;
        translateChats = true;
        LOW_SOC = new int[]{-1775228513, 802464304, 802464333, 802464302, 2067362118, 2067362060, 2067362084, 2067362241, 2067362117, 2067361998, -1853602818};
        LOW_DEVICES = new int[]{1903542002, 1904553494, 1616144535, -713271737, -1394191140, -270252297, -270251367, -270252359};
        AVERAGE_DEVICES = new int[]{812981419, -993913431};
        HIGH_DEVICES = new int[]{1908570923, -980514379, 577463889, 1764745014, 1908524435, -215787089, -215458996, -1394179578, 220599115, 1737652784};
        loadConfig();
        proxyList = new ArrayList<>();
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
                edit.putBoolean("forwardingOptionsHintShown", forwardingOptionsHintShown);
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
                edit2.putBoolean("useLNavigation", useLNavigation);
                edit2.putBoolean("floatingDebugActive", isFloatingDebugActive);
                edit2.putBoolean("record_via_sco", recordViaSco);
                edit2.apply();
            } catch (Exception e) {
                FileLog.m45e(e);
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

    /* JADX WARN: Removed duplicated region for block: B:38:0x017a A[Catch: Exception -> 0x019c, all -> 0x07da, TryCatch #1 {Exception -> 0x019c, blocks: (B:22:0x012b, B:24:0x0133, B:26:0x0143, B:27:0x0157, B:38:0x017a, B:40:0x017e, B:41:0x0180, B:43:0x0184, B:45:0x018a, B:47:0x0190, B:49:0x0194, B:36:0x0174), top: B:94:0x012b, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x017e A[Catch: Exception -> 0x019c, all -> 0x07da, TryCatch #1 {Exception -> 0x019c, blocks: (B:22:0x012b, B:24:0x0133, B:26:0x0143, B:27:0x0157, B:38:0x017a, B:40:0x017e, B:41:0x0180, B:43:0x0184, B:45:0x018a, B:47:0x0190, B:49:0x0194, B:36:0x0174), top: B:94:0x012b, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x060b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x061d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x06a3 A[Catch: all -> 0x07da, TryCatch #2 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x000d, B:11:0x00e7, B:12:0x00ed, B:14:0x00f5, B:16:0x00f9, B:17:0x0106, B:19:0x0114, B:21:0x011f, B:22:0x012b, B:24:0x0133, B:26:0x0143, B:27:0x0157, B:29:0x015b, B:30:0x016d, B:38:0x017a, B:40:0x017e, B:41:0x0180, B:43:0x0184, B:45:0x018a, B:47:0x0190, B:49:0x0194, B:36:0x0174, B:53:0x01a0, B:55:0x05aa, B:59:0x05b5, B:61:0x05d9, B:65:0x05e4, B:69:0x060d, B:73:0x061e, B:75:0x06a3, B:76:0x06a5, B:77:0x07c4, B:79:0x07ca, B:81:0x07ce, B:85:0x07d6, B:84:0x07d3, B:52:0x019d, B:20:0x011b, B:87:0x07d8), top: B:96:0x0003, inners: #1, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void loadConfig() {
        /*
            Method dump skipped, instructions count: 2013
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

    public static void increaseBadPasscodeTries() {
        int i = badPasscodeTries + 1;
        badPasscodeTries = i;
        if (i >= 3) {
            if (i == 3) {
                passcodeRetryInMs = 5000L;
            } else if (i == 4) {
                passcodeRetryInMs = 10000L;
            } else if (i == 5) {
                passcodeRetryInMs = C0474C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
            } else if (i == 6) {
                passcodeRetryInMs = SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
            } else if (i == 7) {
                passcodeRetryInMs = 25000L;
            } else {
                passcodeRetryInMs = 30000L;
            }
            lastUptimeMillis = SystemClock.elapsedRealtime();
        }
        saveConfig();
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
                FileLog.m45e(th);
            }
        }
        return passportConfigMap;
    }

    public static boolean isAppUpdateAvailable() {
        int i;
        TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate = pendingAppUpdate;
        if (tLRPC$TL_help_appUpdate == null || tLRPC$TL_help_appUpdate.document == null || !BuildVars.isStandaloneApp()) {
            return false;
        }
        try {
            i = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            FileLog.m45e(e);
            i = BuildVars.BUILD_VERSION;
        }
        return pendingAppUpdateBuildVersion == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean setNewAppVersionAvailable(org.telegram.tgnet.TLRPC$TL_help_appUpdate r4) {
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
            r2 = 0
        L1a:
            org.telegram.messenger.FileLog.m45e(r1)
            r1 = 0
        L1e:
            if (r2 != 0) goto L22
            int r2 = org.telegram.messenger.BuildVars.BUILD_VERSION
        L22:
            if (r1 != 0) goto L26
            java.lang.String r1 = org.telegram.messenger.BuildVars.BUILD_VERSION_STRING
        L26:
            java.lang.String r3 = r4.version
            if (r3 == 0) goto L3a
            int r1 = r1.compareTo(r3)
            if (r1 < 0) goto L31
            goto L3a
        L31:
            org.telegram.messenger.SharedConfig.pendingAppUpdate = r4
            org.telegram.messenger.SharedConfig.pendingAppUpdateBuildVersion = r2
            saveConfig()
            r4 = 1
            return r4
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SharedConfig.setNewAppVersionAvailable(org.telegram.tgnet.TLRPC$TL_help_appUpdate):boolean");
    }

    public static boolean checkPasscode(String str) {
        if (passcodeSalt.length == 0) {
            boolean equals = Utilities.MD5(str).equals(passcodeHash);
            if (equals) {
                try {
                    passcodeSalt = new byte[16];
                    Utilities.random.nextBytes(passcodeSalt);
                    byte[] bytes = str.getBytes("UTF-8");
                    int length = bytes.length + 32;
                    byte[] bArr = new byte[length];
                    System.arraycopy(passcodeSalt, 0, bArr, 0, 16);
                    System.arraycopy(bytes, 0, bArr, 16, bytes.length);
                    System.arraycopy(passcodeSalt, 0, bArr, bytes.length + 16, 16);
                    passcodeHash = Utilities.bytesToHex(Utilities.computeSHA256(bArr, 0, length));
                    saveConfig();
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            return equals;
        }
        try {
            byte[] bytes2 = str.getBytes("UTF-8");
            int length2 = bytes2.length + 32;
            byte[] bArr2 = new byte[length2];
            System.arraycopy(passcodeSalt, 0, bArr2, 0, 16);
            System.arraycopy(bytes2, 0, bArr2, 16, bytes2.length);
            System.arraycopy(passcodeSalt, 0, bArr2, bytes2.length + 16, 16);
            return passcodeHash.equals(Utilities.bytesToHex(Utilities.computeSHA256(bArr2, 0, length2)));
        } catch (Exception e2) {
            FileLog.m45e(e2);
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
        lockRecordAudioVideoHint = 0;
        forwardingOptionsHintShown = false;
        messageSeenHintCount = 3;
        emojiInteractionsHintCount = 3;
        dayNightThemeSwitchHintCount = 3;
        saveConfig();
    }

    public static void setSuggestStickers(int i) {
        suggestStickers = i;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("suggestStickers", suggestStickers);
        edit.commit();
    }

    public static void setSearchMessagesAsListUsed(boolean z) {
        searchMessagesAsListUsed = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("searchMessagesAsListUsed", searchMessagesAsListUsed);
        edit.commit();
    }

    public static void setStickersReorderingHintUsed(boolean z) {
        stickersReorderingHintUsed = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("stickersReorderingHintUsed", stickersReorderingHintUsed);
        edit.commit();
    }

    public static void increaseTextSelectionHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = textSelectionHintShows + 1;
        textSelectionHintShows = i;
        edit.putInt("textSelectionHintShows", i);
        edit.commit();
    }

    public static void removeTextSelectionHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("textSelectionHintShows", 3);
        edit.commit();
    }

    public static void increaseScheduledOrNoSuoundHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = scheduledOrNoSoundHintShows + 1;
        scheduledOrNoSoundHintShows = i;
        edit.putInt("scheduledOrNoSoundHintShows", i);
        edit.commit();
    }

    public static void forwardingOptionsHintHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        forwardingOptionsHintShown = true;
        edit.putBoolean("forwardingOptionsHintShown", true);
        edit.commit();
    }

    public static void removeScheduledOrNoSoundHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("scheduledOrNoSoundHintShows", 3);
        edit.commit();
    }

    public static void increaseLockRecordAudioVideoHintShowed() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = lockRecordAudioVideoHint + 1;
        lockRecordAudioVideoHint = i;
        edit.putInt("lockRecordAudioVideoHint", i);
        edit.commit();
    }

    public static void removeLockRecordAudioVideoHint() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("lockRecordAudioVideoHint", 3);
        edit.commit();
    }

    public static void increaseSearchAsListHintShows() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        int i = searchMessagesAsListHintShows + 1;
        searchMessagesAsListHintShows = i;
        edit.putInt("searchMessagesAsListHintShows", i);
        edit.commit();
    }

    public static void setKeepMedia(int i) {
        keepMedia = i;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("keep_media", keepMedia);
        edit.commit();
    }

    public static void toggleUpdateStickersOrderOnSend() {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        boolean z = !updateStickersOrderOnSend;
        updateStickersOrderOnSend = z;
        edit.putBoolean("updateStickersOrderOnSend", z);
        edit.commit();
    }

    public static void checkLogsToDelete() {
        if (BuildVars.LOGS_ENABLED) {
            final int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            if (Math.abs(currentTimeMillis - lastLogsCheckTime) < 3600) {
                return;
            }
            lastLogsCheckTime = currentTimeMillis;
            Utilities.cacheClearQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SharedConfig$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SharedConfig.lambda$checkLogsToDelete$0(currentTimeMillis);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkLogsToDelete$0(int i) {
        File logsDir;
        long j = i - 864000;
        try {
            logsDir = AndroidUtilities.getLogsDir();
        } catch (Throwable th) {
            FileLog.m45e(th);
        }
        if (logsDir == null) {
            return;
        }
        Utilities.clearDir(logsDir.getAbsolutePath(), 0, j, false);
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("lastLogsCheckTime", lastLogsCheckTime);
        edit.commit();
    }

    public static void toggleDisableVoiceAudioEffects() {
        disableVoiceAudioEffects = !disableVoiceAudioEffects;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("disableVoiceAudioEffects", disableVoiceAudioEffects);
        edit.commit();
    }

    public static void toggleNoiseSupression() {
        noiseSupression = !noiseSupression;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("noiseSupression", noiseSupression);
        edit.commit();
    }

    public static void toggleForceRTMPStream() {
        forceRtmpStream = !forceRtmpStream;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("forceRtmpStream", forceRtmpStream);
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

    public static void toggleNoStatusBar() {
        noStatusBar = !noStatusBar;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("noStatusBar", noStatusBar);
        edit.commit();
    }

    public static void toggleLoopStickers() {
        LiteMode.toggleFlag(2);
    }

    public static void toggleBigEmoji() {
        allowBigEmoji = !allowBigEmoji;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("allowBigEmoji", allowBigEmoji);
        edit.commit();
    }

    public static void toggleSuggestAnimatedEmoji() {
        suggestAnimatedEmoji = !suggestAnimatedEmoji;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("suggestAnimatedEmoji", suggestAnimatedEmoji);
        edit.commit();
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
        edit.commit();
    }

    public static void setRepeatMode(int i) {
        repeatMode = i;
        if (i < 0 || i > 2) {
            repeatMode = 0;
        }
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("repeatMode", repeatMode);
        edit.commit();
    }

    public static void overrideDevicePerformanceClass(int i) {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        overrideDevicePerformanceClass = i;
        edit.putInt("overrideDevicePerformanceClass", i).remove("lite_mode").commit();
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
        edit.commit();
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.dialogsNeedReload, Boolean.TRUE);
    }

    public static void toggleArchiveHidden() {
        archiveHidden = !archiveHidden;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("archiveHidden", archiveHidden);
        edit.commit();
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
        edit.commit();
    }

    public static void setNoSoundHintShowed(boolean z) {
        if (noSoundHintShowed == z) {
            return;
        }
        noSoundHintShowed = z;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("noSoundHintShowed", noSoundHintShowed);
        edit.commit();
    }

    public static void toogleRaiseToSpeak() {
        boolean z = !raiseToSpeak;
        raiseToSpeak = z;
        raiseToSpeak = z & isRaiseToSwitchSpeakerEnabled;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("raise_to_speak", raiseToSpeak);
        edit.commit();
    }

    public static void toggleCustomTabs() {
        customTabs = !customTabs;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("custom_tabs", customTabs);
        edit.commit();
    }

    public static void toggleDirectShare() {
        directShare = !directShare;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("direct_share", directShare);
        edit.commit();
        ShortcutManagerCompat.removeAllDynamicShortcuts(ApplicationLoader.applicationContext);
        MediaDataController.getInstance(UserConfig.selectedAccount).buildShortcuts();
    }

    public static void toggleStreamMedia() {
        streamMedia = !streamMedia;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("streamMedia", streamMedia);
        edit.commit();
    }

    public static void toggleSortContactsByName() {
        sortContactsByName = !sortContactsByName;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("sortContactsByName", sortContactsByName);
        edit.commit();
    }

    public static void toggleSortFilesByName() {
        sortFilesByName = !sortFilesByName;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("sortFilesByName", sortFilesByName);
        edit.commit();
    }

    public static void toggleStreamAllVideo() {
        streamAllVideo = !streamAllVideo;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("streamAllVideo", streamAllVideo);
        edit.commit();
    }

    public static void toggleStreamMkv() {
        streamMkv = !streamMkv;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("streamMkv", streamMkv);
        edit.commit();
    }

    public static void toggleSaveStreamMedia() {
        saveStreamMedia = !saveStreamMedia;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("saveStreamMedia", saveStreamMedia);
        edit.commit();
    }

    public static void toggleSmoothKeyboard() {
        smoothKeyboard = !smoothKeyboard;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("smoothKeyboard2", smoothKeyboard);
        edit.commit();
    }

    public static void togglePauseMusicOnRecord() {
        pauseMusicOnRecord = !pauseMusicOnRecord;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("pauseMusicOnRecord", pauseMusicOnRecord);
        edit.commit();
    }

    public static void toggleChatBlur() {
        LiteMode.toggleFlag(256);
    }

    public static void toggleForceDisableTabletMode() {
        forceDisableTabletMode = !forceDisableTabletMode;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("forceDisableTabletMode", forceDisableTabletMode);
        edit.commit();
    }

    public static void toggleInappCamera() {
        inappCamera = !inappCamera;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("inappCamera", inappCamera);
        edit.commit();
    }

    public static void toggleRoundCamera16to9() {
        roundCamera16to9 = !roundCamera16to9;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("roundCamera16to9", roundCamera16to9);
        edit.commit();
    }

    public static void setDistanceSystemType(int i) {
        distanceSystemType = i;
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putInt("distanceSystemType", distanceSystemType);
        edit.commit();
        LocaleController.resetImperialSystemType();
    }

    public static void loadProxyList() {
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
                byte readByte = serializedData.readByte(false);
                if (readByte == 2) {
                    int readInt322 = serializedData.readInt32(false);
                    for (int i2 = 0; i2 < readInt322; i2++) {
                        ProxyInfo proxyInfo = new ProxyInfo(serializedData.readString(false), serializedData.readInt32(false), serializedData.readString(false), serializedData.readString(false), serializedData.readString(false));
                        proxyInfo.ping = serializedData.readInt64(false);
                        proxyInfo.availableCheckTime = serializedData.readInt64(false);
                        proxyList.add(proxyInfo);
                        if (currentProxy == null && !TextUtils.isEmpty(string) && string.equals(proxyInfo.address) && i == proxyInfo.port && string2.equals(proxyInfo.username) && string3.equals(proxyInfo.password)) {
                            currentProxy = proxyInfo;
                        }
                    }
                } else {
                    FileLog.m47e("Unknown proxy schema version: " + ((int) readByte));
                }
            } else {
                for (int i3 = 0; i3 < readInt32; i3++) {
                    ProxyInfo proxyInfo2 = new ProxyInfo(serializedData.readString(false), serializedData.readInt32(false), serializedData.readString(false), serializedData.readString(false), serializedData.readString(false));
                    proxyList.add(proxyInfo2);
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
        Collections.sort(arrayList, SharedConfig$$ExternalSyntheticLambda3.INSTANCE);
        SerializedData serializedData = new SerializedData();
        serializedData.writeInt32(-1);
        serializedData.writeByte(2);
        int size = arrayList.size();
        serializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
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
        ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putString("proxy_list", Base64.encodeToString(serializedData.toByteArray(), 2)).commit();
        serializedData.cleanup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$saveProxyList$1(ProxyInfo proxyInfo, ProxyInfo proxyInfo2) {
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
        proxyList.add(proxyInfo);
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
            edit.commit();
            if (z) {
                ConnectionsManager.setProxySettings(false, "", 0, "", "", "");
            }
        }
        proxyList.remove(proxyInfo);
        saveProxyList();
    }

    public static void checkSaveToGalleryFiles() {
        Utilities.globalQueue.postRunnable(SharedConfig$$ExternalSyntheticLambda1.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkSaveToGalleryFiles$2() {
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
            FileLog.m45e(th);
        }
    }

    public static int getChatSwipeAction(int i) {
        boolean isHideFoldersEnabled = FiltersController.getInstance(i).isHideFoldersEnabled();
        boolean z = FiltersController.getInstance(i).getActiveSortingTabsCount(false) > 0;
        int i2 = chatSwipeAction;
        if (i2 < 0) {
            return ((isHideFoldersEnabled || MessagesController.getInstance(i).dialogFilters.isEmpty()) && !z) ? 2 : 5;
        } else if (i2 != 5 || (!(isHideFoldersEnabled || MessagesController.getInstance(i).dialogFilters.isEmpty()) || z)) {
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

    public static int getDevicePerformanceClass() {
        if (isDebugForceHighPerformanceEnabled) {
            return 2;
        }
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
        String str2;
        int i = Build.VERSION.SDK_INT;
        int i2 = ConnectionsManager.CPU_COUNT;
        int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
        String str3 = Build.DEVICE;
        int i3 = 2;
        if (str3 != null && (str2 = Build.MANUFACTURER) != null) {
            int hashCode = (str2 + " " + str3).toUpperCase().hashCode();
            int i4 = 0;
            while (true) {
                int[] iArr = LOW_DEVICES;
                if (i4 >= iArr.length) {
                    int i5 = 0;
                    while (true) {
                        int[] iArr2 = AVERAGE_DEVICES;
                        if (i5 >= iArr2.length) {
                            int i6 = 0;
                            while (true) {
                                int[] iArr3 = HIGH_DEVICES;
                                if (i6 >= iArr3.length) {
                                    break;
                                } else if (iArr3[i6] == hashCode) {
                                    return 2;
                                } else {
                                    i6++;
                                }
                            }
                        } else if (iArr2[i5] == hashCode) {
                            return 1;
                        } else {
                            i5++;
                        }
                    }
                } else if (iArr[i4] == hashCode) {
                    return 0;
                } else {
                    i4++;
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 31 && (str = Build.SOC_MODEL) != null) {
            int hashCode2 = str.toUpperCase().hashCode();
            int i7 = 0;
            while (true) {
                int[] iArr4 = LOW_SOC;
                if (i7 >= iArr4.length) {
                    break;
                } else if (iArr4[i7] == hashCode2) {
                    return 0;
                } else {
                    i7++;
                }
            }
        }
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < i2; i10++) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(String.format(Locale.ENGLISH, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq", Integer.valueOf(i10)), "r");
                String readLine = randomAccessFile.readLine();
                if (readLine != null) {
                    i9 += Utilities.parseInt((CharSequence) readLine).intValue() / 1000;
                    i8++;
                }
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
        int ceil = i8 == 0 ? -1 : (int) Math.ceil(i9 / i8);
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryInfo(memoryInfo);
            j = memoryInfo.totalMem;
        } catch (Exception unused2) {
            j = -1;
        }
        if (i < 21 || i2 <= 2 || memoryClass <= 100 || ((i2 <= 4 && ceil != -1 && ceil <= 1250) || ((i2 <= 4 && ceil <= 1600 && memoryClass <= 128 && i <= 21) || ((i2 <= 4 && ceil <= 1300 && memoryClass <= 128 && i <= 24) || (j != -1 && j < 2147483648L))))) {
            i3 = 0;
        } else if (i2 < 8 || memoryClass <= 160 || ((ceil != -1 && ceil <= 2055) || (ceil == -1 && i2 == 8 && i <= 23))) {
            i3 = 1;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m48d("device performance info selected_class = " + i3 + " (cpu_count = " + i2 + ", freq = " + ceil + ", memoryClass = " + memoryClass + ", android version " + i + ", manufacture " + Build.MANUFACTURER + ", screenRefreshRate=" + AndroidUtilities.screenRefreshRate + ")");
        }
        return i3;
    }

    public static void setMediaColumnsCount(int i) {
        if (mediaColumnsCount != i) {
            mediaColumnsCount = i;
            ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putInt("mediaColumnsCount", mediaColumnsCount).apply();
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
}
