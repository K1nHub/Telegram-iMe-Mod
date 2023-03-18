package org.fork.models.backup;

import com.smedialink.storage.domain.model.bookmarks.BookmarksModel;
import com.smedialink.storage.domain.model.dialogs.DialogTranslationSettings;
import com.smedialink.storage.domain.model.filters.FilterFab;
import com.smedialink.storage.domain.model.filters.FilterSettingsModel;
import com.smedialink.storage.domain.model.music.PlaylistModel;
import com.smedialink.storage.domain.model.templates.TemplateModel;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.DrawerHolidayIconType;
import org.fork.models.DrawerHeaderSettings;
/* compiled from: Backup.kt */
/* loaded from: classes4.dex */
public final class Backup {
    private final List<Long> albums;
    private final String allChatsTabFab;
    private final Set<String> allChatsTabFabs;
    private final List<FilterFab> allChatsTabMultiFabs;
    private final Map<String, Pair<List<Long>, List<Integer>>> archiveSortingPinnedChats;
    private final List<SortingTabStateBackup> archiveSortingSettings;
    private final Map<Long, BookmarksModel> bookmarks;
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
    private final Boolean hideFolders;
    private final Boolean iconInsteadAllChatsTabTitle;
    private final Boolean isActionBarAccountSwitchEnabled;
    private final Boolean isAlbumsIntroShown;
    private final Boolean isAllChatsTabEnabled;
    private final Boolean isArchiveSortingChatsEnabled;
    private final Boolean isAutoBackupEnabled;
    private final Boolean isAutoUpdateCatalogEnabled;
    private final Boolean isBotHelpTranslateEnabled;
    private final Boolean isCLoudAlbumsEnabled;
    private final Boolean isCallsConfirmationEnabled;
    private final Boolean isChannelWidePostsEnabled;
    private final Boolean isChatSortingEnabledByDefault;
    private final Boolean isChatThemesEnabled;
    private final Boolean isCombineMessagesEnabled;
    private final Boolean isCustomSharingModeEnabled;
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
    private final Boolean isProxyButtonForceVisible;
    private final Boolean isQuickReactionEnabled;
    private final Boolean isRaiseToSwitchSpeakerEnabled;
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
    private final Boolean rememberLastFilterTab;
    private final String selectedAutoBackupInterval;
    private final String selectedAutoUpdateCatalogInterval;
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
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, -1, -1, 16383, null);
    }

    public final Boolean component1() {
        return this.isAutoBackupEnabled;
    }

    public final Boolean component10() {
        return this.isPremiumShowStatus;
    }

    public final Long component100() {
        return this.templatesChannelId;
    }

    public final List<TemplateModel> component101() {
        return this.templates;
    }

    public final Boolean component102() {
        return this.topicsEnabled;
    }

    public final Boolean component103() {
        return this.topicsBarAtBottom;
    }

    public final Boolean component104() {
        return this.isAutoUpdateCatalogEnabled;
    }

    public final String component105() {
        return this.selectedAutoUpdateCatalogInterval;
    }

    public final Boolean component106() {
        return this.noTopicFirst;
    }

    public final List<TopicBackup> component107() {
        return this.topics;
    }

    public final Integer component108() {
        return this.version;
    }

    public final String component109() {
        return this.allChatsTabFab;
    }

    public final Boolean component11() {
        return this.isPremiumAnimateAvatars;
    }

    public final List<FilterFab> component110() {
        return this.allChatsTabMultiFabs;
    }

    public final Boolean component12() {
        return this.isProxyButtonForceVisible;
    }

    public final String component13() {
        return this.selectedContactsFilter;
    }

    public final Boolean component14() {
        return this.isReadAllChatsConfirmationShown;
    }

    public final Boolean component15() {
        return this.isProfileInfoHidden;
    }

    public final Boolean component16() {
        return this.isMultiForwardingOptionsHintShown;
    }

    public final Boolean component17() {
        return this.isSuggestPremiumReactionsEmoji;
    }

    public final DrawerHeaderSettings component18() {
        return this.drawerHeaderSettings;
    }

    public final Set<String> component19() {
        return this.drawerItems;
    }

    public final String component2() {
        return this.selectedAutoBackupInterval;
    }

    public final Boolean component20() {
        return this.isActionBarAccountSwitchEnabled;
    }

    public final Boolean component21() {
        return this.isMainActionBarMenuEnabled;
    }

    public final Boolean component22() {
        return this.isDialogsCompactModeEnabled;
    }

    public final Boolean component23() {
        return this.isSwipeToGoToNextUnreadDialogEnabled;
    }

    public final Boolean component24() {
        return this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled;
    }

    public final Set<String> component25() {
        return this.swipeToGoToNextUnreadDialogTypes;
    }

    public final Boolean component26() {
        return this.isShowChannelBottomPanel;
    }

    public final Boolean component27() {
        return this.isHideChatKeyboardOnScrollEnabled;
    }

    public final Boolean component28() {
        return this.isChatThemesEnabled;
    }

    public final Map<String, Set<String>> component29() {
        return this.chatAttachAlertButtons;
    }

    public final Boolean component3() {
        return this.isFilesSendingPreviewAndCaptionEnabled;
    }

    public final Boolean component30() {
        return this.isExtendedAvatarPreviewerEnabled;
    }

    public final Boolean component31() {
        return this.isExtendedAvatarPreviewerByTapEnabled;
    }

    public final Set<String> component32() {
        return this.selectedExtendedAvatarPreviewerItems;
    }

    public final List<String> component33() {
        return this.messagePopupItems;
    }

    public final Boolean component34() {
        return this.isMessagePopupAggregatorEnabled;
    }

    public final Boolean component35() {
        return this.isChannelWidePostsEnabled;
    }

    public final Boolean component36() {
        return this.isCallsConfirmationEnabled;
    }

    public final Boolean component37() {
        return this.isDeleteCloudConfirmationEnabled;
    }

    public final Boolean component38() {
        return this.isSendingGifConfirmationEnabled;
    }

    public final Boolean component39() {
        return this.isSendingStickerConfirmationEnabled;
    }

    public final Boolean component4() {
        return this.isVibrationEnabled;
    }

    public final Boolean component40() {
        return this.isSpeakWithoutHoldEnabled;
    }

    public final Boolean component41() {
        return this.isVideoSpeakWithoutHoldEnabled;
    }

    public final String component42() {
        return this.selectedVideoVoiceCamera;
    }

    public final Boolean component43() {
        return this.isRecentChatsEnabled;
    }

    public final Set<String> component44() {
        return this.selectedRecentChatsDialogTypes;
    }

    public final Boolean component45() {
        return this.isSaveArchiveRecentChatsEnabled;
    }

    public final Set<String> component46() {
        return this.selectedDrawStatusTypes;
    }

    public final Boolean component47() {
        return this.isMultiPanelEnabled;
    }

    public final Boolean component48() {
        return this.isHideMultiPanelOnScrollEnabled;
    }

    public final Map<String, List<MultiPanelButtonStateBackup>> component49() {
        return this.multiPanelSettings;
    }

    public final Boolean component5() {
        return this.isRaiseToSwitchSpeakerEnabled;
    }

    public final Boolean component50() {
        return this.isOpenForwardingOptionsAutomaticallyEnabled;
    }

    public final Boolean component51() {
        return this.isCustomSharingModeEnabled;
    }

    public final Boolean component52() {
        return this.isMultiReplyEnabled;
    }

    public final String component53() {
        return this.selectedChatProfileTelegramIdMode;
    }

    public final Boolean component54() {
        return this.isMessageQuickTranslateEnabled;
    }

    public final Boolean component55() {
        return this.isBotHelpTranslateEnabled;
    }

    public final Boolean component56() {
        return this.isTranslateInSendPopupEnabled;
    }

    public final Boolean component57() {
        return this.isSilentSendingEnabled;
    }

    public final String component58() {
        return this.selectedSentMessageFont;
    }

    public final Boolean component59() {
        return this.isRememberLastDialogEnabled;
    }

    public final String component6() {
        return this.selectedStickersSize;
    }

    public final Boolean component60() {
        return this.isCombineMessagesEnabled;
    }

    public final Set<String> component61() {
        return this.selectedPhotoViewerMenuItems;
    }

    public final Boolean component62() {
        return this.isReactionsEnabled;
    }

    public final Set<String> component63() {
        return this.selectedDialogTypesForMessagePopupReactions;
    }

    public final Boolean component64() {
        return this.isReactionsInSendPopupEnabled;
    }

    public final Boolean component65() {
        return this.isRevokeByDefault;
    }

    public final DrawerHolidayIconType component66() {
        return this.drawerHolidayIconType;
    }

    public final Boolean component67() {
        return this.filterTabsAtBottom;
    }

    public final String component68() {
        return this.filterTabsNotificationMode;
    }

    public final String component69() {
        return this.filterTabsWidthMode;
    }

    public final Boolean component7() {
        return this.isQuickReactionEnabled;
    }

    public final Boolean component70() {
        return this.rememberLastFilterTab;
    }

    public final Boolean component71() {
        return this.hideFolders;
    }

    public final Boolean component72() {
        return this.foldersFirst;
    }

    public final List<FilterSettingsModel> component73() {
        return this.filters;
    }

    public final Boolean component74() {
        return this.isChatSortingEnabledByDefault;
    }

    public final Boolean component75() {
        return this.isAllChatsTabEnabled;
    }

    public final Boolean component76() {
        return this.iconInsteadAllChatsTabTitle;
    }

    public final Set<String> component77() {
        return this.allChatsTabFabs;
    }

    public final Boolean component78() {
        return this.isSortingChatsEnabled;
    }

    public final List<SortingTabStateBackup> component79() {
        return this.sortingSettings;
    }

    public final Boolean component8() {
        return this.isPremiumAnimateStickers;
    }

    public final Boolean component80() {
        return this.isArchiveSortingChatsEnabled;
    }

    public final List<SortingTabStateBackup> component81() {
        return this.archiveSortingSettings;
    }

    public final Map<String, Pair<List<Long>, List<Integer>>> component82() {
        return this.sortingPinnedChats;
    }

    public final Map<String, Pair<List<Long>, List<Integer>>> component83() {
        return this.archiveSortingPinnedChats;
    }

    public final Boolean component84() {
        return this.isCLoudAlbumsEnabled;
    }

    public final Boolean component85() {
        return this.isAlbumsIntroShown;
    }

    public final Boolean component86() {
        return this.isSortCloudAlbumsByNameEnabled;
    }

    public final Boolean component87() {
        return this.isOpenAlbumsInsteadCloudEnabled;
    }

    public final List<Long> component88() {
        return this.albums;
    }

    public final Map<Long, BookmarksModel> component89() {
        return this.bookmarks;
    }

    public final Boolean component9() {
        return this.isPremiumShowBadge;
    }

    public final List<DialogTranslationSettings> component90() {
        return this.dialogSettings;
    }

    public final Boolean component91() {
        return this.isPlayerPinned;
    }

    public final Boolean component92() {
        return this.isPinnedPlayerMinimized;
    }

    public final Boolean component93() {
        return this.isPinnedPlayerThemeOverridden;
    }

    public final Boolean component94() {
        return this.isPinnedPlayerNightThemeEnabled;
    }

    public final Boolean component95() {
        return this.isMusicIntroShown;
    }

    public final String component96() {
        return this.selectedMusicTab;
    }

    public final Map<Long, PlaylistModel> component97() {
        return this.musicPlaylists;
    }

    public final String component98() {
        return this.templatesMode;
    }

    public final String component99() {
        return this.selectedTemplatesSortingType;
    }

    public final Backup copy(Boolean bool, String str, Boolean bool2, Boolean bool3, Boolean bool4, String str2, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, Boolean bool10, String str3, Boolean bool11, Boolean bool12, Boolean bool13, Boolean bool14, DrawerHeaderSettings drawerHeaderSettings, Set<String> set, Boolean bool15, Boolean bool16, Boolean bool17, Boolean bool18, Boolean bool19, Set<String> set2, Boolean bool20, Boolean bool21, Boolean bool22, Map<String, Set<String>> map, Boolean bool23, Boolean bool24, Set<String> set3, List<String> list, Boolean bool25, Boolean bool26, Boolean bool27, Boolean bool28, Boolean bool29, Boolean bool30, Boolean bool31, Boolean bool32, String str4, Boolean bool33, Set<String> set4, Boolean bool34, Set<String> set5, Boolean bool35, Boolean bool36, Map<String, List<MultiPanelButtonStateBackup>> map2, Boolean bool37, Boolean bool38, Boolean bool39, String str5, Boolean bool40, Boolean bool41, Boolean bool42, Boolean bool43, String str6, Boolean bool44, Boolean bool45, Set<String> set6, Boolean bool46, Set<String> set7, Boolean bool47, Boolean bool48, DrawerHolidayIconType drawerHolidayIconType, Boolean bool49, String str7, String str8, Boolean bool50, Boolean bool51, Boolean bool52, List<FilterSettingsModel> list2, Boolean bool53, Boolean bool54, Boolean bool55, Set<String> set8, Boolean bool56, List<SortingTabStateBackup> list3, Boolean bool57, List<SortingTabStateBackup> list4, Map<String, Pair<List<Long>, List<Integer>>> map3, Map<String, Pair<List<Long>, List<Integer>>> map4, Boolean bool58, Boolean bool59, Boolean bool60, Boolean bool61, List<Long> list5, Map<Long, BookmarksModel> map5, List<DialogTranslationSettings> list6, Boolean bool62, Boolean bool63, Boolean bool64, Boolean bool65, Boolean bool66, String str9, Map<Long, PlaylistModel> map6, String str10, String str11, Long l, List<TemplateModel> list7, Boolean bool67, Boolean bool68, Boolean bool69, String str12, Boolean bool70, List<TopicBackup> list8, Integer num, String allChatsTabFab, List<FilterFab> list9) {
        Intrinsics.checkNotNullParameter(allChatsTabFab, "allChatsTabFab");
        return new Backup(bool, str, bool2, bool3, bool4, str2, bool5, bool6, bool7, bool8, bool9, bool10, str3, bool11, bool12, bool13, bool14, drawerHeaderSettings, set, bool15, bool16, bool17, bool18, bool19, set2, bool20, bool21, bool22, map, bool23, bool24, set3, list, bool25, bool26, bool27, bool28, bool29, bool30, bool31, bool32, str4, bool33, set4, bool34, set5, bool35, bool36, map2, bool37, bool38, bool39, str5, bool40, bool41, bool42, bool43, str6, bool44, bool45, set6, bool46, set7, bool47, bool48, drawerHolidayIconType, bool49, str7, str8, bool50, bool51, bool52, list2, bool53, bool54, bool55, set8, bool56, list3, bool57, list4, map3, map4, bool58, bool59, bool60, bool61, list5, map5, list6, bool62, bool63, bool64, bool65, bool66, str9, map6, str10, str11, l, list7, bool67, bool68, bool69, str12, bool70, list8, num, allChatsTabFab, list9);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Backup) {
            Backup backup = (Backup) obj;
            return Intrinsics.areEqual(this.isAutoBackupEnabled, backup.isAutoBackupEnabled) && Intrinsics.areEqual(this.selectedAutoBackupInterval, backup.selectedAutoBackupInterval) && Intrinsics.areEqual(this.isFilesSendingPreviewAndCaptionEnabled, backup.isFilesSendingPreviewAndCaptionEnabled) && Intrinsics.areEqual(this.isVibrationEnabled, backup.isVibrationEnabled) && Intrinsics.areEqual(this.isRaiseToSwitchSpeakerEnabled, backup.isRaiseToSwitchSpeakerEnabled) && Intrinsics.areEqual(this.selectedStickersSize, backup.selectedStickersSize) && Intrinsics.areEqual(this.isQuickReactionEnabled, backup.isQuickReactionEnabled) && Intrinsics.areEqual(this.isPremiumAnimateStickers, backup.isPremiumAnimateStickers) && Intrinsics.areEqual(this.isPremiumShowBadge, backup.isPremiumShowBadge) && Intrinsics.areEqual(this.isPremiumShowStatus, backup.isPremiumShowStatus) && Intrinsics.areEqual(this.isPremiumAnimateAvatars, backup.isPremiumAnimateAvatars) && Intrinsics.areEqual(this.isProxyButtonForceVisible, backup.isProxyButtonForceVisible) && Intrinsics.areEqual(this.selectedContactsFilter, backup.selectedContactsFilter) && Intrinsics.areEqual(this.isReadAllChatsConfirmationShown, backup.isReadAllChatsConfirmationShown) && Intrinsics.areEqual(this.isProfileInfoHidden, backup.isProfileInfoHidden) && Intrinsics.areEqual(this.isMultiForwardingOptionsHintShown, backup.isMultiForwardingOptionsHintShown) && Intrinsics.areEqual(this.isSuggestPremiumReactionsEmoji, backup.isSuggestPremiumReactionsEmoji) && Intrinsics.areEqual(this.drawerHeaderSettings, backup.drawerHeaderSettings) && Intrinsics.areEqual(this.drawerItems, backup.drawerItems) && Intrinsics.areEqual(this.isActionBarAccountSwitchEnabled, backup.isActionBarAccountSwitchEnabled) && Intrinsics.areEqual(this.isMainActionBarMenuEnabled, backup.isMainActionBarMenuEnabled) && Intrinsics.areEqual(this.isDialogsCompactModeEnabled, backup.isDialogsCompactModeEnabled) && Intrinsics.areEqual(this.isSwipeToGoToNextUnreadDialogEnabled, backup.isSwipeToGoToNextUnreadDialogEnabled) && Intrinsics.areEqual(this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled, backup.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled) && Intrinsics.areEqual(this.swipeToGoToNextUnreadDialogTypes, backup.swipeToGoToNextUnreadDialogTypes) && Intrinsics.areEqual(this.isShowChannelBottomPanel, backup.isShowChannelBottomPanel) && Intrinsics.areEqual(this.isHideChatKeyboardOnScrollEnabled, backup.isHideChatKeyboardOnScrollEnabled) && Intrinsics.areEqual(this.isChatThemesEnabled, backup.isChatThemesEnabled) && Intrinsics.areEqual(this.chatAttachAlertButtons, backup.chatAttachAlertButtons) && Intrinsics.areEqual(this.isExtendedAvatarPreviewerEnabled, backup.isExtendedAvatarPreviewerEnabled) && Intrinsics.areEqual(this.isExtendedAvatarPreviewerByTapEnabled, backup.isExtendedAvatarPreviewerByTapEnabled) && Intrinsics.areEqual(this.selectedExtendedAvatarPreviewerItems, backup.selectedExtendedAvatarPreviewerItems) && Intrinsics.areEqual(this.messagePopupItems, backup.messagePopupItems) && Intrinsics.areEqual(this.isMessagePopupAggregatorEnabled, backup.isMessagePopupAggregatorEnabled) && Intrinsics.areEqual(this.isChannelWidePostsEnabled, backup.isChannelWidePostsEnabled) && Intrinsics.areEqual(this.isCallsConfirmationEnabled, backup.isCallsConfirmationEnabled) && Intrinsics.areEqual(this.isDeleteCloudConfirmationEnabled, backup.isDeleteCloudConfirmationEnabled) && Intrinsics.areEqual(this.isSendingGifConfirmationEnabled, backup.isSendingGifConfirmationEnabled) && Intrinsics.areEqual(this.isSendingStickerConfirmationEnabled, backup.isSendingStickerConfirmationEnabled) && Intrinsics.areEqual(this.isSpeakWithoutHoldEnabled, backup.isSpeakWithoutHoldEnabled) && Intrinsics.areEqual(this.isVideoSpeakWithoutHoldEnabled, backup.isVideoSpeakWithoutHoldEnabled) && Intrinsics.areEqual(this.selectedVideoVoiceCamera, backup.selectedVideoVoiceCamera) && Intrinsics.areEqual(this.isRecentChatsEnabled, backup.isRecentChatsEnabled) && Intrinsics.areEqual(this.selectedRecentChatsDialogTypes, backup.selectedRecentChatsDialogTypes) && Intrinsics.areEqual(this.isSaveArchiveRecentChatsEnabled, backup.isSaveArchiveRecentChatsEnabled) && Intrinsics.areEqual(this.selectedDrawStatusTypes, backup.selectedDrawStatusTypes) && Intrinsics.areEqual(this.isMultiPanelEnabled, backup.isMultiPanelEnabled) && Intrinsics.areEqual(this.isHideMultiPanelOnScrollEnabled, backup.isHideMultiPanelOnScrollEnabled) && Intrinsics.areEqual(this.multiPanelSettings, backup.multiPanelSettings) && Intrinsics.areEqual(this.isOpenForwardingOptionsAutomaticallyEnabled, backup.isOpenForwardingOptionsAutomaticallyEnabled) && Intrinsics.areEqual(this.isCustomSharingModeEnabled, backup.isCustomSharingModeEnabled) && Intrinsics.areEqual(this.isMultiReplyEnabled, backup.isMultiReplyEnabled) && Intrinsics.areEqual(this.selectedChatProfileTelegramIdMode, backup.selectedChatProfileTelegramIdMode) && Intrinsics.areEqual(this.isMessageQuickTranslateEnabled, backup.isMessageQuickTranslateEnabled) && Intrinsics.areEqual(this.isBotHelpTranslateEnabled, backup.isBotHelpTranslateEnabled) && Intrinsics.areEqual(this.isTranslateInSendPopupEnabled, backup.isTranslateInSendPopupEnabled) && Intrinsics.areEqual(this.isSilentSendingEnabled, backup.isSilentSendingEnabled) && Intrinsics.areEqual(this.selectedSentMessageFont, backup.selectedSentMessageFont) && Intrinsics.areEqual(this.isRememberLastDialogEnabled, backup.isRememberLastDialogEnabled) && Intrinsics.areEqual(this.isCombineMessagesEnabled, backup.isCombineMessagesEnabled) && Intrinsics.areEqual(this.selectedPhotoViewerMenuItems, backup.selectedPhotoViewerMenuItems) && Intrinsics.areEqual(this.isReactionsEnabled, backup.isReactionsEnabled) && Intrinsics.areEqual(this.selectedDialogTypesForMessagePopupReactions, backup.selectedDialogTypesForMessagePopupReactions) && Intrinsics.areEqual(this.isReactionsInSendPopupEnabled, backup.isReactionsInSendPopupEnabled) && Intrinsics.areEqual(this.isRevokeByDefault, backup.isRevokeByDefault) && this.drawerHolidayIconType == backup.drawerHolidayIconType && Intrinsics.areEqual(this.filterTabsAtBottom, backup.filterTabsAtBottom) && Intrinsics.areEqual(this.filterTabsNotificationMode, backup.filterTabsNotificationMode) && Intrinsics.areEqual(this.filterTabsWidthMode, backup.filterTabsWidthMode) && Intrinsics.areEqual(this.rememberLastFilterTab, backup.rememberLastFilterTab) && Intrinsics.areEqual(this.hideFolders, backup.hideFolders) && Intrinsics.areEqual(this.foldersFirst, backup.foldersFirst) && Intrinsics.areEqual(this.filters, backup.filters) && Intrinsics.areEqual(this.isChatSortingEnabledByDefault, backup.isChatSortingEnabledByDefault) && Intrinsics.areEqual(this.isAllChatsTabEnabled, backup.isAllChatsTabEnabled) && Intrinsics.areEqual(this.iconInsteadAllChatsTabTitle, backup.iconInsteadAllChatsTabTitle) && Intrinsics.areEqual(this.allChatsTabFabs, backup.allChatsTabFabs) && Intrinsics.areEqual(this.isSortingChatsEnabled, backup.isSortingChatsEnabled) && Intrinsics.areEqual(this.sortingSettings, backup.sortingSettings) && Intrinsics.areEqual(this.isArchiveSortingChatsEnabled, backup.isArchiveSortingChatsEnabled) && Intrinsics.areEqual(this.archiveSortingSettings, backup.archiveSortingSettings) && Intrinsics.areEqual(this.sortingPinnedChats, backup.sortingPinnedChats) && Intrinsics.areEqual(this.archiveSortingPinnedChats, backup.archiveSortingPinnedChats) && Intrinsics.areEqual(this.isCLoudAlbumsEnabled, backup.isCLoudAlbumsEnabled) && Intrinsics.areEqual(this.isAlbumsIntroShown, backup.isAlbumsIntroShown) && Intrinsics.areEqual(this.isSortCloudAlbumsByNameEnabled, backup.isSortCloudAlbumsByNameEnabled) && Intrinsics.areEqual(this.isOpenAlbumsInsteadCloudEnabled, backup.isOpenAlbumsInsteadCloudEnabled) && Intrinsics.areEqual(this.albums, backup.albums) && Intrinsics.areEqual(this.bookmarks, backup.bookmarks) && Intrinsics.areEqual(this.dialogSettings, backup.dialogSettings) && Intrinsics.areEqual(this.isPlayerPinned, backup.isPlayerPinned) && Intrinsics.areEqual(this.isPinnedPlayerMinimized, backup.isPinnedPlayerMinimized) && Intrinsics.areEqual(this.isPinnedPlayerThemeOverridden, backup.isPinnedPlayerThemeOverridden) && Intrinsics.areEqual(this.isPinnedPlayerNightThemeEnabled, backup.isPinnedPlayerNightThemeEnabled) && Intrinsics.areEqual(this.isMusicIntroShown, backup.isMusicIntroShown) && Intrinsics.areEqual(this.selectedMusicTab, backup.selectedMusicTab) && Intrinsics.areEqual(this.musicPlaylists, backup.musicPlaylists) && Intrinsics.areEqual(this.templatesMode, backup.templatesMode) && Intrinsics.areEqual(this.selectedTemplatesSortingType, backup.selectedTemplatesSortingType) && Intrinsics.areEqual(this.templatesChannelId, backup.templatesChannelId) && Intrinsics.areEqual(this.templates, backup.templates) && Intrinsics.areEqual(this.topicsEnabled, backup.topicsEnabled) && Intrinsics.areEqual(this.topicsBarAtBottom, backup.topicsBarAtBottom) && Intrinsics.areEqual(this.isAutoUpdateCatalogEnabled, backup.isAutoUpdateCatalogEnabled) && Intrinsics.areEqual(this.selectedAutoUpdateCatalogInterval, backup.selectedAutoUpdateCatalogInterval) && Intrinsics.areEqual(this.noTopicFirst, backup.noTopicFirst) && Intrinsics.areEqual(this.topics, backup.topics) && Intrinsics.areEqual(this.version, backup.version) && Intrinsics.areEqual(this.allChatsTabFab, backup.allChatsTabFab) && Intrinsics.areEqual(this.allChatsTabMultiFabs, backup.allChatsTabMultiFabs);
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
        Boolean bool4 = this.isRaiseToSwitchSpeakerEnabled;
        int hashCode5 = (hashCode4 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        String str2 = this.selectedStickersSize;
        int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool5 = this.isQuickReactionEnabled;
        int hashCode7 = (hashCode6 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.isPremiumAnimateStickers;
        int hashCode8 = (hashCode7 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.isPremiumShowBadge;
        int hashCode9 = (hashCode8 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        Boolean bool8 = this.isPremiumShowStatus;
        int hashCode10 = (hashCode9 + (bool8 == null ? 0 : bool8.hashCode())) * 31;
        Boolean bool9 = this.isPremiumAnimateAvatars;
        int hashCode11 = (hashCode10 + (bool9 == null ? 0 : bool9.hashCode())) * 31;
        Boolean bool10 = this.isProxyButtonForceVisible;
        int hashCode12 = (hashCode11 + (bool10 == null ? 0 : bool10.hashCode())) * 31;
        String str3 = this.selectedContactsFilter;
        int hashCode13 = (hashCode12 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool11 = this.isReadAllChatsConfirmationShown;
        int hashCode14 = (hashCode13 + (bool11 == null ? 0 : bool11.hashCode())) * 31;
        Boolean bool12 = this.isProfileInfoHidden;
        int hashCode15 = (hashCode14 + (bool12 == null ? 0 : bool12.hashCode())) * 31;
        Boolean bool13 = this.isMultiForwardingOptionsHintShown;
        int hashCode16 = (hashCode15 + (bool13 == null ? 0 : bool13.hashCode())) * 31;
        Boolean bool14 = this.isSuggestPremiumReactionsEmoji;
        int hashCode17 = (hashCode16 + (bool14 == null ? 0 : bool14.hashCode())) * 31;
        DrawerHeaderSettings drawerHeaderSettings = this.drawerHeaderSettings;
        int hashCode18 = (hashCode17 + (drawerHeaderSettings == null ? 0 : drawerHeaderSettings.hashCode())) * 31;
        Set<String> set = this.drawerItems;
        int hashCode19 = (hashCode18 + (set == null ? 0 : set.hashCode())) * 31;
        Boolean bool15 = this.isActionBarAccountSwitchEnabled;
        int hashCode20 = (hashCode19 + (bool15 == null ? 0 : bool15.hashCode())) * 31;
        Boolean bool16 = this.isMainActionBarMenuEnabled;
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
        Boolean bool35 = this.isMultiPanelEnabled;
        int hashCode47 = (hashCode46 + (bool35 == null ? 0 : bool35.hashCode())) * 31;
        Boolean bool36 = this.isHideMultiPanelOnScrollEnabled;
        int hashCode48 = (hashCode47 + (bool36 == null ? 0 : bool36.hashCode())) * 31;
        Map<String, List<MultiPanelButtonStateBackup>> map2 = this.multiPanelSettings;
        int hashCode49 = (hashCode48 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Boolean bool37 = this.isOpenForwardingOptionsAutomaticallyEnabled;
        int hashCode50 = (hashCode49 + (bool37 == null ? 0 : bool37.hashCode())) * 31;
        Boolean bool38 = this.isCustomSharingModeEnabled;
        int hashCode51 = (hashCode50 + (bool38 == null ? 0 : bool38.hashCode())) * 31;
        Boolean bool39 = this.isMultiReplyEnabled;
        int hashCode52 = (hashCode51 + (bool39 == null ? 0 : bool39.hashCode())) * 31;
        String str5 = this.selectedChatProfileTelegramIdMode;
        int hashCode53 = (hashCode52 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool40 = this.isMessageQuickTranslateEnabled;
        int hashCode54 = (hashCode53 + (bool40 == null ? 0 : bool40.hashCode())) * 31;
        Boolean bool41 = this.isBotHelpTranslateEnabled;
        int hashCode55 = (hashCode54 + (bool41 == null ? 0 : bool41.hashCode())) * 31;
        Boolean bool42 = this.isTranslateInSendPopupEnabled;
        int hashCode56 = (hashCode55 + (bool42 == null ? 0 : bool42.hashCode())) * 31;
        Boolean bool43 = this.isSilentSendingEnabled;
        int hashCode57 = (hashCode56 + (bool43 == null ? 0 : bool43.hashCode())) * 31;
        String str6 = this.selectedSentMessageFont;
        int hashCode58 = (hashCode57 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Boolean bool44 = this.isRememberLastDialogEnabled;
        int hashCode59 = (hashCode58 + (bool44 == null ? 0 : bool44.hashCode())) * 31;
        Boolean bool45 = this.isCombineMessagesEnabled;
        int hashCode60 = (hashCode59 + (bool45 == null ? 0 : bool45.hashCode())) * 31;
        Set<String> set6 = this.selectedPhotoViewerMenuItems;
        int hashCode61 = (hashCode60 + (set6 == null ? 0 : set6.hashCode())) * 31;
        Boolean bool46 = this.isReactionsEnabled;
        int hashCode62 = (hashCode61 + (bool46 == null ? 0 : bool46.hashCode())) * 31;
        Set<String> set7 = this.selectedDialogTypesForMessagePopupReactions;
        int hashCode63 = (hashCode62 + (set7 == null ? 0 : set7.hashCode())) * 31;
        Boolean bool47 = this.isReactionsInSendPopupEnabled;
        int hashCode64 = (hashCode63 + (bool47 == null ? 0 : bool47.hashCode())) * 31;
        Boolean bool48 = this.isRevokeByDefault;
        int hashCode65 = (hashCode64 + (bool48 == null ? 0 : bool48.hashCode())) * 31;
        DrawerHolidayIconType drawerHolidayIconType = this.drawerHolidayIconType;
        int hashCode66 = (hashCode65 + (drawerHolidayIconType == null ? 0 : drawerHolidayIconType.hashCode())) * 31;
        Boolean bool49 = this.filterTabsAtBottom;
        int hashCode67 = (hashCode66 + (bool49 == null ? 0 : bool49.hashCode())) * 31;
        String str7 = this.filterTabsNotificationMode;
        int hashCode68 = (hashCode67 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.filterTabsWidthMode;
        int hashCode69 = (hashCode68 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Boolean bool50 = this.rememberLastFilterTab;
        int hashCode70 = (hashCode69 + (bool50 == null ? 0 : bool50.hashCode())) * 31;
        Boolean bool51 = this.hideFolders;
        int hashCode71 = (hashCode70 + (bool51 == null ? 0 : bool51.hashCode())) * 31;
        Boolean bool52 = this.foldersFirst;
        int hashCode72 = (hashCode71 + (bool52 == null ? 0 : bool52.hashCode())) * 31;
        List<FilterSettingsModel> list2 = this.filters;
        int hashCode73 = (hashCode72 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Boolean bool53 = this.isChatSortingEnabledByDefault;
        int hashCode74 = (hashCode73 + (bool53 == null ? 0 : bool53.hashCode())) * 31;
        Boolean bool54 = this.isAllChatsTabEnabled;
        int hashCode75 = (hashCode74 + (bool54 == null ? 0 : bool54.hashCode())) * 31;
        Boolean bool55 = this.iconInsteadAllChatsTabTitle;
        int hashCode76 = (hashCode75 + (bool55 == null ? 0 : bool55.hashCode())) * 31;
        Set<String> set8 = this.allChatsTabFabs;
        int hashCode77 = (hashCode76 + (set8 == null ? 0 : set8.hashCode())) * 31;
        Boolean bool56 = this.isSortingChatsEnabled;
        int hashCode78 = (hashCode77 + (bool56 == null ? 0 : bool56.hashCode())) * 31;
        List<SortingTabStateBackup> list3 = this.sortingSettings;
        int hashCode79 = (hashCode78 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Boolean bool57 = this.isArchiveSortingChatsEnabled;
        int hashCode80 = (hashCode79 + (bool57 == null ? 0 : bool57.hashCode())) * 31;
        List<SortingTabStateBackup> list4 = this.archiveSortingSettings;
        int hashCode81 = (hashCode80 + (list4 == null ? 0 : list4.hashCode())) * 31;
        Map<String, Pair<List<Long>, List<Integer>>> map3 = this.sortingPinnedChats;
        int hashCode82 = (hashCode81 + (map3 == null ? 0 : map3.hashCode())) * 31;
        Map<String, Pair<List<Long>, List<Integer>>> map4 = this.archiveSortingPinnedChats;
        int hashCode83 = (hashCode82 + (map4 == null ? 0 : map4.hashCode())) * 31;
        Boolean bool58 = this.isCLoudAlbumsEnabled;
        int hashCode84 = (hashCode83 + (bool58 == null ? 0 : bool58.hashCode())) * 31;
        Boolean bool59 = this.isAlbumsIntroShown;
        int hashCode85 = (hashCode84 + (bool59 == null ? 0 : bool59.hashCode())) * 31;
        Boolean bool60 = this.isSortCloudAlbumsByNameEnabled;
        int hashCode86 = (hashCode85 + (bool60 == null ? 0 : bool60.hashCode())) * 31;
        Boolean bool61 = this.isOpenAlbumsInsteadCloudEnabled;
        int hashCode87 = (hashCode86 + (bool61 == null ? 0 : bool61.hashCode())) * 31;
        List<Long> list5 = this.albums;
        int hashCode88 = (hashCode87 + (list5 == null ? 0 : list5.hashCode())) * 31;
        Map<Long, BookmarksModel> map5 = this.bookmarks;
        int hashCode89 = (hashCode88 + (map5 == null ? 0 : map5.hashCode())) * 31;
        List<DialogTranslationSettings> list6 = this.dialogSettings;
        int hashCode90 = (hashCode89 + (list6 == null ? 0 : list6.hashCode())) * 31;
        Boolean bool62 = this.isPlayerPinned;
        int hashCode91 = (hashCode90 + (bool62 == null ? 0 : bool62.hashCode())) * 31;
        Boolean bool63 = this.isPinnedPlayerMinimized;
        int hashCode92 = (hashCode91 + (bool63 == null ? 0 : bool63.hashCode())) * 31;
        Boolean bool64 = this.isPinnedPlayerThemeOverridden;
        int hashCode93 = (hashCode92 + (bool64 == null ? 0 : bool64.hashCode())) * 31;
        Boolean bool65 = this.isPinnedPlayerNightThemeEnabled;
        int hashCode94 = (hashCode93 + (bool65 == null ? 0 : bool65.hashCode())) * 31;
        Boolean bool66 = this.isMusicIntroShown;
        int hashCode95 = (hashCode94 + (bool66 == null ? 0 : bool66.hashCode())) * 31;
        String str9 = this.selectedMusicTab;
        int hashCode96 = (hashCode95 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Map<Long, PlaylistModel> map6 = this.musicPlaylists;
        int hashCode97 = (hashCode96 + (map6 == null ? 0 : map6.hashCode())) * 31;
        String str10 = this.templatesMode;
        int hashCode98 = (hashCode97 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.selectedTemplatesSortingType;
        int hashCode99 = (hashCode98 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Long l = this.templatesChannelId;
        int hashCode100 = (hashCode99 + (l == null ? 0 : l.hashCode())) * 31;
        List<TemplateModel> list7 = this.templates;
        int hashCode101 = (hashCode100 + (list7 == null ? 0 : list7.hashCode())) * 31;
        Boolean bool67 = this.topicsEnabled;
        int hashCode102 = (hashCode101 + (bool67 == null ? 0 : bool67.hashCode())) * 31;
        Boolean bool68 = this.topicsBarAtBottom;
        int hashCode103 = (hashCode102 + (bool68 == null ? 0 : bool68.hashCode())) * 31;
        Boolean bool69 = this.isAutoUpdateCatalogEnabled;
        int hashCode104 = (hashCode103 + (bool69 == null ? 0 : bool69.hashCode())) * 31;
        String str12 = this.selectedAutoUpdateCatalogInterval;
        int hashCode105 = (hashCode104 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Boolean bool70 = this.noTopicFirst;
        int hashCode106 = (hashCode105 + (bool70 == null ? 0 : bool70.hashCode())) * 31;
        List<TopicBackup> list8 = this.topics;
        int hashCode107 = (hashCode106 + (list8 == null ? 0 : list8.hashCode())) * 31;
        Integer num = this.version;
        int hashCode108 = (((hashCode107 + (num == null ? 0 : num.hashCode())) * 31) + this.allChatsTabFab.hashCode()) * 31;
        List<FilterFab> list9 = this.allChatsTabMultiFabs;
        return hashCode108 + (list9 != null ? list9.hashCode() : 0);
    }

    public String toString() {
        return "Backup(isAutoBackupEnabled=" + this.isAutoBackupEnabled + ", selectedAutoBackupInterval=" + this.selectedAutoBackupInterval + ", isFilesSendingPreviewAndCaptionEnabled=" + this.isFilesSendingPreviewAndCaptionEnabled + ", isVibrationEnabled=" + this.isVibrationEnabled + ", isRaiseToSwitchSpeakerEnabled=" + this.isRaiseToSwitchSpeakerEnabled + ", selectedStickersSize=" + this.selectedStickersSize + ", isQuickReactionEnabled=" + this.isQuickReactionEnabled + ", isPremiumAnimateStickers=" + this.isPremiumAnimateStickers + ", isPremiumShowBadge=" + this.isPremiumShowBadge + ", isPremiumShowStatus=" + this.isPremiumShowStatus + ", isPremiumAnimateAvatars=" + this.isPremiumAnimateAvatars + ", isProxyButtonForceVisible=" + this.isProxyButtonForceVisible + ", selectedContactsFilter=" + this.selectedContactsFilter + ", isReadAllChatsConfirmationShown=" + this.isReadAllChatsConfirmationShown + ", isProfileInfoHidden=" + this.isProfileInfoHidden + ", isMultiForwardingOptionsHintShown=" + this.isMultiForwardingOptionsHintShown + ", isSuggestPremiumReactionsEmoji=" + this.isSuggestPremiumReactionsEmoji + ", drawerHeaderSettings=" + this.drawerHeaderSettings + ", drawerItems=" + this.drawerItems + ", isActionBarAccountSwitchEnabled=" + this.isActionBarAccountSwitchEnabled + ", isMainActionBarMenuEnabled=" + this.isMainActionBarMenuEnabled + ", isDialogsCompactModeEnabled=" + this.isDialogsCompactModeEnabled + ", isSwipeToGoToNextUnreadDialogEnabled=" + this.isSwipeToGoToNextUnreadDialogEnabled + ", isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled=" + this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled + ", swipeToGoToNextUnreadDialogTypes=" + this.swipeToGoToNextUnreadDialogTypes + ", isShowChannelBottomPanel=" + this.isShowChannelBottomPanel + ", isHideChatKeyboardOnScrollEnabled=" + this.isHideChatKeyboardOnScrollEnabled + ", isChatThemesEnabled=" + this.isChatThemesEnabled + ", chatAttachAlertButtons=" + this.chatAttachAlertButtons + ", isExtendedAvatarPreviewerEnabled=" + this.isExtendedAvatarPreviewerEnabled + ", isExtendedAvatarPreviewerByTapEnabled=" + this.isExtendedAvatarPreviewerByTapEnabled + ", selectedExtendedAvatarPreviewerItems=" + this.selectedExtendedAvatarPreviewerItems + ", messagePopupItems=" + this.messagePopupItems + ", isMessagePopupAggregatorEnabled=" + this.isMessagePopupAggregatorEnabled + ", isChannelWidePostsEnabled=" + this.isChannelWidePostsEnabled + ", isCallsConfirmationEnabled=" + this.isCallsConfirmationEnabled + ", isDeleteCloudConfirmationEnabled=" + this.isDeleteCloudConfirmationEnabled + ", isSendingGifConfirmationEnabled=" + this.isSendingGifConfirmationEnabled + ", isSendingStickerConfirmationEnabled=" + this.isSendingStickerConfirmationEnabled + ", isSpeakWithoutHoldEnabled=" + this.isSpeakWithoutHoldEnabled + ", isVideoSpeakWithoutHoldEnabled=" + this.isVideoSpeakWithoutHoldEnabled + ", selectedVideoVoiceCamera=" + this.selectedVideoVoiceCamera + ", isRecentChatsEnabled=" + this.isRecentChatsEnabled + ", selectedRecentChatsDialogTypes=" + this.selectedRecentChatsDialogTypes + ", isSaveArchiveRecentChatsEnabled=" + this.isSaveArchiveRecentChatsEnabled + ", selectedDrawStatusTypes=" + this.selectedDrawStatusTypes + ", isMultiPanelEnabled=" + this.isMultiPanelEnabled + ", isHideMultiPanelOnScrollEnabled=" + this.isHideMultiPanelOnScrollEnabled + ", multiPanelSettings=" + this.multiPanelSettings + ", isOpenForwardingOptionsAutomaticallyEnabled=" + this.isOpenForwardingOptionsAutomaticallyEnabled + ", isCustomSharingModeEnabled=" + this.isCustomSharingModeEnabled + ", isMultiReplyEnabled=" + this.isMultiReplyEnabled + ", selectedChatProfileTelegramIdMode=" + this.selectedChatProfileTelegramIdMode + ", isMessageQuickTranslateEnabled=" + this.isMessageQuickTranslateEnabled + ", isBotHelpTranslateEnabled=" + this.isBotHelpTranslateEnabled + ", isTranslateInSendPopupEnabled=" + this.isTranslateInSendPopupEnabled + ", isSilentSendingEnabled=" + this.isSilentSendingEnabled + ", selectedSentMessageFont=" + this.selectedSentMessageFont + ", isRememberLastDialogEnabled=" + this.isRememberLastDialogEnabled + ", isCombineMessagesEnabled=" + this.isCombineMessagesEnabled + ", selectedPhotoViewerMenuItems=" + this.selectedPhotoViewerMenuItems + ", isReactionsEnabled=" + this.isReactionsEnabled + ", selectedDialogTypesForMessagePopupReactions=" + this.selectedDialogTypesForMessagePopupReactions + ", isReactionsInSendPopupEnabled=" + this.isReactionsInSendPopupEnabled + ", isRevokeByDefault=" + this.isRevokeByDefault + ", drawerHolidayIconType=" + this.drawerHolidayIconType + ", filterTabsAtBottom=" + this.filterTabsAtBottom + ", filterTabsNotificationMode=" + this.filterTabsNotificationMode + ", filterTabsWidthMode=" + this.filterTabsWidthMode + ", rememberLastFilterTab=" + this.rememberLastFilterTab + ", hideFolders=" + this.hideFolders + ", foldersFirst=" + this.foldersFirst + ", filters=" + this.filters + ", isChatSortingEnabledByDefault=" + this.isChatSortingEnabledByDefault + ", isAllChatsTabEnabled=" + this.isAllChatsTabEnabled + ", iconInsteadAllChatsTabTitle=" + this.iconInsteadAllChatsTabTitle + ", allChatsTabFabs=" + this.allChatsTabFabs + ", isSortingChatsEnabled=" + this.isSortingChatsEnabled + ", sortingSettings=" + this.sortingSettings + ", isArchiveSortingChatsEnabled=" + this.isArchiveSortingChatsEnabled + ", archiveSortingSettings=" + this.archiveSortingSettings + ", sortingPinnedChats=" + this.sortingPinnedChats + ", archiveSortingPinnedChats=" + this.archiveSortingPinnedChats + ", isCLoudAlbumsEnabled=" + this.isCLoudAlbumsEnabled + ", isAlbumsIntroShown=" + this.isAlbumsIntroShown + ", isSortCloudAlbumsByNameEnabled=" + this.isSortCloudAlbumsByNameEnabled + ", isOpenAlbumsInsteadCloudEnabled=" + this.isOpenAlbumsInsteadCloudEnabled + ", albums=" + this.albums + ", bookmarks=" + this.bookmarks + ", dialogSettings=" + this.dialogSettings + ", isPlayerPinned=" + this.isPlayerPinned + ", isPinnedPlayerMinimized=" + this.isPinnedPlayerMinimized + ", isPinnedPlayerThemeOverridden=" + this.isPinnedPlayerThemeOverridden + ", isPinnedPlayerNightThemeEnabled=" + this.isPinnedPlayerNightThemeEnabled + ", isMusicIntroShown=" + this.isMusicIntroShown + ", selectedMusicTab=" + this.selectedMusicTab + ", musicPlaylists=" + this.musicPlaylists + ", templatesMode=" + this.templatesMode + ", selectedTemplatesSortingType=" + this.selectedTemplatesSortingType + ", templatesChannelId=" + this.templatesChannelId + ", templates=" + this.templates + ", topicsEnabled=" + this.topicsEnabled + ", topicsBarAtBottom=" + this.topicsBarAtBottom + ", isAutoUpdateCatalogEnabled=" + this.isAutoUpdateCatalogEnabled + ", selectedAutoUpdateCatalogInterval=" + this.selectedAutoUpdateCatalogInterval + ", noTopicFirst=" + this.noTopicFirst + ", topics=" + this.topics + ", version=" + this.version + ", allChatsTabFab=" + this.allChatsTabFab + ", allChatsTabMultiFabs=" + this.allChatsTabMultiFabs + ')';
    }

    public Backup(Boolean bool, String str, Boolean bool2, Boolean bool3, Boolean bool4, String str2, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, Boolean bool9, Boolean bool10, String str3, Boolean bool11, Boolean bool12, Boolean bool13, Boolean bool14, DrawerHeaderSettings drawerHeaderSettings, Set<String> set, Boolean bool15, Boolean bool16, Boolean bool17, Boolean bool18, Boolean bool19, Set<String> set2, Boolean bool20, Boolean bool21, Boolean bool22, Map<String, Set<String>> map, Boolean bool23, Boolean bool24, Set<String> set3, List<String> list, Boolean bool25, Boolean bool26, Boolean bool27, Boolean bool28, Boolean bool29, Boolean bool30, Boolean bool31, Boolean bool32, String str4, Boolean bool33, Set<String> set4, Boolean bool34, Set<String> set5, Boolean bool35, Boolean bool36, Map<String, List<MultiPanelButtonStateBackup>> map2, Boolean bool37, Boolean bool38, Boolean bool39, String str5, Boolean bool40, Boolean bool41, Boolean bool42, Boolean bool43, String str6, Boolean bool44, Boolean bool45, Set<String> set6, Boolean bool46, Set<String> set7, Boolean bool47, Boolean bool48, DrawerHolidayIconType drawerHolidayIconType, Boolean bool49, String str7, String str8, Boolean bool50, Boolean bool51, Boolean bool52, List<FilterSettingsModel> list2, Boolean bool53, Boolean bool54, Boolean bool55, Set<String> set8, Boolean bool56, List<SortingTabStateBackup> list3, Boolean bool57, List<SortingTabStateBackup> list4, Map<String, Pair<List<Long>, List<Integer>>> map3, Map<String, Pair<List<Long>, List<Integer>>> map4, Boolean bool58, Boolean bool59, Boolean bool60, Boolean bool61, List<Long> list5, Map<Long, BookmarksModel> map5, List<DialogTranslationSettings> list6, Boolean bool62, Boolean bool63, Boolean bool64, Boolean bool65, Boolean bool66, String str9, Map<Long, PlaylistModel> map6, String str10, String str11, Long l, List<TemplateModel> list7, Boolean bool67, Boolean bool68, Boolean bool69, String str12, Boolean bool70, List<TopicBackup> list8, Integer num, String allChatsTabFab, List<FilterFab> list9) {
        Intrinsics.checkNotNullParameter(allChatsTabFab, "allChatsTabFab");
        this.isAutoBackupEnabled = bool;
        this.selectedAutoBackupInterval = str;
        this.isFilesSendingPreviewAndCaptionEnabled = bool2;
        this.isVibrationEnabled = bool3;
        this.isRaiseToSwitchSpeakerEnabled = bool4;
        this.selectedStickersSize = str2;
        this.isQuickReactionEnabled = bool5;
        this.isPremiumAnimateStickers = bool6;
        this.isPremiumShowBadge = bool7;
        this.isPremiumShowStatus = bool8;
        this.isPremiumAnimateAvatars = bool9;
        this.isProxyButtonForceVisible = bool10;
        this.selectedContactsFilter = str3;
        this.isReadAllChatsConfirmationShown = bool11;
        this.isProfileInfoHidden = bool12;
        this.isMultiForwardingOptionsHintShown = bool13;
        this.isSuggestPremiumReactionsEmoji = bool14;
        this.drawerHeaderSettings = drawerHeaderSettings;
        this.drawerItems = set;
        this.isActionBarAccountSwitchEnabled = bool15;
        this.isMainActionBarMenuEnabled = bool16;
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
        this.isMultiPanelEnabled = bool35;
        this.isHideMultiPanelOnScrollEnabled = bool36;
        this.multiPanelSettings = map2;
        this.isOpenForwardingOptionsAutomaticallyEnabled = bool37;
        this.isCustomSharingModeEnabled = bool38;
        this.isMultiReplyEnabled = bool39;
        this.selectedChatProfileTelegramIdMode = str5;
        this.isMessageQuickTranslateEnabled = bool40;
        this.isBotHelpTranslateEnabled = bool41;
        this.isTranslateInSendPopupEnabled = bool42;
        this.isSilentSendingEnabled = bool43;
        this.selectedSentMessageFont = str6;
        this.isRememberLastDialogEnabled = bool44;
        this.isCombineMessagesEnabled = bool45;
        this.selectedPhotoViewerMenuItems = set6;
        this.isReactionsEnabled = bool46;
        this.selectedDialogTypesForMessagePopupReactions = set7;
        this.isReactionsInSendPopupEnabled = bool47;
        this.isRevokeByDefault = bool48;
        this.drawerHolidayIconType = drawerHolidayIconType;
        this.filterTabsAtBottom = bool49;
        this.filterTabsNotificationMode = str7;
        this.filterTabsWidthMode = str8;
        this.rememberLastFilterTab = bool50;
        this.hideFolders = bool51;
        this.foldersFirst = bool52;
        this.filters = list2;
        this.isChatSortingEnabledByDefault = bool53;
        this.isAllChatsTabEnabled = bool54;
        this.iconInsteadAllChatsTabTitle = bool55;
        this.allChatsTabFabs = set8;
        this.isSortingChatsEnabled = bool56;
        this.sortingSettings = list3;
        this.isArchiveSortingChatsEnabled = bool57;
        this.archiveSortingSettings = list4;
        this.sortingPinnedChats = map3;
        this.archiveSortingPinnedChats = map4;
        this.isCLoudAlbumsEnabled = bool58;
        this.isAlbumsIntroShown = bool59;
        this.isSortCloudAlbumsByNameEnabled = bool60;
        this.isOpenAlbumsInsteadCloudEnabled = bool61;
        this.albums = list5;
        this.bookmarks = map5;
        this.dialogSettings = list6;
        this.isPlayerPinned = bool62;
        this.isPinnedPlayerMinimized = bool63;
        this.isPinnedPlayerThemeOverridden = bool64;
        this.isPinnedPlayerNightThemeEnabled = bool65;
        this.isMusicIntroShown = bool66;
        this.selectedMusicTab = str9;
        this.musicPlaylists = map6;
        this.templatesMode = str10;
        this.selectedTemplatesSortingType = str11;
        this.templatesChannelId = l;
        this.templates = list7;
        this.topicsEnabled = bool67;
        this.topicsBarAtBottom = bool68;
        this.isAutoUpdateCatalogEnabled = bool69;
        this.selectedAutoUpdateCatalogInterval = str12;
        this.noTopicFirst = bool70;
        this.topics = list8;
        this.version = num;
        this.allChatsTabFab = allChatsTabFab;
        this.allChatsTabMultiFabs = list9;
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

    public final Boolean isRaiseToSwitchSpeakerEnabled() {
        return this.isRaiseToSwitchSpeakerEnabled;
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

    public final Boolean isProxyButtonForceVisible() {
        return this.isProxyButtonForceVisible;
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

    public final Boolean isMultiPanelEnabled() {
        return this.isMultiPanelEnabled;
    }

    public final Boolean isHideMultiPanelOnScrollEnabled() {
        return this.isHideMultiPanelOnScrollEnabled;
    }

    public final Map<String, List<MultiPanelButtonStateBackup>> getMultiPanelSettings() {
        return this.multiPanelSettings;
    }

    public final Boolean isOpenForwardingOptionsAutomaticallyEnabled() {
        return this.isOpenForwardingOptionsAutomaticallyEnabled;
    }

    public final Boolean isCustomSharingModeEnabled() {
        return this.isCustomSharingModeEnabled;
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

    public final Map<Long, BookmarksModel> getBookmarks() {
        return this.bookmarks;
    }

    public final List<DialogTranslationSettings> getDialogSettings() {
        return this.dialogSettings;
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

    public final Boolean isAutoUpdateCatalogEnabled() {
        return this.isAutoUpdateCatalogEnabled;
    }

    public final String getSelectedAutoUpdateCatalogInterval() {
        return this.selectedAutoUpdateCatalogInterval;
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
    public /* synthetic */ Backup(java.lang.Boolean r108, java.lang.String r109, java.lang.Boolean r110, java.lang.Boolean r111, java.lang.Boolean r112, java.lang.String r113, java.lang.Boolean r114, java.lang.Boolean r115, java.lang.Boolean r116, java.lang.Boolean r117, java.lang.Boolean r118, java.lang.Boolean r119, java.lang.String r120, java.lang.Boolean r121, java.lang.Boolean r122, java.lang.Boolean r123, java.lang.Boolean r124, org.fork.models.DrawerHeaderSettings r125, java.util.Set r126, java.lang.Boolean r127, java.lang.Boolean r128, java.lang.Boolean r129, java.lang.Boolean r130, java.lang.Boolean r131, java.util.Set r132, java.lang.Boolean r133, java.lang.Boolean r134, java.lang.Boolean r135, java.util.Map r136, java.lang.Boolean r137, java.lang.Boolean r138, java.util.Set r139, java.util.List r140, java.lang.Boolean r141, java.lang.Boolean r142, java.lang.Boolean r143, java.lang.Boolean r144, java.lang.Boolean r145, java.lang.Boolean r146, java.lang.Boolean r147, java.lang.Boolean r148, java.lang.String r149, java.lang.Boolean r150, java.util.Set r151, java.lang.Boolean r152, java.util.Set r153, java.lang.Boolean r154, java.lang.Boolean r155, java.util.Map r156, java.lang.Boolean r157, java.lang.Boolean r158, java.lang.Boolean r159, java.lang.String r160, java.lang.Boolean r161, java.lang.Boolean r162, java.lang.Boolean r163, java.lang.Boolean r164, java.lang.String r165, java.lang.Boolean r166, java.lang.Boolean r167, java.util.Set r168, java.lang.Boolean r169, java.util.Set r170, java.lang.Boolean r171, java.lang.Boolean r172, org.fork.enums.DrawerHolidayIconType r173, java.lang.Boolean r174, java.lang.String r175, java.lang.String r176, java.lang.Boolean r177, java.lang.Boolean r178, java.lang.Boolean r179, java.util.List r180, java.lang.Boolean r181, java.lang.Boolean r182, java.lang.Boolean r183, java.util.Set r184, java.lang.Boolean r185, java.util.List r186, java.lang.Boolean r187, java.util.List r188, java.util.Map r189, java.util.Map r190, java.lang.Boolean r191, java.lang.Boolean r192, java.lang.Boolean r193, java.lang.Boolean r194, java.util.List r195, java.util.Map r196, java.util.List r197, java.lang.Boolean r198, java.lang.Boolean r199, java.lang.Boolean r200, java.lang.Boolean r201, java.lang.Boolean r202, java.lang.String r203, java.util.Map r204, java.lang.String r205, java.lang.String r206, java.lang.Long r207, java.util.List r208, java.lang.Boolean r209, java.lang.Boolean r210, java.lang.Boolean r211, java.lang.String r212, java.lang.Boolean r213, java.util.List r214, java.lang.Integer r215, java.lang.String r216, java.util.List r217, int r218, int r219, int r220, int r221, kotlin.jvm.internal.DefaultConstructorMarker r222) {
        /*
            Method dump skipped, instructions count: 1317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fork.models.backup.Backup.<init>(java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, org.fork.models.DrawerHeaderSettings, java.util.Set, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.Map, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.lang.Boolean, java.util.Map, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.lang.Boolean, org.fork.enums.DrawerHolidayIconType, java.lang.Boolean, java.lang.String, java.lang.String, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.Set, java.lang.Boolean, java.util.List, java.lang.Boolean, java.util.List, java.util.Map, java.util.Map, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.util.List, java.util.Map, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.util.Map, java.lang.String, java.lang.String, java.lang.Long, java.util.List, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean, java.lang.String, java.lang.Boolean, java.util.List, java.lang.Integer, java.lang.String, java.util.List, int, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final String getAllChatsTabFab() {
        return this.allChatsTabFab;
    }

    public final List<FilterFab> getAllChatsTabMultiFabs() {
        return this.allChatsTabMultiFabs;
    }
}
