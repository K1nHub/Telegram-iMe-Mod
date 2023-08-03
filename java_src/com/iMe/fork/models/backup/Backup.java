package com.iMe.fork.models.backup;

import com.google.android.exoplayer2.C0480C;
import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import com.iMe.fork.enums.DrawerHolidayIconType;
import com.iMe.fork.models.DrawerHeaderSettings;
import com.iMe.storage.domain.model.HistoryDialogModel;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.storage.domain.model.filters.FilterSettingsModel;
import com.iMe.storage.domain.model.music.PlaylistModel;
import com.iMe.storage.domain.model.templates.TemplateModel;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: Backup.kt */
/* loaded from: classes3.dex */
public final class Backup {
    private final List<Long> albums;
    private final String allChatsTabFab;
    private final Set<String> allChatsTabFabs;
    private final List<FilterFab> allChatsTabMultiFabs;
    private final Map<String, Pair<List<Long>, List<Integer>>> archiveSortingPinnedChats;
    private final List<SortingTabStateBackup> archiveSortingSettings;
    private final Map<String, Set<String>> chatAttachAlertButtons;
    private final List<DialogTranslationSettings> dialogSettings;
    private final DrawerHeaderSettings drawerHeaderSettings;
    private final DrawerHolidayIconType drawerHolidayIconType;
    private final Set<String> drawerItems;
    private final Boolean filterTabsAtBottom;
    private final String filterTabsNotificationMode;
    private final String filterTabsWidthMode;
    private final List<FilterSettingsModel> filters;
    private final Boolean foldersFirst;
    private final List<Long> hiddenChatDialogs;
    private final Boolean hideFolders;
    private final Boolean iconInsteadAllChatsTabTitle;
    private final Boolean isActionBarAccountSwitchEnabled;
    private final Boolean isAlbumsIntroShown;
    private final Boolean isAllChatsTabEnabled;
    private final Boolean isArchiveSortingChatsEnabled;
    private final Boolean isAutoBackupEnabled;
    private final Boolean isBotHelpTranslateEnabled;
    private final Boolean isCLoudAlbumsEnabled;
    private final Boolean isCallsConfirmationEnabled;
    private final Boolean isChannelWidePostsEnabled;
    private final Boolean isChatSortingEnabledByDefault;
    private final Boolean isChatThemesEnabled;
    private final Boolean isCombineMessagesEnabled;
    private final Boolean isDeleteCloudConfirmationEnabled;
    private final Boolean isDialogsCompactModeEnabled;
    private final Boolean isExtendedAvatarPreviewerByTapEnabled;
    private final Boolean isExtendedAvatarPreviewerEnabled;
    private final Boolean isFilesSendingPreviewAndCaptionEnabled;
    private final Boolean isHideChatKeyboardOnScrollEnabled;
    private final Boolean isHideMultiPanelOnScrollEnabled;
    private final Boolean isMainActionBarMenuEnabled;
    private final Boolean isMessagePopupAggregatorEnabled;
    private final Boolean isMessageQuickTranslateEnabled;
    private final Boolean isMultiForwardingOptionsHintShown;
    private final Boolean isMultiPanelEnabled;
    private final Boolean isMultiReplyEnabled;
    private final Boolean isMusicIntroShown;
    private final Boolean isOpenAlbumsInsteadCloudEnabled;
    private final Boolean isOpenForwardingOptionsAutomaticallyEnabled;
    private final Boolean isPinnedPlayerMinimized;
    private final Boolean isPinnedPlayerNightThemeEnabled;
    private final Boolean isPinnedPlayerThemeOverridden;
    private final Boolean isPlayerPinned;
    private final Boolean isPremiumAnimateAvatars;
    private final Boolean isPremiumAnimateStickers;
    private final Boolean isPremiumShowBadge;
    private final Boolean isPremiumShowStatus;
    private final Boolean isProfileInfoHidden;
    private final Boolean isProxyButtonEnabled;
    private final Boolean isProxyButtonVisible;
    private final Boolean isQuickReactionEnabled;
    private final Boolean isReactionsEnabled;
    private final Boolean isReactionsInSendPopupEnabled;
    private final Boolean isReadAllChatsConfirmationShown;
    private final Boolean isRecentChatsEnabled;
    private final Boolean isRememberLastDialogEnabled;
    private final Boolean isRevokeByDefault;
    private final Boolean isSaveArchiveRecentChatsEnabled;
    private final Boolean isSendingGifConfirmationEnabled;
    private final Boolean isSendingStickerConfirmationEnabled;
    private final Boolean isShowChannelBottomPanel;
    private final Boolean isSilentSendingEnabled;
    private final Boolean isSortCloudAlbumsByNameEnabled;
    private final Boolean isSortingChatsEnabled;
    private final Boolean isSpeakWithoutHoldEnabled;
    private final Boolean isStoriesAvatarsEnabled;
    private final Boolean isStoriesBarEnabled;
    private final Boolean isStoriesEnabled;
    private final Boolean isStoriesProfileAvatarEnabled;
    private final Boolean isSuggestPremiumReactionsEmoji;
    private final Boolean isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled;
    private final Boolean isSwipeToGoToNextUnreadDialogEnabled;
    private final Boolean isTranslateInSendPopupEnabled;
    private final Boolean isVibrationEnabled;
    private final Boolean isVideoSpeakWithoutHoldEnabled;
    private final List<String> messagePopupItems;
    private final Map<String, List<MultiPanelButtonStateBackup>> multiPanelSettings;
    private final Map<Long, PlaylistModel> musicPlaylists;
    private final Boolean noTopicFirst;
    private final List<HistoryDialogModel> pinnedRecentChats;
    private final Boolean rememberLastFilterTab;
    private final String selectedAutoBackupInterval;
    private final String selectedChatProfileTelegramIdMode;
    private final String selectedContactsFilter;
    private final Set<String> selectedDialogTypesForMessagePopupReactions;
    private final Set<String> selectedDrawStatusTypes;
    private final Set<String> selectedExtendedAvatarPreviewerItems;
    private final String selectedMusicTab;
    private final Set<String> selectedPhotoViewerMenuItems;
    private final Set<String> selectedRecentChatsDialogTypes;
    private final String selectedSentMessageFont;
    private final String selectedStickersSize;
    private final String selectedTemplatesSortingType;
    private final String selectedVideoVoiceCamera;
    private final Map<String, Pair<List<Long>, List<Integer>>> sortingPinnedChats;
    private final List<SortingTabStateBackup> sortingSettings;
    private final Set<String> swipeToGoToNextUnreadDialogTypes;
    private final List<TemplateModel> templates;
    private final Long templatesChannelId;
    private final String templatesMode;
    private final List<TopicBackup> topics;
    private final Boolean topicsBarAtBottom;
    private final Boolean topicsEnabled;
    private final Integer version;

    public Backup() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, -1, -1, RtpPacket.MAX_SEQUENCE_NUMBER, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Backup copy$default(Backup backup, Boolean bool, String str, Boolean bool2, Boolean bool3, String str2, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, String str3, Boolean bool10, Boolean bool11, Boolean bool12, Boolean bool13, DrawerHeaderSettings drawerHeaderSettings, Set set, Boolean bool14, Boolean bool15, Boolean bool16, Boolean bool17, Boolean bool18, Boolean bool19, Set set2, Boolean bool20, Boolean bool21, Boolean bool22, Map map, Boolean bool23, Boolean bool24, Set set3, List list, Boolean bool25, Boolean bool26, Boolean bool27, Boolean bool28, Boolean bool29, Boolean bool30, Boolean bool31, Boolean bool32, String str4, Boolean bool33, Set set4, Boolean bool34, Set set5, Boolean bool35, Boolean bool36, String str5, Boolean bool37, Boolean bool38, Boolean bool39, Boolean bool40, String str6, Boolean bool41, Boolean bool42, Set set6, Boolean bool43, Set set7, Boolean bool44, Boolean bool45, DrawerHolidayIconType drawerHolidayIconType, Boolean bool46, Boolean bool47, Map map2, Boolean bool48, String str7, String str8, Boolean bool49, Boolean bool50, Boolean bool51, List list2, Boolean bool52, Boolean bool53, Boolean bool54, Set set8, Boolean bool55, List list3, Boolean bool56, List list4, Map map3, Map map4, Boolean bool57, Boolean bool58, Boolean bool59, Boolean bool60, List list5, List list6, Boolean bool61, Boolean bool62, Boolean bool63, Boolean bool64, Boolean bool65, Boolean bool66, Boolean bool67, Boolean bool68, Boolean bool69, String str9, Map map5, String str10, String str11, Long l, List list7, Boolean bool70, Boolean bool71, Boolean bool72, List list8, Integer num, String str12, List list9, List list10, List list11, int i, int i2, int i3, int i4, Object obj) {
        return backup.copy((i & 1) != 0 ? backup.isAutoBackupEnabled : bool, (i & 2) != 0 ? backup.selectedAutoBackupInterval : str, (i & 4) != 0 ? backup.isFilesSendingPreviewAndCaptionEnabled : bool2, (i & 8) != 0 ? backup.isVibrationEnabled : bool3, (i & 16) != 0 ? backup.selectedStickersSize : str2, (i & 32) != 0 ? backup.isQuickReactionEnabled : bool4, (i & 64) != 0 ? backup.isPremiumAnimateStickers : bool5, (i & 128) != 0 ? backup.isPremiumShowBadge : bool6, (i & 256) != 0 ? backup.isPremiumShowStatus : bool7, (i & 512) != 0 ? backup.isPremiumAnimateAvatars : bool8, (i & 1024) != 0 ? backup.isProxyButtonVisible : bool9, (i & 2048) != 0 ? backup.selectedContactsFilter : str3, (i & 4096) != 0 ? backup.isReadAllChatsConfirmationShown : bool10, (i & 8192) != 0 ? backup.isProfileInfoHidden : bool11, (i & 16384) != 0 ? backup.isMultiForwardingOptionsHintShown : bool12, (i & LiteMode.FLAG_CHAT_SCALE) != 0 ? backup.isSuggestPremiumReactionsEmoji : bool13, (i & 65536) != 0 ? backup.drawerHeaderSettings : drawerHeaderSettings, (i & 131072) != 0 ? backup.drawerItems : set, (i & 262144) != 0 ? backup.isActionBarAccountSwitchEnabled : bool14, (i & 524288) != 0 ? backup.isMainActionBarMenuEnabled : bool15, (i & 1048576) != 0 ? backup.isProxyButtonEnabled : bool16, (i & 2097152) != 0 ? backup.isDialogsCompactModeEnabled : bool17, (i & 4194304) != 0 ? backup.isSwipeToGoToNextUnreadDialogEnabled : bool18, (i & 8388608) != 0 ? backup.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled : bool19, (i & ConnectionsManager.FileTypePhoto) != 0 ? backup.swipeToGoToNextUnreadDialogTypes : set2, (i & ConnectionsManager.FileTypeVideo) != 0 ? backup.isShowChannelBottomPanel : bool20, (i & ConnectionsManager.FileTypeFile) != 0 ? backup.isHideChatKeyboardOnScrollEnabled : bool21, (i & C0480C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? backup.isChatThemesEnabled : bool22, (i & 268435456) != 0 ? backup.chatAttachAlertButtons : map, (i & 536870912) != 0 ? backup.isExtendedAvatarPreviewerEnabled : bool23, (i & 1073741824) != 0 ? backup.isExtendedAvatarPreviewerByTapEnabled : bool24, (i & Integer.MIN_VALUE) != 0 ? backup.selectedExtendedAvatarPreviewerItems : set3, (i2 & 1) != 0 ? backup.messagePopupItems : list, (i2 & 2) != 0 ? backup.isMessagePopupAggregatorEnabled : bool25, (i2 & 4) != 0 ? backup.isChannelWidePostsEnabled : bool26, (i2 & 8) != 0 ? backup.isCallsConfirmationEnabled : bool27, (i2 & 16) != 0 ? backup.isDeleteCloudConfirmationEnabled : bool28, (i2 & 32) != 0 ? backup.isSendingGifConfirmationEnabled : bool29, (i2 & 64) != 0 ? backup.isSendingStickerConfirmationEnabled : bool30, (i2 & 128) != 0 ? backup.isSpeakWithoutHoldEnabled : bool31, (i2 & 256) != 0 ? backup.isVideoSpeakWithoutHoldEnabled : bool32, (i2 & 512) != 0 ? backup.selectedVideoVoiceCamera : str4, (i2 & 1024) != 0 ? backup.isRecentChatsEnabled : bool33, (i2 & 2048) != 0 ? backup.selectedRecentChatsDialogTypes : set4, (i2 & 4096) != 0 ? backup.isSaveArchiveRecentChatsEnabled : bool34, (i2 & 8192) != 0 ? backup.selectedDrawStatusTypes : set5, (i2 & 16384) != 0 ? backup.isOpenForwardingOptionsAutomaticallyEnabled : bool35, (i2 & LiteMode.FLAG_CHAT_SCALE) != 0 ? backup.isMultiReplyEnabled : bool36, (i2 & 65536) != 0 ? backup.selectedChatProfileTelegramIdMode : str5, (i2 & 131072) != 0 ? backup.isMessageQuickTranslateEnabled : bool37, (i2 & 262144) != 0 ? backup.isBotHelpTranslateEnabled : bool38, (i2 & 524288) != 0 ? backup.isTranslateInSendPopupEnabled : bool39, (i2 & 1048576) != 0 ? backup.isSilentSendingEnabled : bool40, (i2 & 2097152) != 0 ? backup.selectedSentMessageFont : str6, (i2 & 4194304) != 0 ? backup.isRememberLastDialogEnabled : bool41, (i2 & 8388608) != 0 ? backup.isCombineMessagesEnabled : bool42, (i2 & ConnectionsManager.FileTypePhoto) != 0 ? backup.selectedPhotoViewerMenuItems : set6, (i2 & ConnectionsManager.FileTypeVideo) != 0 ? backup.isReactionsEnabled : bool43, (i2 & ConnectionsManager.FileTypeFile) != 0 ? backup.selectedDialogTypesForMessagePopupReactions : set7, (i2 & C0480C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? backup.isReactionsInSendPopupEnabled : bool44, (i2 & 268435456) != 0 ? backup.isRevokeByDefault : bool45, (i2 & 536870912) != 0 ? backup.drawerHolidayIconType : drawerHolidayIconType, (i2 & 1073741824) != 0 ? backup.isMultiPanelEnabled : bool46, (i2 & Integer.MIN_VALUE) != 0 ? backup.isHideMultiPanelOnScrollEnabled : bool47, (i3 & 1) != 0 ? backup.multiPanelSettings : map2, (i3 & 2) != 0 ? backup.filterTabsAtBottom : bool48, (i3 & 4) != 0 ? backup.filterTabsNotificationMode : str7, (i3 & 8) != 0 ? backup.filterTabsWidthMode : str8, (i3 & 16) != 0 ? backup.rememberLastFilterTab : bool49, (i3 & 32) != 0 ? backup.hideFolders : bool50, (i3 & 64) != 0 ? backup.foldersFirst : bool51, (i3 & 128) != 0 ? backup.filters : list2, (i3 & 256) != 0 ? backup.isChatSortingEnabledByDefault : bool52, (i3 & 512) != 0 ? backup.isAllChatsTabEnabled : bool53, (i3 & 1024) != 0 ? backup.iconInsteadAllChatsTabTitle : bool54, (i3 & 2048) != 0 ? backup.allChatsTabFabs : set8, (i3 & 4096) != 0 ? backup.isSortingChatsEnabled : bool55, (i3 & 8192) != 0 ? backup.sortingSettings : list3, (i3 & 16384) != 0 ? backup.isArchiveSortingChatsEnabled : bool56, (i3 & LiteMode.FLAG_CHAT_SCALE) != 0 ? backup.archiveSortingSettings : list4, (i3 & 65536) != 0 ? backup.sortingPinnedChats : map3, (i3 & 131072) != 0 ? backup.archiveSortingPinnedChats : map4, (i3 & 262144) != 0 ? backup.isCLoudAlbumsEnabled : bool57, (i3 & 524288) != 0 ? backup.isAlbumsIntroShown : bool58, (i3 & 1048576) != 0 ? backup.isSortCloudAlbumsByNameEnabled : bool59, (i3 & 2097152) != 0 ? backup.isOpenAlbumsInsteadCloudEnabled : bool60, (i3 & 4194304) != 0 ? backup.albums : list5, (i3 & 8388608) != 0 ? backup.dialogSettings : list6, (i3 & ConnectionsManager.FileTypePhoto) != 0 ? backup.isStoriesEnabled : bool61, (i3 & ConnectionsManager.FileTypeVideo) != 0 ? backup.isStoriesBarEnabled : bool62, (i3 & ConnectionsManager.FileTypeFile) != 0 ? backup.isStoriesAvatarsEnabled : bool63, (i3 & C0480C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? backup.isStoriesProfileAvatarEnabled : bool64, (i3 & 268435456) != 0 ? backup.isPlayerPinned : bool65, (i3 & 536870912) != 0 ? backup.isPinnedPlayerMinimized : bool66, (i3 & 1073741824) != 0 ? backup.isPinnedPlayerThemeOverridden : bool67, (i3 & Integer.MIN_VALUE) != 0 ? backup.isPinnedPlayerNightThemeEnabled : bool68, (i4 & 1) != 0 ? backup.isMusicIntroShown : bool69, (i4 & 2) != 0 ? backup.selectedMusicTab : str9, (i4 & 4) != 0 ? backup.musicPlaylists : map5, (i4 & 8) != 0 ? backup.templatesMode : str10, (i4 & 16) != 0 ? backup.selectedTemplatesSortingType : str11, (i4 & 32) != 0 ? backup.templatesChannelId : l, (i4 & 64) != 0 ? backup.templates : list7, (i4 & 128) != 0 ? backup.topicsEnabled : bool70, (i4 & 256) != 0 ? backup.topicsBarAtBottom : bool71, (i4 & 512) != 0 ? backup.noTopicFirst : bool72, (i4 & 1024) != 0 ? backup.topics : list8, (i4 & 2048) != 0 ? backup.version : num, (i4 & 4096) != 0 ? backup.allChatsTabFab : str12, (i4 & 8192) != 0 ? backup.allChatsTabMultiFabs : list9, (i4 & 16384) != 0 ? backup.hiddenChatDialogs : list10, (i4 & LiteMode.FLAG_CHAT_SCALE) != 0 ? backup.pinnedRecentChats : list11);
    }

    public final Backup copy(Boolean bool, String str, Boolean bool2, Boolean bool3, String str2, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, String str3, Boolean bool10, Boolean bool11, Boolean bool12, Boolean bool13, DrawerHeaderSettings drawerHeaderSettings, Set<String> set, Boolean bool14, Boolean bool15, Boolean bool16, Boolean bool17, Boolean bool18, Boolean bool19, Set<String> set2, Boolean bool20, Boolean bool21, Boolean bool22, Map<String, Set<String>> map, Boolean bool23, Boolean bool24, Set<String> set3, List<String> list, Boolean bool25, Boolean bool26, Boolean bool27, Boolean bool28, Boolean bool29, Boolean bool30, Boolean bool31, Boolean bool32, String str4, Boolean bool33, Set<String> set4, Boolean bool34, Set<String> set5, Boolean bool35, Boolean bool36, String str5, Boolean bool37, Boolean bool38, Boolean bool39, Boolean bool40, String str6, Boolean bool41, Boolean bool42, Set<String> set6, Boolean bool43, Set<String> set7, Boolean bool44, Boolean bool45, DrawerHolidayIconType drawerHolidayIconType, Boolean bool46, Boolean bool47, Map<String, List<MultiPanelButtonStateBackup>> map2, Boolean bool48, String str7, String str8, Boolean bool49, Boolean bool50, Boolean bool51, List<FilterSettingsModel> list2, Boolean bool52, Boolean bool53, Boolean bool54, Set<String> set8, Boolean bool55, List<SortingTabStateBackup> list3, Boolean bool56, List<SortingTabStateBackup> list4, Map<String, Pair<List<Long>, List<Integer>>> map3, Map<String, Pair<List<Long>, List<Integer>>> map4, Boolean bool57, Boolean bool58, Boolean bool59, Boolean bool60, List<Long> list5, List<DialogTranslationSettings> list6, Boolean bool61, Boolean bool62, Boolean bool63, Boolean bool64, Boolean bool65, Boolean bool66, Boolean bool67, Boolean bool68, Boolean bool69, String str9, Map<Long, PlaylistModel> map5, String str10, String str11, Long l, List<TemplateModel> list7, Boolean bool70, Boolean bool71, Boolean bool72, List<TopicBackup> list8, Integer num, String allChatsTabFab, List<FilterFab> list9, List<Long> list10, List<HistoryDialogModel> list11) {
        Intrinsics.checkNotNullParameter(allChatsTabFab, "allChatsTabFab");
        return new Backup(bool, str, bool2, bool3, str2, bool4, bool5, bool6, bool7, bool8, bool9, str3, bool10, bool11, bool12, bool13, drawerHeaderSettings, set, bool14, bool15, bool16, bool17, bool18, bool19, set2, bool20, bool21, bool22, map, bool23, bool24, set3, list, bool25, bool26, bool27, bool28, bool29, bool30, bool31, bool32, str4, bool33, set4, bool34, set5, bool35, bool36, str5, bool37, bool38, bool39, bool40, str6, bool41, bool42, set6, bool43, set7, bool44, bool45, drawerHolidayIconType, bool46, bool47, map2, bool48, str7, str8, bool49, bool50, bool51, list2, bool52, bool53, bool54, set8, bool55, list3, bool56, list4, map3, map4, bool57, bool58, bool59, bool60, list5, list6, bool61, bool62, bool63, bool64, bool65, bool66, bool67, bool68, bool69, str9, map5, str10, str11, l, list7, bool70, bool71, bool72, list8, num, allChatsTabFab, list9, list10, list11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Backup) {
            Backup backup = (Backup) obj;
            return Intrinsics.areEqual(this.isAutoBackupEnabled, backup.isAutoBackupEnabled) && Intrinsics.areEqual(this.selectedAutoBackupInterval, backup.selectedAutoBackupInterval) && Intrinsics.areEqual(this.isFilesSendingPreviewAndCaptionEnabled, backup.isFilesSendingPreviewAndCaptionEnabled) && Intrinsics.areEqual(this.isVibrationEnabled, backup.isVibrationEnabled) && Intrinsics.areEqual(this.selectedStickersSize, backup.selectedStickersSize) && Intrinsics.areEqual(this.isQuickReactionEnabled, backup.isQuickReactionEnabled) && Intrinsics.areEqual(this.isPremiumAnimateStickers, backup.isPremiumAnimateStickers) && Intrinsics.areEqual(this.isPremiumShowBadge, backup.isPremiumShowBadge) && Intrinsics.areEqual(this.isPremiumShowStatus, backup.isPremiumShowStatus) && Intrinsics.areEqual(this.isPremiumAnimateAvatars, backup.isPremiumAnimateAvatars) && Intrinsics.areEqual(this.isProxyButtonVisible, backup.isProxyButtonVisible) && Intrinsics.areEqual(this.selectedContactsFilter, backup.selectedContactsFilter) && Intrinsics.areEqual(this.isReadAllChatsConfirmationShown, backup.isReadAllChatsConfirmationShown) && Intrinsics.areEqual(this.isProfileInfoHidden, backup.isProfileInfoHidden) && Intrinsics.areEqual(this.isMultiForwardingOptionsHintShown, backup.isMultiForwardingOptionsHintShown) && Intrinsics.areEqual(this.isSuggestPremiumReactionsEmoji, backup.isSuggestPremiumReactionsEmoji) && Intrinsics.areEqual(this.drawerHeaderSettings, backup.drawerHeaderSettings) && Intrinsics.areEqual(this.drawerItems, backup.drawerItems) && Intrinsics.areEqual(this.isActionBarAccountSwitchEnabled, backup.isActionBarAccountSwitchEnabled) && Intrinsics.areEqual(this.isMainActionBarMenuEnabled, backup.isMainActionBarMenuEnabled) && Intrinsics.areEqual(this.isProxyButtonEnabled, backup.isProxyButtonEnabled) && Intrinsics.areEqual(this.isDialogsCompactModeEnabled, backup.isDialogsCompactModeEnabled) && Intrinsics.areEqual(this.isSwipeToGoToNextUnreadDialogEnabled, backup.isSwipeToGoToNextUnreadDialogEnabled) && Intrinsics.areEqual(this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled, backup.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled) && Intrinsics.areEqual(this.swipeToGoToNextUnreadDialogTypes, backup.swipeToGoToNextUnreadDialogTypes) && Intrinsics.areEqual(this.isShowChannelBottomPanel, backup.isShowChannelBottomPanel) && Intrinsics.areEqual(this.isHideChatKeyboardOnScrollEnabled, backup.isHideChatKeyboardOnScrollEnabled) && Intrinsics.areEqual(this.isChatThemesEnabled, backup.isChatThemesEnabled) && Intrinsics.areEqual(this.chatAttachAlertButtons, backup.chatAttachAlertButtons) && Intrinsics.areEqual(this.isExtendedAvatarPreviewerEnabled, backup.isExtendedAvatarPreviewerEnabled) && Intrinsics.areEqual(this.isExtendedAvatarPreviewerByTapEnabled, backup.isExtendedAvatarPreviewerByTapEnabled) && Intrinsics.areEqual(this.selectedExtendedAvatarPreviewerItems, backup.selectedExtendedAvatarPreviewerItems) && Intrinsics.areEqual(this.messagePopupItems, backup.messagePopupItems) && Intrinsics.areEqual(this.isMessagePopupAggregatorEnabled, backup.isMessagePopupAggregatorEnabled) && Intrinsics.areEqual(this.isChannelWidePostsEnabled, backup.isChannelWidePostsEnabled) && Intrinsics.areEqual(this.isCallsConfirmationEnabled, backup.isCallsConfirmationEnabled) && Intrinsics.areEqual(this.isDeleteCloudConfirmationEnabled, backup.isDeleteCloudConfirmationEnabled) && Intrinsics.areEqual(this.isSendingGifConfirmationEnabled, backup.isSendingGifConfirmationEnabled) && Intrinsics.areEqual(this.isSendingStickerConfirmationEnabled, backup.isSendingStickerConfirmationEnabled) && Intrinsics.areEqual(this.isSpeakWithoutHoldEnabled, backup.isSpeakWithoutHoldEnabled) && Intrinsics.areEqual(this.isVideoSpeakWithoutHoldEnabled, backup.isVideoSpeakWithoutHoldEnabled) && Intrinsics.areEqual(this.selectedVideoVoiceCamera, backup.selectedVideoVoiceCamera) && Intrinsics.areEqual(this.isRecentChatsEnabled, backup.isRecentChatsEnabled) && Intrinsics.areEqual(this.selectedRecentChatsDialogTypes, backup.selectedRecentChatsDialogTypes) && Intrinsics.areEqual(this.isSaveArchiveRecentChatsEnabled, backup.isSaveArchiveRecentChatsEnabled) && Intrinsics.areEqual(this.selectedDrawStatusTypes, backup.selectedDrawStatusTypes) && Intrinsics.areEqual(this.isOpenForwardingOptionsAutomaticallyEnabled, backup.isOpenForwardingOptionsAutomaticallyEnabled) && Intrinsics.areEqual(this.isMultiReplyEnabled, backup.isMultiReplyEnabled) && Intrinsics.areEqual(this.selectedChatProfileTelegramIdMode, backup.selectedChatProfileTelegramIdMode) && Intrinsics.areEqual(this.isMessageQuickTranslateEnabled, backup.isMessageQuickTranslateEnabled) && Intrinsics.areEqual(this.isBotHelpTranslateEnabled, backup.isBotHelpTranslateEnabled) && Intrinsics.areEqual(this.isTranslateInSendPopupEnabled, backup.isTranslateInSendPopupEnabled) && Intrinsics.areEqual(this.isSilentSendingEnabled, backup.isSilentSendingEnabled) && Intrinsics.areEqual(this.selectedSentMessageFont, backup.selectedSentMessageFont) && Intrinsics.areEqual(this.isRememberLastDialogEnabled, backup.isRememberLastDialogEnabled) && Intrinsics.areEqual(this.isCombineMessagesEnabled, backup.isCombineMessagesEnabled) && Intrinsics.areEqual(this.selectedPhotoViewerMenuItems, backup.selectedPhotoViewerMenuItems) && Intrinsics.areEqual(this.isReactionsEnabled, backup.isReactionsEnabled) && Intrinsics.areEqual(this.selectedDialogTypesForMessagePopupReactions, backup.selectedDialogTypesForMessagePopupReactions) && Intrinsics.areEqual(this.isReactionsInSendPopupEnabled, backup.isReactionsInSendPopupEnabled) && Intrinsics.areEqual(this.isRevokeByDefault, backup.isRevokeByDefault) && this.drawerHolidayIconType == backup.drawerHolidayIconType && Intrinsics.areEqual(this.isMultiPanelEnabled, backup.isMultiPanelEnabled) && Intrinsics.areEqual(this.isHideMultiPanelOnScrollEnabled, backup.isHideMultiPanelOnScrollEnabled) && Intrinsics.areEqual(this.multiPanelSettings, backup.multiPanelSettings) && Intrinsics.areEqual(this.filterTabsAtBottom, backup.filterTabsAtBottom) && Intrinsics.areEqual(this.filterTabsNotificationMode, backup.filterTabsNotificationMode) && Intrinsics.areEqual(this.filterTabsWidthMode, backup.filterTabsWidthMode) && Intrinsics.areEqual(this.rememberLastFilterTab, backup.rememberLastFilterTab) && Intrinsics.areEqual(this.hideFolders, backup.hideFolders) && Intrinsics.areEqual(this.foldersFirst, backup.foldersFirst) && Intrinsics.areEqual(this.filters, backup.filters) && Intrinsics.areEqual(this.isChatSortingEnabledByDefault, backup.isChatSortingEnabledByDefault) && Intrinsics.areEqual(this.isAllChatsTabEnabled, backup.isAllChatsTabEnabled) && Intrinsics.areEqual(this.iconInsteadAllChatsTabTitle, backup.iconInsteadAllChatsTabTitle) && Intrinsics.areEqual(this.allChatsTabFabs, backup.allChatsTabFabs) && Intrinsics.areEqual(this.isSortingChatsEnabled, backup.isSortingChatsEnabled) && Intrinsics.areEqual(this.sortingSettings, backup.sortingSettings) && Intrinsics.areEqual(this.isArchiveSortingChatsEnabled, backup.isArchiveSortingChatsEnabled) && Intrinsics.areEqual(this.archiveSortingSettings, backup.archiveSortingSettings) && Intrinsics.areEqual(this.sortingPinnedChats, backup.sortingPinnedChats) && Intrinsics.areEqual(this.archiveSortingPinnedChats, backup.archiveSortingPinnedChats) && Intrinsics.areEqual(this.isCLoudAlbumsEnabled, backup.isCLoudAlbumsEnabled) && Intrinsics.areEqual(this.isAlbumsIntroShown, backup.isAlbumsIntroShown) && Intrinsics.areEqual(this.isSortCloudAlbumsByNameEnabled, backup.isSortCloudAlbumsByNameEnabled) && Intrinsics.areEqual(this.isOpenAlbumsInsteadCloudEnabled, backup.isOpenAlbumsInsteadCloudEnabled) && Intrinsics.areEqual(this.albums, backup.albums) && Intrinsics.areEqual(this.dialogSettings, backup.dialogSettings) && Intrinsics.areEqual(this.isStoriesEnabled, backup.isStoriesEnabled) && Intrinsics.areEqual(this.isStoriesBarEnabled, backup.isStoriesBarEnabled) && Intrinsics.areEqual(this.isStoriesAvatarsEnabled, backup.isStoriesAvatarsEnabled) && Intrinsics.areEqual(this.isStoriesProfileAvatarEnabled, backup.isStoriesProfileAvatarEnabled) && Intrinsics.areEqual(this.isPlayerPinned, backup.isPlayerPinned) && Intrinsics.areEqual(this.isPinnedPlayerMinimized, backup.isPinnedPlayerMinimized) && Intrinsics.areEqual(this.isPinnedPlayerThemeOverridden, backup.isPinnedPlayerThemeOverridden) && Intrinsics.areEqual(this.isPinnedPlayerNightThemeEnabled, backup.isPinnedPlayerNightThemeEnabled) && Intrinsics.areEqual(this.isMusicIntroShown, backup.isMusicIntroShown) && Intrinsics.areEqual(this.selectedMusicTab, backup.selectedMusicTab) && Intrinsics.areEqual(this.musicPlaylists, backup.musicPlaylists) && Intrinsics.areEqual(this.templatesMode, backup.templatesMode) && Intrinsics.areEqual(this.selectedTemplatesSortingType, backup.selectedTemplatesSortingType) && Intrinsics.areEqual(this.templatesChannelId, backup.templatesChannelId) && Intrinsics.areEqual(this.templates, backup.templates) && Intrinsics.areEqual(this.topicsEnabled, backup.topicsEnabled) && Intrinsics.areEqual(this.topicsBarAtBottom, backup.topicsBarAtBottom) && Intrinsics.areEqual(this.noTopicFirst, backup.noTopicFirst) && Intrinsics.areEqual(this.topics, backup.topics) && Intrinsics.areEqual(this.version, backup.version) && Intrinsics.areEqual(this.allChatsTabFab, backup.allChatsTabFab) && Intrinsics.areEqual(this.allChatsTabMultiFabs, backup.allChatsTabMultiFabs) && Intrinsics.areEqual(this.hiddenChatDialogs, backup.hiddenChatDialogs) && Intrinsics.areEqual(this.pinnedRecentChats, backup.pinnedRecentChats);
        }
        return false;
    }

    public int hashCode() {
        Boolean bool = this.isAutoBackupEnabled;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.selectedAutoBackupInterval;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool2 = this.isFilesSendingPreviewAndCaptionEnabled;
        int hashCode3 = (hashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isVibrationEnabled;
        int hashCode4 = (hashCode3 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str2 = this.selectedStickersSize;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool4 = this.isQuickReactionEnabled;
        int hashCode6 = (hashCode5 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.isPremiumAnimateStickers;
        int hashCode7 = (hashCode6 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.isPremiumShowBadge;
        int hashCode8 = (hashCode7 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.isPremiumShowStatus;
        int hashCode9 = (hashCode8 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        Boolean bool8 = this.isPremiumAnimateAvatars;
        int hashCode10 = (hashCode9 + (bool8 == null ? 0 : bool8.hashCode())) * 31;
        Boolean bool9 = this.isProxyButtonVisible;
        int hashCode11 = (hashCode10 + (bool9 == null ? 0 : bool9.hashCode())) * 31;
        String str3 = this.selectedContactsFilter;
        int hashCode12 = (hashCode11 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool10 = this.isReadAllChatsConfirmationShown;
        int hashCode13 = (hashCode12 + (bool10 == null ? 0 : bool10.hashCode())) * 31;
        Boolean bool11 = this.isProfileInfoHidden;
        int hashCode14 = (hashCode13 + (bool11 == null ? 0 : bool11.hashCode())) * 31;
        Boolean bool12 = this.isMultiForwardingOptionsHintShown;
        int hashCode15 = (hashCode14 + (bool12 == null ? 0 : bool12.hashCode())) * 31;
        Boolean bool13 = this.isSuggestPremiumReactionsEmoji;
        int hashCode16 = (hashCode15 + (bool13 == null ? 0 : bool13.hashCode())) * 31;
        DrawerHeaderSettings drawerHeaderSettings = this.drawerHeaderSettings;
        int hashCode17 = (hashCode16 + (drawerHeaderSettings == null ? 0 : drawerHeaderSettings.hashCode())) * 31;
        Set<String> set = this.drawerItems;
        int hashCode18 = (hashCode17 + (set == null ? 0 : set.hashCode())) * 31;
        Boolean bool14 = this.isActionBarAccountSwitchEnabled;
        int hashCode19 = (hashCode18 + (bool14 == null ? 0 : bool14.hashCode())) * 31;
        Boolean bool15 = this.isMainActionBarMenuEnabled;
        int hashCode20 = (hashCode19 + (bool15 == null ? 0 : bool15.hashCode())) * 31;
        Boolean bool16 = this.isProxyButtonEnabled;
        int hashCode21 = (hashCode20 + (bool16 == null ? 0 : bool16.hashCode())) * 31;
        Boolean bool17 = this.isDialogsCompactModeEnabled;
        int hashCode22 = (hashCode21 + (bool17 == null ? 0 : bool17.hashCode())) * 31;
        Boolean bool18 = this.isSwipeToGoToNextUnreadDialogEnabled;
        int hashCode23 = (hashCode22 + (bool18 == null ? 0 : bool18.hashCode())) * 31;
        Boolean bool19 = this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled;
        int hashCode24 = (hashCode23 + (bool19 == null ? 0 : bool19.hashCode())) * 31;
        Set<String> set2 = this.swipeToGoToNextUnreadDialogTypes;
        int hashCode25 = (hashCode24 + (set2 == null ? 0 : set2.hashCode())) * 31;
        Boolean bool20 = this.isShowChannelBottomPanel;
        int hashCode26 = (hashCode25 + (bool20 == null ? 0 : bool20.hashCode())) * 31;
        Boolean bool21 = this.isHideChatKeyboardOnScrollEnabled;
        int hashCode27 = (hashCode26 + (bool21 == null ? 0 : bool21.hashCode())) * 31;
        Boolean bool22 = this.isChatThemesEnabled;
        int hashCode28 = (hashCode27 + (bool22 == null ? 0 : bool22.hashCode())) * 31;
        Map<String, Set<String>> map = this.chatAttachAlertButtons;
        int hashCode29 = (hashCode28 + (map == null ? 0 : map.hashCode())) * 31;
        Boolean bool23 = this.isExtendedAvatarPreviewerEnabled;
        int hashCode30 = (hashCode29 + (bool23 == null ? 0 : bool23.hashCode())) * 31;
        Boolean bool24 = this.isExtendedAvatarPreviewerByTapEnabled;
        int hashCode31 = (hashCode30 + (bool24 == null ? 0 : bool24.hashCode())) * 31;
        Set<String> set3 = this.selectedExtendedAvatarPreviewerItems;
        int hashCode32 = (hashCode31 + (set3 == null ? 0 : set3.hashCode())) * 31;
        List<String> list = this.messagePopupItems;
        int hashCode33 = (hashCode32 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool25 = this.isMessagePopupAggregatorEnabled;
        int hashCode34 = (hashCode33 + (bool25 == null ? 0 : bool25.hashCode())) * 31;
        Boolean bool26 = this.isChannelWidePostsEnabled;
        int hashCode35 = (hashCode34 + (bool26 == null ? 0 : bool26.hashCode())) * 31;
        Boolean bool27 = this.isCallsConfirmationEnabled;
        int hashCode36 = (hashCode35 + (bool27 == null ? 0 : bool27.hashCode())) * 31;
        Boolean bool28 = this.isDeleteCloudConfirmationEnabled;
        int hashCode37 = (hashCode36 + (bool28 == null ? 0 : bool28.hashCode())) * 31;
        Boolean bool29 = this.isSendingGifConfirmationEnabled;
        int hashCode38 = (hashCode37 + (bool29 == null ? 0 : bool29.hashCode())) * 31;
        Boolean bool30 = this.isSendingStickerConfirmationEnabled;
        int hashCode39 = (hashCode38 + (bool30 == null ? 0 : bool30.hashCode())) * 31;
        Boolean bool31 = this.isSpeakWithoutHoldEnabled;
        int hashCode40 = (hashCode39 + (bool31 == null ? 0 : bool31.hashCode())) * 31;
        Boolean bool32 = this.isVideoSpeakWithoutHoldEnabled;
        int hashCode41 = (hashCode40 + (bool32 == null ? 0 : bool32.hashCode())) * 31;
        String str4 = this.selectedVideoVoiceCamera;
        int hashCode42 = (hashCode41 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool33 = this.isRecentChatsEnabled;
        int hashCode43 = (hashCode42 + (bool33 == null ? 0 : bool33.hashCode())) * 31;
        Set<String> set4 = this.selectedRecentChatsDialogTypes;
        int hashCode44 = (hashCode43 + (set4 == null ? 0 : set4.hashCode())) * 31;
        Boolean bool34 = this.isSaveArchiveRecentChatsEnabled;
        int hashCode45 = (hashCode44 + (bool34 == null ? 0 : bool34.hashCode())) * 31;
        Set<String> set5 = this.selectedDrawStatusTypes;
        int hashCode46 = (hashCode45 + (set5 == null ? 0 : set5.hashCode())) * 31;
        Boolean bool35 = this.isOpenForwardingOptionsAutomaticallyEnabled;
        int hashCode47 = (hashCode46 + (bool35 == null ? 0 : bool35.hashCode())) * 31;
        Boolean bool36 = this.isMultiReplyEnabled;
        int hashCode48 = (hashCode47 + (bool36 == null ? 0 : bool36.hashCode())) * 31;
        String str5 = this.selectedChatProfileTelegramIdMode;
        int hashCode49 = (hashCode48 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool37 = this.isMessageQuickTranslateEnabled;
        int hashCode50 = (hashCode49 + (bool37 == null ? 0 : bool37.hashCode())) * 31;
        Boolean bool38 = this.isBotHelpTranslateEnabled;
        int hashCode51 = (hashCode50 + (bool38 == null ? 0 : bool38.hashCode())) * 31;
        Boolean bool39 = this.isTranslateInSendPopupEnabled;
        int hashCode52 = (hashCode51 + (bool39 == null ? 0 : bool39.hashCode())) * 31;
        Boolean bool40 = this.isSilentSendingEnabled;
        int hashCode53 = (hashCode52 + (bool40 == null ? 0 : bool40.hashCode())) * 31;
        String str6 = this.selectedSentMessageFont;
        int hashCode54 = (hashCode53 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Boolean bool41 = this.isRememberLastDialogEnabled;
        int hashCode55 = (hashCode54 + (bool41 == null ? 0 : bool41.hashCode())) * 31;
        Boolean bool42 = this.isCombineMessagesEnabled;
        int hashCode56 = (hashCode55 + (bool42 == null ? 0 : bool42.hashCode())) * 31;
        Set<String> set6 = this.selectedPhotoViewerMenuItems;
        int hashCode57 = (hashCode56 + (set6 == null ? 0 : set6.hashCode())) * 31;
        Boolean bool43 = this.isReactionsEnabled;
        int hashCode58 = (hashCode57 + (bool43 == null ? 0 : bool43.hashCode())) * 31;
        Set<String> set7 = this.selectedDialogTypesForMessagePopupReactions;
        int hashCode59 = (hashCode58 + (set7 == null ? 0 : set7.hashCode())) * 31;
        Boolean bool44 = this.isReactionsInSendPopupEnabled;
        int hashCode60 = (hashCode59 + (bool44 == null ? 0 : bool44.hashCode())) * 31;
        Boolean bool45 = this.isRevokeByDefault;
        int hashCode61 = (hashCode60 + (bool45 == null ? 0 : bool45.hashCode())) * 31;
        DrawerHolidayIconType drawerHolidayIconType = this.drawerHolidayIconType;
        int hashCode62 = (hashCode61 + (drawerHolidayIconType == null ? 0 : drawerHolidayIconType.hashCode())) * 31;
        Boolean bool46 = this.isMultiPanelEnabled;
        int hashCode63 = (hashCode62 + (bool46 == null ? 0 : bool46.hashCode())) * 31;
        Boolean bool47 = this.isHideMultiPanelOnScrollEnabled;
        int hashCode64 = (hashCode63 + (bool47 == null ? 0 : bool47.hashCode())) * 31;
        Map<String, List<MultiPanelButtonStateBackup>> map2 = this.multiPanelSettings;
        int hashCode65 = (hashCode64 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Boolean bool48 = this.filterTabsAtBottom;
        int hashCode66 = (hashCode65 + (bool48 == null ? 0 : bool48.hashCode())) * 31;
        String str7 = this.filterTabsNotificationMode;
        int hashCode67 = (hashCode66 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.filterTabsWidthMode;
        int hashCode68 = (hashCode67 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Boolean bool49 = this.rememberLastFilterTab;
        int hashCode69 = (hashCode68 + (bool49 == null ? 0 : bool49.hashCode())) * 31;
        Boolean bool50 = this.hideFolders;
        int hashCode70 = (hashCode69 + (bool50 == null ? 0 : bool50.hashCode())) * 31;
        Boolean bool51 = this.foldersFirst;
        int hashCode71 = (hashCode70 + (bool51 == null ? 0 : bool51.hashCode())) * 31;
        List<FilterSettingsModel> list2 = this.filters;
        int hashCode72 = (hashCode71 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Boolean bool52 = this.isChatSortingEnabledByDefault;
        int hashCode73 = (hashCode72 + (bool52 == null ? 0 : bool52.hashCode())) * 31;
        Boolean bool53 = this.isAllChatsTabEnabled;
        int hashCode74 = (hashCode73 + (bool53 == null ? 0 : bool53.hashCode())) * 31;
        Boolean bool54 = this.iconInsteadAllChatsTabTitle;
        int hashCode75 = (hashCode74 + (bool54 == null ? 0 : bool54.hashCode())) * 31;
        Set<String> set8 = this.allChatsTabFabs;
        int hashCode76 = (hashCode75 + (set8 == null ? 0 : set8.hashCode())) * 31;
        Boolean bool55 = this.isSortingChatsEnabled;
        int hashCode77 = (hashCode76 + (bool55 == null ? 0 : bool55.hashCode())) * 31;
        List<SortingTabStateBackup> list3 = this.sortingSettings;
        int hashCode78 = (hashCode77 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Boolean bool56 = this.isArchiveSortingChatsEnabled;
        int hashCode79 = (hashCode78 + (bool56 == null ? 0 : bool56.hashCode())) * 31;
        List<SortingTabStateBackup> list4 = this.archiveSortingSettings;
        int hashCode80 = (hashCode79 + (list4 == null ? 0 : list4.hashCode())) * 31;
        Map<String, Pair<List<Long>, List<Integer>>> map3 = this.sortingPinnedChats;
        int hashCode81 = (hashCode80 + (map3 == null ? 0 : map3.hashCode())) * 31;
        Map<String, Pair<List<Long>, List<Integer>>> map4 = this.archiveSortingPinnedChats;
        int hashCode82 = (hashCode81 + (map4 == null ? 0 : map4.hashCode())) * 31;
        Boolean bool57 = this.isCLoudAlbumsEnabled;
        int hashCode83 = (hashCode82 + (bool57 == null ? 0 : bool57.hashCode())) * 31;
        Boolean bool58 = this.isAlbumsIntroShown;
        int hashCode84 = (hashCode83 + (bool58 == null ? 0 : bool58.hashCode())) * 31;
        Boolean bool59 = this.isSortCloudAlbumsByNameEnabled;
        int hashCode85 = (hashCode84 + (bool59 == null ? 0 : bool59.hashCode())) * 31;
        Boolean bool60 = this.isOpenAlbumsInsteadCloudEnabled;
        int hashCode86 = (hashCode85 + (bool60 == null ? 0 : bool60.hashCode())) * 31;
        List<Long> list5 = this.albums;
        int hashCode87 = (hashCode86 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<DialogTranslationSettings> list6 = this.dialogSettings;
        int hashCode88 = (hashCode87 + (list6 == null ? 0 : list6.hashCode())) * 31;
        Boolean bool61 = this.isStoriesEnabled;
        int hashCode89 = (hashCode88 + (bool61 == null ? 0 : bool61.hashCode())) * 31;
        Boolean bool62 = this.isStoriesBarEnabled;
        int hashCode90 = (hashCode89 + (bool62 == null ? 0 : bool62.hashCode())) * 31;
        Boolean bool63 = this.isStoriesAvatarsEnabled;
        int hashCode91 = (hashCode90 + (bool63 == null ? 0 : bool63.hashCode())) * 31;
        Boolean bool64 = this.isStoriesProfileAvatarEnabled;
        int hashCode92 = (hashCode91 + (bool64 == null ? 0 : bool64.hashCode())) * 31;
        Boolean bool65 = this.isPlayerPinned;
        int hashCode93 = (hashCode92 + (bool65 == null ? 0 : bool65.hashCode())) * 31;
        Boolean bool66 = this.isPinnedPlayerMinimized;
        int hashCode94 = (hashCode93 + (bool66 == null ? 0 : bool66.hashCode())) * 31;
        Boolean bool67 = this.isPinnedPlayerThemeOverridden;
        int hashCode95 = (hashCode94 + (bool67 == null ? 0 : bool67.hashCode())) * 31;
        Boolean bool68 = this.isPinnedPlayerNightThemeEnabled;
        int hashCode96 = (hashCode95 + (bool68 == null ? 0 : bool68.hashCode())) * 31;
        Boolean bool69 = this.isMusicIntroShown;
        int hashCode97 = (hashCode96 + (bool69 == null ? 0 : bool69.hashCode())) * 31;
        String str9 = this.selectedMusicTab;
        int hashCode98 = (hashCode97 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Map<Long, PlaylistModel> map5 = this.musicPlaylists;
        int hashCode99 = (hashCode98 + (map5 == null ? 0 : map5.hashCode())) * 31;
        String str10 = this.templatesMode;
        int hashCode100 = (hashCode99 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.selectedTemplatesSortingType;
        int hashCode101 = (hashCode100 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Long l = this.templatesChannelId;
        int hashCode102 = (hashCode101 + (l == null ? 0 : l.hashCode())) * 31;
        List<TemplateModel> list7 = this.templates;
        int hashCode103 = (hashCode102 + (list7 == null ? 0 : list7.hashCode())) * 31;
        Boolean bool70 = this.topicsEnabled;
        int hashCode104 = (hashCode103 + (bool70 == null ? 0 : bool70.hashCode())) * 31;
        Boolean bool71 = this.topicsBarAtBottom;
        int hashCode105 = (hashCode104 + (bool71 == null ? 0 : bool71.hashCode())) * 31;
        Boolean bool72 = this.noTopicFirst;
        int hashCode106 = (hashCode105 + (bool72 == null ? 0 : bool72.hashCode())) * 31;
        List<TopicBackup> list8 = this.topics;
        int hashCode107 = (hashCode106 + (list8 == null ? 0 : list8.hashCode())) * 31;
        Integer num = this.version;
        int hashCode108 = (((hashCode107 + (num == null ? 0 : num.hashCode())) * 31) + this.allChatsTabFab.hashCode()) * 31;
        List<FilterFab> list9 = this.allChatsTabMultiFabs;
        int hashCode109 = (hashCode108 + (list9 == null ? 0 : list9.hashCode())) * 31;
        List<Long> list10 = this.hiddenChatDialogs;
        int hashCode110 = (hashCode109 + (list10 == null ? 0 : list10.hashCode())) * 31;
        List<HistoryDialogModel> list11 = this.pinnedRecentChats;
        return hashCode110 + (list11 != null ? list11.hashCode() : 0);
    }

    public String toString() {
        return "Backup(isAutoBackupEnabled=" + this.isAutoBackupEnabled + ", selectedAutoBackupInterval=" + this.selectedAutoBackupInterval + ", isFilesSendingPreviewAndCaptionEnabled=" + this.isFilesSendingPreviewAndCaptionEnabled + ", isVibrationEnabled=" + this.isVibrationEnabled + ", selectedStickersSize=" + this.selectedStickersSize + ", isQuickReactionEnabled=" + this.isQuickReactionEnabled + ", isPremiumAnimateStickers=" + this.isPremiumAnimateStickers + ", isPremiumShowBadge=" + this.isPremiumShowBadge + ", isPremiumShowStatus=" + this.isPremiumShowStatus + ", isPremiumAnimateAvatars=" + this.isPremiumAnimateAvatars + ", isProxyButtonVisible=" + this.isProxyButtonVisible + ", selectedContactsFilter=" + this.selectedContactsFilter + ", isReadAllChatsConfirmationShown=" + this.isReadAllChatsConfirmationShown + ", isProfileInfoHidden=" + this.isProfileInfoHidden + ", isMultiForwardingOptionsHintShown=" + this.isMultiForwardingOptionsHintShown + ", isSuggestPremiumReactionsEmoji=" + this.isSuggestPremiumReactionsEmoji + ", drawerHeaderSettings=" + this.drawerHeaderSettings + ", drawerItems=" + this.drawerItems + ", isActionBarAccountSwitchEnabled=" + this.isActionBarAccountSwitchEnabled + ", isMainActionBarMenuEnabled=" + this.isMainActionBarMenuEnabled + ", isProxyButtonEnabled=" + this.isProxyButtonEnabled + ", isDialogsCompactModeEnabled=" + this.isDialogsCompactModeEnabled + ", isSwipeToGoToNextUnreadDialogEnabled=" + this.isSwipeToGoToNextUnreadDialogEnabled + ", isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled=" + this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled + ", swipeToGoToNextUnreadDialogTypes=" + this.swipeToGoToNextUnreadDialogTypes + ", isShowChannelBottomPanel=" + this.isShowChannelBottomPanel + ", isHideChatKeyboardOnScrollEnabled=" + this.isHideChatKeyboardOnScrollEnabled + ", isChatThemesEnabled=" + this.isChatThemesEnabled + ", chatAttachAlertButtons=" + this.chatAttachAlertButtons + ", isExtendedAvatarPreviewerEnabled=" + this.isExtendedAvatarPreviewerEnabled + ", isExtendedAvatarPreviewerByTapEnabled=" + this.isExtendedAvatarPreviewerByTapEnabled + ", selectedExtendedAvatarPreviewerItems=" + this.selectedExtendedAvatarPreviewerItems + ", messagePopupItems=" + this.messagePopupItems + ", isMessagePopupAggregatorEnabled=" + this.isMessagePopupAggregatorEnabled + ", isChannelWidePostsEnabled=" + this.isChannelWidePostsEnabled + ", isCallsConfirmationEnabled=" + this.isCallsConfirmationEnabled + ", isDeleteCloudConfirmationEnabled=" + this.isDeleteCloudConfirmationEnabled + ", isSendingGifConfirmationEnabled=" + this.isSendingGifConfirmationEnabled + ", isSendingStickerConfirmationEnabled=" + this.isSendingStickerConfirmationEnabled + ", isSpeakWithoutHoldEnabled=" + this.isSpeakWithoutHoldEnabled + ", isVideoSpeakWithoutHoldEnabled=" + this.isVideoSpeakWithoutHoldEnabled + ", selectedVideoVoiceCamera=" + this.selectedVideoVoiceCamera + ", isRecentChatsEnabled=" + this.isRecentChatsEnabled + ", selectedRecentChatsDialogTypes=" + this.selectedRecentChatsDialogTypes + ", isSaveArchiveRecentChatsEnabled=" + this.isSaveArchiveRecentChatsEnabled + ", selectedDrawStatusTypes=" + this.selectedDrawStatusTypes + ", isOpenForwardingOptionsAutomaticallyEnabled=" + this.isOpenForwardingOptionsAutomaticallyEnabled + ", isMultiReplyEnabled=" + this.isMultiReplyEnabled + ", selectedChatProfileTelegramIdMode=" + this.selectedChatProfileTelegramIdMode + ", isMessageQuickTranslateEnabled=" + this.isMessageQuickTranslateEnabled + ", isBotHelpTranslateEnabled=" + this.isBotHelpTranslateEnabled + ", isTranslateInSendPopupEnabled=" + this.isTranslateInSendPopupEnabled + ", isSilentSendingEnabled=" + this.isSilentSendingEnabled + ", selectedSentMessageFont=" + this.selectedSentMessageFont + ", isRememberLastDialogEnabled=" + this.isRememberLastDialogEnabled + ", isCombineMessagesEnabled=" + this.isCombineMessagesEnabled + ", selectedPhotoViewerMenuItems=" + this.selectedPhotoViewerMenuItems + ", isReactionsEnabled=" + this.isReactionsEnabled + ", selectedDialogTypesForMessagePopupReactions=" + this.selectedDialogTypesForMessagePopupReactions + ", isReactionsInSendPopupEnabled=" + this.isReactionsInSendPopupEnabled + ", isRevokeByDefault=" + this.isRevokeByDefault + ", drawerHolidayIconType=" + this.drawerHolidayIconType + ", isMultiPanelEnabled=" + this.isMultiPanelEnabled + ", isHideMultiPanelOnScrollEnabled=" + this.isHideMultiPanelOnScrollEnabled + ", multiPanelSettings=" + this.multiPanelSettings + ", filterTabsAtBottom=" + this.filterTabsAtBottom + ", filterTabsNotificationMode=" + this.filterTabsNotificationMode + ", filterTabsWidthMode=" + this.filterTabsWidthMode + ", rememberLastFilterTab=" + this.rememberLastFilterTab + ", hideFolders=" + this.hideFolders + ", foldersFirst=" + this.foldersFirst + ", filters=" + this.filters + ", isChatSortingEnabledByDefault=" + this.isChatSortingEnabledByDefault + ", isAllChatsTabEnabled=" + this.isAllChatsTabEnabled + ", iconInsteadAllChatsTabTitle=" + this.iconInsteadAllChatsTabTitle + ", allChatsTabFabs=" + this.allChatsTabFabs + ", isSortingChatsEnabled=" + this.isSortingChatsEnabled + ", sortingSettings=" + this.sortingSettings + ", isArchiveSortingChatsEnabled=" + this.isArchiveSortingChatsEnabled + ", archiveSortingSettings=" + this.archiveSortingSettings + ", sortingPinnedChats=" + this.sortingPinnedChats + ", archiveSortingPinnedChats=" + this.archiveSortingPinnedChats + ", isCLoudAlbumsEnabled=" + this.isCLoudAlbumsEnabled + ", isAlbumsIntroShown=" + this.isAlbumsIntroShown + ", isSortCloudAlbumsByNameEnabled=" + this.isSortCloudAlbumsByNameEnabled + ", isOpenAlbumsInsteadCloudEnabled=" + this.isOpenAlbumsInsteadCloudEnabled + ", albums=" + this.albums + ", dialogSettings=" + this.dialogSettings + ", isStoriesEnabled=" + this.isStoriesEnabled + ", isStoriesBarEnabled=" + this.isStoriesBarEnabled + ", isStoriesAvatarsEnabled=" + this.isStoriesAvatarsEnabled + ", isStoriesProfileAvatarEnabled=" + this.isStoriesProfileAvatarEnabled + ", isPlayerPinned=" + this.isPlayerPinned + ", isPinnedPlayerMinimized=" + this.isPinnedPlayerMinimized + ", isPinnedPlayerThemeOverridden=" + this.isPinnedPlayerThemeOverridden + ", isPinnedPlayerNightThemeEnabled=" + this.isPinnedPlayerNightThemeEnabled + ", isMusicIntroShown=" + this.isMusicIntroShown + ", selectedMusicTab=" + this.selectedMusicTab + ", musicPlaylists=" + this.musicPlaylists + ", templatesMode=" + this.templatesMode + ", selectedTemplatesSortingType=" + this.selectedTemplatesSortingType + ", templatesChannelId=" + this.templatesChannelId + ", templates=" + this.templates + ", topicsEnabled=" + this.topicsEnabled + ", topicsBarAtBottom=" + this.topicsBarAtBottom + ", noTopicFirst=" + this.noTopicFirst + ", topics=" + this.topics + ", version=" + this.version + ", allChatsTabFab=" + this.allChatsTabFab + ", allChatsTabMultiFabs=" + this.allChatsTabMultiFabs + ", hiddenChatDialogs=" + this.hiddenChatDialogs + ", pinnedRecentChats=" + this.pinnedRecentChats + ')';
    }

    public Backup(Boolean bool, String str, Boolean bool2, Boolean bool3, String str2, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, String str3, Boolean bool10, Boolean bool11, Boolean bool12, Boolean bool13, DrawerHeaderSettings drawerHeaderSettings, Set<String> set, Boolean bool14, Boolean bool15, Boolean bool16, Boolean bool17, Boolean bool18, Boolean bool19, Set<String> set2, Boolean bool20, Boolean bool21, Boolean bool22, Map<String, Set<String>> map, Boolean bool23, Boolean bool24, Set<String> set3, List<String> list, Boolean bool25, Boolean bool26, Boolean bool27, Boolean bool28, Boolean bool29, Boolean bool30, Boolean bool31, Boolean bool32, String str4, Boolean bool33, Set<String> set4, Boolean bool34, Set<String> set5, Boolean bool35, Boolean bool36, String str5, Boolean bool37, Boolean bool38, Boolean bool39, Boolean bool40, String str6, Boolean bool41, Boolean bool42, Set<String> set6, Boolean bool43, Set<String> set7, Boolean bool44, Boolean bool45, DrawerHolidayIconType drawerHolidayIconType, Boolean bool46, Boolean bool47, Map<String, List<MultiPanelButtonStateBackup>> map2, Boolean bool48, String str7, String str8, Boolean bool49, Boolean bool50, Boolean bool51, List<FilterSettingsModel> list2, Boolean bool52, Boolean bool53, Boolean bool54, Set<String> set8, Boolean bool55, List<SortingTabStateBackup> list3, Boolean bool56, List<SortingTabStateBackup> list4, Map<String, Pair<List<Long>, List<Integer>>> map3, Map<String, Pair<List<Long>, List<Integer>>> map4, Boolean bool57, Boolean bool58, Boolean bool59, Boolean bool60, List<Long> list5, List<DialogTranslationSettings> list6, Boolean bool61, Boolean bool62, Boolean bool63, Boolean bool64, Boolean bool65, Boolean bool66, Boolean bool67, Boolean bool68, Boolean bool69, String str9, Map<Long, PlaylistModel> map5, String str10, String str11, Long l, List<TemplateModel> list7, Boolean bool70, Boolean bool71, Boolean bool72, List<TopicBackup> list8, Integer num, String allChatsTabFab, List<FilterFab> list9, List<Long> list10, List<HistoryDialogModel> list11) {
        Intrinsics.checkNotNullParameter(allChatsTabFab, "allChatsTabFab");
        this.isAutoBackupEnabled = bool;
        this.selectedAutoBackupInterval = str;
        this.isFilesSendingPreviewAndCaptionEnabled = bool2;
        this.isVibrationEnabled = bool3;
        this.selectedStickersSize = str2;
        this.isQuickReactionEnabled = bool4;
        this.isPremiumAnimateStickers = bool5;
        this.isPremiumShowBadge = bool6;
        this.isPremiumShowStatus = bool7;
        this.isPremiumAnimateAvatars = bool8;
        this.isProxyButtonVisible = bool9;
        this.selectedContactsFilter = str3;
        this.isReadAllChatsConfirmationShown = bool10;
        this.isProfileInfoHidden = bool11;
        this.isMultiForwardingOptionsHintShown = bool12;
        this.isSuggestPremiumReactionsEmoji = bool13;
        this.drawerHeaderSettings = drawerHeaderSettings;
        this.drawerItems = set;
        this.isActionBarAccountSwitchEnabled = bool14;
        this.isMainActionBarMenuEnabled = bool15;
        this.isProxyButtonEnabled = bool16;
        this.isDialogsCompactModeEnabled = bool17;
        this.isSwipeToGoToNextUnreadDialogEnabled = bool18;
        this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled = bool19;
        this.swipeToGoToNextUnreadDialogTypes = set2;
        this.isShowChannelBottomPanel = bool20;
        this.isHideChatKeyboardOnScrollEnabled = bool21;
        this.isChatThemesEnabled = bool22;
        this.chatAttachAlertButtons = map;
        this.isExtendedAvatarPreviewerEnabled = bool23;
        this.isExtendedAvatarPreviewerByTapEnabled = bool24;
        this.selectedExtendedAvatarPreviewerItems = set3;
        this.messagePopupItems = list;
        this.isMessagePopupAggregatorEnabled = bool25;
        this.isChannelWidePostsEnabled = bool26;
        this.isCallsConfirmationEnabled = bool27;
        this.isDeleteCloudConfirmationEnabled = bool28;
        this.isSendingGifConfirmationEnabled = bool29;
        this.isSendingStickerConfirmationEnabled = bool30;
        this.isSpeakWithoutHoldEnabled = bool31;
        this.isVideoSpeakWithoutHoldEnabled = bool32;
        this.selectedVideoVoiceCamera = str4;
        this.isRecentChatsEnabled = bool33;
        this.selectedRecentChatsDialogTypes = set4;
        this.isSaveArchiveRecentChatsEnabled = bool34;
        this.selectedDrawStatusTypes = set5;
        this.isOpenForwardingOptionsAutomaticallyEnabled = bool35;
        this.isMultiReplyEnabled = bool36;
        this.selectedChatProfileTelegramIdMode = str5;
        this.isMessageQuickTranslateEnabled = bool37;
        this.isBotHelpTranslateEnabled = bool38;
        this.isTranslateInSendPopupEnabled = bool39;
        this.isSilentSendingEnabled = bool40;
        this.selectedSentMessageFont = str6;
        this.isRememberLastDialogEnabled = bool41;
        this.isCombineMessagesEnabled = bool42;
        this.selectedPhotoViewerMenuItems = set6;
        this.isReactionsEnabled = bool43;
        this.selectedDialogTypesForMessagePopupReactions = set7;
        this.isReactionsInSendPopupEnabled = bool44;
        this.isRevokeByDefault = bool45;
        this.drawerHolidayIconType = drawerHolidayIconType;
        this.isMultiPanelEnabled = bool46;
        this.isHideMultiPanelOnScrollEnabled = bool47;
        this.multiPanelSettings = map2;
        this.filterTabsAtBottom = bool48;
        this.filterTabsNotificationMode = str7;
        this.filterTabsWidthMode = str8;
        this.rememberLastFilterTab = bool49;
        this.hideFolders = bool50;
        this.foldersFirst = bool51;
        this.filters = list2;
        this.isChatSortingEnabledByDefault = bool52;
        this.isAllChatsTabEnabled = bool53;
        this.iconInsteadAllChatsTabTitle = bool54;
        this.allChatsTabFabs = set8;
        this.isSortingChatsEnabled = bool55;
        this.sortingSettings = list3;
        this.isArchiveSortingChatsEnabled = bool56;
        this.archiveSortingSettings = list4;
        this.sortingPinnedChats = map3;
        this.archiveSortingPinnedChats = map4;
        this.isCLoudAlbumsEnabled = bool57;
        this.isAlbumsIntroShown = bool58;
        this.isSortCloudAlbumsByNameEnabled = bool59;
        this.isOpenAlbumsInsteadCloudEnabled = bool60;
        this.albums = list5;
        this.dialogSettings = list6;
        this.isStoriesEnabled = bool61;
        this.isStoriesBarEnabled = bool62;
        this.isStoriesAvatarsEnabled = bool63;
        this.isStoriesProfileAvatarEnabled = bool64;
        this.isPlayerPinned = bool65;
        this.isPinnedPlayerMinimized = bool66;
        this.isPinnedPlayerThemeOverridden = bool67;
        this.isPinnedPlayerNightThemeEnabled = bool68;
        this.isMusicIntroShown = bool69;
        this.selectedMusicTab = str9;
        this.musicPlaylists = map5;
        this.templatesMode = str10;
        this.selectedTemplatesSortingType = str11;
        this.templatesChannelId = l;
        this.templates = list7;
        this.topicsEnabled = bool70;
        this.topicsBarAtBottom = bool71;
        this.noTopicFirst = bool72;
        this.topics = list8;
        this.version = num;
        this.allChatsTabFab = allChatsTabFab;
        this.allChatsTabMultiFabs = list9;
        this.hiddenChatDialogs = list10;
        this.pinnedRecentChats = list11;
    }

    public final Boolean isAutoBackupEnabled() {
        return this.isAutoBackupEnabled;
    }

    public final String getSelectedAutoBackupInterval() {
        return this.selectedAutoBackupInterval;
    }

    public final Boolean isFilesSendingPreviewAndCaptionEnabled() {
        return this.isFilesSendingPreviewAndCaptionEnabled;
    }

    public final Boolean isVibrationEnabled() {
        return this.isVibrationEnabled;
    }

    public final String getSelectedStickersSize() {
        return this.selectedStickersSize;
    }

    public final Boolean isQuickReactionEnabled() {
        return this.isQuickReactionEnabled;
    }

    public final Boolean isPremiumAnimateStickers() {
        return this.isPremiumAnimateStickers;
    }

    public final Boolean isPremiumShowBadge() {
        return this.isPremiumShowBadge;
    }

    public final Boolean isPremiumShowStatus() {
        return this.isPremiumShowStatus;
    }

    public final Boolean isPremiumAnimateAvatars() {
        return this.isPremiumAnimateAvatars;
    }

    public final Boolean isProxyButtonVisible() {
        return this.isProxyButtonVisible;
    }

    public final String getSelectedContactsFilter() {
        return this.selectedContactsFilter;
    }

    public final Boolean isReadAllChatsConfirmationShown() {
        return this.isReadAllChatsConfirmationShown;
    }

    public final Boolean isProfileInfoHidden() {
        return this.isProfileInfoHidden;
    }

    public final Boolean isMultiForwardingOptionsHintShown() {
        return this.isMultiForwardingOptionsHintShown;
    }

    public final Boolean isSuggestPremiumReactionsEmoji() {
        return this.isSuggestPremiumReactionsEmoji;
    }

    public final DrawerHeaderSettings getDrawerHeaderSettings() {
        return this.drawerHeaderSettings;
    }

    public final Set<String> getDrawerItems() {
        return this.drawerItems;
    }

    public final Boolean isActionBarAccountSwitchEnabled() {
        return this.isActionBarAccountSwitchEnabled;
    }

    public final Boolean isMainActionBarMenuEnabled() {
        return this.isMainActionBarMenuEnabled;
    }

    public final Boolean isProxyButtonEnabled() {
        return this.isProxyButtonEnabled;
    }

    public final Boolean isDialogsCompactModeEnabled() {
        return this.isDialogsCompactModeEnabled;
    }

    public final Boolean isSwipeToGoToNextUnreadDialogEnabled() {
        return this.isSwipeToGoToNextUnreadDialogEnabled;
    }

    public final Boolean isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled() {
        return this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled;
    }

    public final Set<String> getSwipeToGoToNextUnreadDialogTypes() {
        return this.swipeToGoToNextUnreadDialogTypes;
    }

    public final Boolean isShowChannelBottomPanel() {
        return this.isShowChannelBottomPanel;
    }

    public final Boolean isHideChatKeyboardOnScrollEnabled() {
        return this.isHideChatKeyboardOnScrollEnabled;
    }

    public final Boolean isChatThemesEnabled() {
        return this.isChatThemesEnabled;
    }

    public final Map<String, Set<String>> getChatAttachAlertButtons() {
        return this.chatAttachAlertButtons;
    }

    public final Boolean isExtendedAvatarPreviewerEnabled() {
        return this.isExtendedAvatarPreviewerEnabled;
    }

    public final Boolean isExtendedAvatarPreviewerByTapEnabled() {
        return this.isExtendedAvatarPreviewerByTapEnabled;
    }

    public final Set<String> getSelectedExtendedAvatarPreviewerItems() {
        return this.selectedExtendedAvatarPreviewerItems;
    }

    public final List<String> getMessagePopupItems() {
        return this.messagePopupItems;
    }

    public final Boolean isMessagePopupAggregatorEnabled() {
        return this.isMessagePopupAggregatorEnabled;
    }

    public final Boolean isChannelWidePostsEnabled() {
        return this.isChannelWidePostsEnabled;
    }

    public final Boolean isCallsConfirmationEnabled() {
        return this.isCallsConfirmationEnabled;
    }

    public final Boolean isDeleteCloudConfirmationEnabled() {
        return this.isDeleteCloudConfirmationEnabled;
    }

    public final Boolean isSendingGifConfirmationEnabled() {
        return this.isSendingGifConfirmationEnabled;
    }

    public final Boolean isSendingStickerConfirmationEnabled() {
        return this.isSendingStickerConfirmationEnabled;
    }

    public final Boolean isSpeakWithoutHoldEnabled() {
        return this.isSpeakWithoutHoldEnabled;
    }

    public final Boolean isVideoSpeakWithoutHoldEnabled() {
        return this.isVideoSpeakWithoutHoldEnabled;
    }

    public final String getSelectedVideoVoiceCamera() {
        return this.selectedVideoVoiceCamera;
    }

    public final Boolean isRecentChatsEnabled() {
        return this.isRecentChatsEnabled;
    }

    public final Set<String> getSelectedRecentChatsDialogTypes() {
        return this.selectedRecentChatsDialogTypes;
    }

    public final Boolean isSaveArchiveRecentChatsEnabled() {
        return this.isSaveArchiveRecentChatsEnabled;
    }

    public final Set<String> getSelectedDrawStatusTypes() {
        return this.selectedDrawStatusTypes;
    }

    public final Boolean isOpenForwardingOptionsAutomaticallyEnabled() {
        return this.isOpenForwardingOptionsAutomaticallyEnabled;
    }

    public final Boolean isMultiReplyEnabled() {
        return this.isMultiReplyEnabled;
    }

    public final String getSelectedChatProfileTelegramIdMode() {
        return this.selectedChatProfileTelegramIdMode;
    }

    public final Boolean isMessageQuickTranslateEnabled() {
        return this.isMessageQuickTranslateEnabled;
    }

    public final Boolean isBotHelpTranslateEnabled() {
        return this.isBotHelpTranslateEnabled;
    }

    public final Boolean isTranslateInSendPopupEnabled() {
        return this.isTranslateInSendPopupEnabled;
    }

    public final Boolean isSilentSendingEnabled() {
        return this.isSilentSendingEnabled;
    }

    public final String getSelectedSentMessageFont() {
        return this.selectedSentMessageFont;
    }

    public final Boolean isRememberLastDialogEnabled() {
        return this.isRememberLastDialogEnabled;
    }

    public final Boolean isCombineMessagesEnabled() {
        return this.isCombineMessagesEnabled;
    }

    public final Set<String> getSelectedPhotoViewerMenuItems() {
        return this.selectedPhotoViewerMenuItems;
    }

    public final Boolean isReactionsEnabled() {
        return this.isReactionsEnabled;
    }

    public final Set<String> getSelectedDialogTypesForMessagePopupReactions() {
        return this.selectedDialogTypesForMessagePopupReactions;
    }

    public final Boolean isReactionsInSendPopupEnabled() {
        return this.isReactionsInSendPopupEnabled;
    }

    public final Boolean isRevokeByDefault() {
        return this.isRevokeByDefault;
    }

    public final DrawerHolidayIconType getDrawerHolidayIconType() {
        return this.drawerHolidayIconType;
    }

    public final Boolean isMultiPanelEnabled() {
        return this.isMultiPanelEnabled;
    }

    public final Boolean isHideMultiPanelOnScrollEnabled() {
        return this.isHideMultiPanelOnScrollEnabled;
    }

    public final Map<String, List<MultiPanelButtonStateBackup>> getMultiPanelSettings() {
        return this.multiPanelSettings;
    }

    public final Boolean getFilterTabsAtBottom() {
        return this.filterTabsAtBottom;
    }

    public final String getFilterTabsNotificationMode() {
        return this.filterTabsNotificationMode;
    }

    public final String getFilterTabsWidthMode() {
        return this.filterTabsWidthMode;
    }

    public final Boolean getRememberLastFilterTab() {
        return this.rememberLastFilterTab;
    }

    public final Boolean getHideFolders() {
        return this.hideFolders;
    }

    public final Boolean getFoldersFirst() {
        return this.foldersFirst;
    }

    public final List<FilterSettingsModel> getFilters() {
        return this.filters;
    }

    public final Boolean isChatSortingEnabledByDefault() {
        return this.isChatSortingEnabledByDefault;
    }

    public final Boolean isAllChatsTabEnabled() {
        return this.isAllChatsTabEnabled;
    }

    public final Boolean getIconInsteadAllChatsTabTitle() {
        return this.iconInsteadAllChatsTabTitle;
    }

    public final Set<String> getAllChatsTabFabs() {
        return this.allChatsTabFabs;
    }

    public final Boolean isSortingChatsEnabled() {
        return this.isSortingChatsEnabled;
    }

    public final List<SortingTabStateBackup> getSortingSettings() {
        return this.sortingSettings;
    }

    public final Boolean isArchiveSortingChatsEnabled() {
        return this.isArchiveSortingChatsEnabled;
    }

    public final List<SortingTabStateBackup> getArchiveSortingSettings() {
        return this.archiveSortingSettings;
    }

    public final Map<String, Pair<List<Long>, List<Integer>>> getSortingPinnedChats() {
        return this.sortingPinnedChats;
    }

    public final Map<String, Pair<List<Long>, List<Integer>>> getArchiveSortingPinnedChats() {
        return this.archiveSortingPinnedChats;
    }

    public final Boolean isCLoudAlbumsEnabled() {
        return this.isCLoudAlbumsEnabled;
    }

    public final Boolean isAlbumsIntroShown() {
        return this.isAlbumsIntroShown;
    }

    public final Boolean isSortCloudAlbumsByNameEnabled() {
        return this.isSortCloudAlbumsByNameEnabled;
    }

    public final Boolean isOpenAlbumsInsteadCloudEnabled() {
        return this.isOpenAlbumsInsteadCloudEnabled;
    }

    public final List<Long> getAlbums() {
        return this.albums;
    }

    public final List<DialogTranslationSettings> getDialogSettings() {
        return this.dialogSettings;
    }

    public final Boolean isStoriesEnabled() {
        return this.isStoriesEnabled;
    }

    public final Boolean isStoriesBarEnabled() {
        return this.isStoriesBarEnabled;
    }

    public final Boolean isStoriesAvatarsEnabled() {
        return this.isStoriesAvatarsEnabled;
    }

    public final Boolean isStoriesProfileAvatarEnabled() {
        return this.isStoriesProfileAvatarEnabled;
    }

    public final Boolean isPlayerPinned() {
        return this.isPlayerPinned;
    }

    public final Boolean isPinnedPlayerMinimized() {
        return this.isPinnedPlayerMinimized;
    }

    public final Boolean isPinnedPlayerThemeOverridden() {
        return this.isPinnedPlayerThemeOverridden;
    }

    public final Boolean isPinnedPlayerNightThemeEnabled() {
        return this.isPinnedPlayerNightThemeEnabled;
    }

    public final Boolean isMusicIntroShown() {
        return this.isMusicIntroShown;
    }

    public final String getSelectedMusicTab() {
        return this.selectedMusicTab;
    }

    public final Map<Long, PlaylistModel> getMusicPlaylists() {
        return this.musicPlaylists;
    }

    public final String getTemplatesMode() {
        return this.templatesMode;
    }

    public final String getSelectedTemplatesSortingType() {
        return this.selectedTemplatesSortingType;
    }

    public final Long getTemplatesChannelId() {
        return this.templatesChannelId;
    }

    public final List<TemplateModel> getTemplates() {
        return this.templates;
    }

    public final Boolean getTopicsEnabled() {
        return this.topicsEnabled;
    }

    public final Boolean getTopicsBarAtBottom() {
        return this.topicsBarAtBottom;
    }

    public final Boolean getNoTopicFirst() {
        return this.noTopicFirst;
    }

    public final List<TopicBackup> getTopics() {
        return this.topics;
    }

    public final Integer getVersion() {
        return this.version;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ Backup(java.lang.Boolean r111, java.lang.String r112, java.lang.Boolean r113, java.lang.Boolean r114, java.lang.String r115, java.lang.Boolean r116, java.lang.Boolean r117, java.lang.Boolean r118, java.lang.Boolean r119, java.lang.Boolean r120, java.lang.Boolean r121, java.lang.String r122, java.lang.Boolean r123, java.lang.Boolean r124, java.lang.Boolean r125, java.lang.Boolean r126, com.iMe.fork.models.DrawerHeaderSettings r127, java.util.Set r128, java.lang.Boolean r129, java.lang.Boolean r130, java.lang.Boolean r131, java.lang.Boolean r132, java.lang.Boolean r133, java.lang.Boolean r134, java.util.Set r135, java.lang.Boolean r136, java.lang.Boolean r137, java.lang.Boolean r138, java.util.Map r139, java.lang.Boolean r140, java.lang.Boolean r141, java.util.Set r142, java.util.List r143, java.lang.Boolean r144, java.lang.Boolean r145, java.lang.Boolean r146, java.lang.Boolean r147, java.lang.Boolean r148, java.lang.Boolean r149, java.lang.Boolean r150, java.lang.Boolean r151, java.lang.String r152, java.lang.Boolean r153, java.util.Set r154, java.lang.Boolean r155, java.util.Set r156, java.lang.Boolean r157, java.lang.Boolean r158, java.lang.String r159, java.lang.Boolean r160, java.lang.Boolean r161, java.lang.Boolean r162, java.lang.Boolean r163, java.lang.String r164, java.lang.Boolean r165, java.lang.Boolean r166, java.util.Set r167, java.lang.Boolean r168, java.util.Set r169, java.lang.Boolean r170, java.lang.Boolean r171, com.iMe.fork.enums.DrawerHolidayIconType r172, java.lang.Boolean r173, java.lang.Boolean r174, java.util.Map r175, java.lang.Boolean r176, java.lang.String r177, java.lang.String r178, java.lang.Boolean r179, java.lang.Boolean r180, java.lang.Boolean r181, java.util.List r182, java.lang.Boolean r183, java.lang.Boolean r184, java.lang.Boolean r185, java.util.Set r186, java.lang.Boolean r187, java.util.List r188, java.lang.Boolean r189, java.util.List r190, java.util.Map r191, java.util.Map r192, java.lang.Boolean r193, java.lang.Boolean r194, java.lang.Boolean r195, java.lang.Boolean r196, java.util.List r197, java.util.List r198, java.lang.Boolean r199, java.lang.Boolean r200, java.lang.Boolean r201, java.lang.Boolean r202, java.lang.Boolean r203, java.lang.Boolean r204, java.lang.Boolean r205, java.lang.Boolean r206, java.lang.Boolean r207, java.lang.String r208, java.util.Map r209, java.lang.String r210, java.lang.String r211, java.lang.Long r212, java.util.List r213, java.lang.Boolean r214, java.lang.Boolean r215, java.lang.Boolean r216, java.util.List r217, java.lang.Integer r218, java.lang.String r219, java.util.List r220, java.util.List r221, java.util.List r222, int r223, int r224, int r225, int r226, kotlin.jvm.internal.DefaultConstructorMarker r227) {
        /*
            Method dump skipped, instructions count: 1341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.models.backup.Backup.<init>(java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, com.iMe.fork.models.DrawerHeaderSettings, java.util.Set, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.Map, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.lang.Boolean, com.iMe.fork.enums.DrawerHolidayIconType, java.lang.Boolean, java.lang.Boolean, java.util.Map, java.lang.Boolean, java.lang.String, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.util.List, java.lang.Boolean, java.util.List, java.util.Map, java.util.Map, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.List, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.util.Map, java.lang.String, java.lang.String, java.lang.Long, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.List, java.lang.Integer, java.lang.String, java.util.List, java.util.List, java.util.List, int, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final String getAllChatsTabFab() {
        return this.allChatsTabFab;
    }

    public final List<FilterFab> getAllChatsTabMultiFabs() {
        return this.allChatsTabMultiFabs;
    }

    public final List<Long> getHiddenChatDialogs() {
        return this.hiddenChatDialogs;
    }

    public final List<HistoryDialogModel> getPinnedRecentChats() {
        return this.pinnedRecentChats;
    }
}
