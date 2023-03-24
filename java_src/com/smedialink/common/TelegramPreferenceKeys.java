package com.smedialink.common;

import com.smedialink.model.contacts.ContactsFilter;
import com.smedialink.p031ui.drawer.DrawerAccountData;
import com.smedialink.p031ui.drawer.DrawerSwitchableItem;
import com.smedialink.p031ui.music.MusicTab;
import com.smedialink.storage.domain.model.filters.FilterFab;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.AutoLockTime;
import org.fork.enums.ChatProfileTelegramIdMode;
import org.fork.enums.DialogType;
import org.fork.enums.DrawStatusType;
import org.fork.enums.DrawerHolidayIconType;
import org.fork.enums.ExtendedAvatarPreviewerItem;
import org.fork.enums.FilterTabNotificationMode;
import org.fork.enums.FilterTabWidthMode;
import org.fork.enums.Interval;
import org.fork.enums.LockedSection;
import org.fork.enums.MessagePopupItem;
import org.fork.enums.MultiPanelButton;
import org.fork.enums.PhotoViewerMenuItem;
import org.fork.enums.SentMessageFont;
import org.fork.enums.SortingFilter;
import org.fork.enums.StickersSize;
import org.fork.enums.TemplatesMode;
import org.fork.enums.TemplatesSortingType;
import org.fork.enums.VideoVoiceCamera;
import org.telegram.messenger.SharedConfig;
/* compiled from: TelegramPreferenceKeys.kt */
/* loaded from: classes3.dex */
public final class TelegramPreferenceKeys {
    public static final TelegramPreferenceKeys INSTANCE = new TelegramPreferenceKeys();

    private TelegramPreferenceKeys() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String withForkPrefix(String str) {
        return "iMe_" + str;
    }

    /* compiled from: TelegramPreferenceKeys.kt */
    /* loaded from: classes3.dex */
    public static final class Global {
        static {
            new Global();
        }

        private Global() {
        }

        public static final String promoSubscribeDialogLaunchCountLeft() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("promoSubscribeDialogLaunchCountLeft");
        }

        public static final String promoSubscribeDialogShowCountLeft() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("promoSubscribeDialogShowCountLeft");
        }

        public static final String lastLockedSectionsPauseTime() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("lastLockedSectionsPauseTime");
        }

        public static final String isWaitingForSectionPasscodeEnter() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isWaitingForSectionPasscodeEnter");
        }

        public static final String isDebugThemeSwitchEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("debugThemeSwitch");
        }

        public static final String isFilesOriginalNameSavingEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isFilesOriginalNameSavingEnabled");
        }

        public static final String isFilesSendingPreviewAndCaptionEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isFilesSendingPreviewAndCaptionEnabled");
        }

        public static final String isVibrationEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("allowVibration");
        }

        public static final String selectedStickersSize() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("stickersSize");
        }

        public static final String isProxyButtonForceVisible() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isProxyButtonForceVisible");
        }

        public static final String isReadAllChatsConfirmationShown() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showReadAllConfirmDialog");
        }

        public static final String isProfileInfoHidden() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("hideProfilePersonalInfo");
        }

        public static final String isMultiForwardingOptionsHintShown() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("multiForwardingOptionsHintShown");
        }

        public static final String selectedDrawerHeaderTitle() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("drawerHeaderTitle");
        }

        public static final String selectedDrawerHeaderSubtitle() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("drawerHeaderSubtitle");
        }

        public static final String isShowDrawerHeaderTitleEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showDrawerHeaderTitle");
        }

        public static final String isShowDrawerHeaderSubtitleEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showDrawerHeaderSubtitle");
        }

        public static final String isShowDrawerHeaderAvatarEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showDrawerHeaderAvatar");
        }

        public static final String isShowDrawerHeaderArchiveEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showDrawerHeaderArchive");
        }

        public static final String selectedDrawerItems() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("drawerItems");
        }

        public static final String isActionBarAccountSwitchEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("actionBarAccountSwitch");
        }

        public static final String isMainActionBarMenuEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("mainActionBarMenu");
        }

        public static final String isDialogsCompactModeEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("dialogsCompactMode");
        }

        public static final String isHideChatKeyboardOnScrollEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("chatHideKeyboardOnScroll");
        }

        public static final String isChatThemesEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("chatThemesEnabled");
        }

        public static final String isExtendedAvatarPreviewerEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("extendedAvatarPreviewer");
        }

        public static final String isExtendedAvatarPreviewerByTapEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("extendedAvatarPreviewerByTap");
        }

        public static final String selectedExtendedAvatarPreviewerItems() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("extendedAvatarPreviewerItems");
        }

        public static final String isCallsConfirmationEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showCallsConfirmDialog");
        }

        public static final String isDeleteCloudConfirmationEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showDeleteCloudConfirmDialog");
        }

        public static final String isSendingGifConfirmationEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showSendingGifConfirmDialog");
        }

        public static final String isSendingStickerConfirmationEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showSendingStickerConfirmDialog");
        }

        public static final String isSpeakWithoutHoldEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("speakWithoutHold");
        }

        public static final String isVideoSpeakWithoutHoldEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("videoSpeakWithoutHold");
        }

        public static final String selectedVideoVoiceCamera() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("videoVoiceCamera");
        }

        public static final String isOpenForwardingOptionsAutomaticallyEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("autoOpenForwardingOptions");
        }

        public static final String isCustomSharingModeEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("customSharingMode");
        }

        public static final String isMultiReplyEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("multiReply");
        }

        public static final String selectedChatProfileTelegramIdMode() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("chatProfileTelegramIdMode");
        }

        public static final String isMessageQuickTranslateEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("messageQuickTranslate");
        }

        public static final String isBotHelpTranslateEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("botHelpTranslate");
        }

        public static final String isTranslateInSendPopupEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("sendPopupTranslate");
        }

        public static final String isCombineMessagesEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("combineMessages");
        }

        public static final String selectedPhotoViewerMenuItems() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("photoViewerMenuItems");
        }

        public static final String isReactionsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("reactionsEnabled");
        }

        public static final String selectedDialogTypesForMessagePopupReactions() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("messagePopupReactionsEnabledDialogTypes");
        }

        public static final String isReactionsInSendPopupEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("sendPopupReactions");
        }

        public static final String isFilterTabsAtBottomEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("filterTabsAtBottom");
        }

        public static final String selectedFilterTabsNotificationMode() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("filterTabsNotificationMode");
        }

        public static final String isRememberLastFilterTabEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("rememberLastFilterTab");
        }

        public static final String isChatSortingEnabledByDefault() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("sortingEnabledByDefault");
        }

        public static final String isCloudAlbumsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("cloudAlbums");
        }

        public static final String isAlbumsIntroShown() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showAlbumsIntro");
        }

        public static final String isSortCloudAlbumsByNameEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("sortCloudAlbumsByName");
        }

        public static final String isPlayerPinned() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isPlayerPinned");
        }

        public static final String isPinnedPlayerMinimized() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isPinnedPlayerMinimized");
        }

        public static final String isPinnedPlayerThemeOverridden() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isPinnedPlayerThemeOverridden");
        }

        public static final String isPinnedPlayerNightThemeEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isPinnedPlayerNightTheme");
        }

        public static final String isMusicIntroShown() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showMusicIntro");
        }

        public static final String selectedTemplatesMode() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("templatesMode");
        }

        public static final String selectedTemplatesSortingType() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("templatesSortingType");
        }

        public static final String lastSelectedLanguages() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("lastSelectedLanguages");
        }

        public static final String isSuggestPremiumReactionsEmoji() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("suggestPremiumReactionsEmoji");
        }

        public static final String selectedFilterTabsWidthMode() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("filterTabsWidthMode");
        }

        public static final String selectedDrawerHolidayIconType() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedDrawerHolidayIconType");
        }

        public static final String isNewTelegramAuthorizationRulesRead() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isNewTelegramAuthorizationRulesRead");
        }

        /* compiled from: TelegramPreferenceKeys.kt */
        /* loaded from: classes3.dex */
        public static final class Default {
            static {
                new Default();
            }

            public static final boolean isActionBarAccountSwitchEnabled() {
                return false;
            }

            public static final boolean isAlbumsIntroShown() {
                return false;
            }

            public static final boolean isBotHelpTranslateEnabled() {
                return true;
            }

            public static final boolean isCallsConfirmationEnabled() {
                return true;
            }

            public static final boolean isChatSortingEnabledByDefault() {
                return false;
            }

            public static final boolean isChatThemesEnabled() {
                return false;
            }

            public static final boolean isCloudAlbumsEnabled() {
                return true;
            }

            public static final boolean isCombineMessagesEnabled() {
                return false;
            }

            public static final boolean isCustomSharingModeEnabled() {
                return true;
            }

            public static final boolean isDebugThemeSwitchEnabled() {
                return true;
            }

            public static final boolean isDeleteCloudConfirmationEnabled() {
                return true;
            }

            public static final boolean isDialogsCompactModeEnabled() {
                return false;
            }

            public static final boolean isExtendedAvatarPreviewerByTapEnabled() {
                return false;
            }

            public static final boolean isExtendedAvatarPreviewerEnabled() {
                return true;
            }

            public static final boolean isFilesOriginalNameSavingEnabled() {
                return true;
            }

            public static final boolean isFilesSendingPreviewAndCaptionEnabled() {
                return true;
            }

            public static final boolean isFilterTabsAtBottomEnabled() {
                return false;
            }

            public static final boolean isHideChatKeyboardOnScrollEnabled() {
                return false;
            }

            public static final boolean isMainActionBarMenuEnabled() {
                return true;
            }

            public static final boolean isMessageQuickTranslateEnabled() {
                return false;
            }

            public static final boolean isMultiForwardingOptionsHintShown() {
                return false;
            }

            public static final boolean isMultiReplyEnabled() {
                return true;
            }

            public static final boolean isMusicIntroShown() {
                return false;
            }

            public static final boolean isNewTelegramAuthorizationRulesRead() {
                return false;
            }

            public static final boolean isOpenForwardingOptionsAutomaticallyEnabled() {
                return false;
            }

            public static final boolean isPinnedPlayerMinimized() {
                return false;
            }

            public static final boolean isPinnedPlayerNightThemeEnabled() {
                return false;
            }

            public static final boolean isPinnedPlayerThemeOverridden() {
                return false;
            }

            public static final boolean isPlayerPinned() {
                return false;
            }

            public static final boolean isProfileInfoHidden() {
                return false;
            }

            public static final boolean isProxyButtonForceVisible() {
                return false;
            }

            public static final boolean isReactionsEnabled() {
                return true;
            }

            public static final boolean isReactionsInSendPopupEnabled() {
                return true;
            }

            public static final boolean isReadAllChatsConfirmationShown() {
                return false;
            }

            public static final boolean isRememberLastFilterTabEnabled() {
                return false;
            }

            public static final boolean isSendingGifConfirmationEnabled() {
                return false;
            }

            public static final boolean isSendingStickerConfirmationEnabled() {
                return false;
            }

            public static final boolean isShowDrawerHeaderArchiveEnabled() {
                return false;
            }

            public static final boolean isShowDrawerHeaderAvatarEnabled() {
                return true;
            }

            public static final boolean isShowDrawerHeaderSubtitleEnabled() {
                return true;
            }

            public static final boolean isShowDrawerHeaderTitleEnabled() {
                return true;
            }

            public static final boolean isSortCloudAlbumsByNameEnabled() {
                return false;
            }

            public static final boolean isSpeakWithoutHoldEnabled() {
                return false;
            }

            public static final boolean isSuggestPremiumReactionsEmoji() {
                return true;
            }

            public static final boolean isTranslateInSendPopupEnabled() {
                return true;
            }

            public static final boolean isVibrationEnabled() {
                return true;
            }

            public static final boolean isVideoSpeakWithoutHoldEnabled() {
                return false;
            }

            public static final boolean isWaitingForSectionPasscodeEnter() {
                return false;
            }

            public static final int lastLockedSectionsPauseTime() {
                return 0;
            }

            public static final String lastSelectedLanguages() {
                return "";
            }

            public static final int promoSubscribeDialogLaunchCountLeft() {
                return 2;
            }

            public static final int promoSubscribeDialogShowCountLeft() {
                return 3;
            }

            private Default() {
            }

            public static final StickersSize selectedStickersSize() {
                return StickersSize.MEDIUM;
            }

            public static final DrawerAccountData selectedDrawerHeaderTitle() {
                return DrawerAccountData.NAME;
            }

            public static final DrawerAccountData selectedDrawerHeaderSubtitle() {
                return DrawerAccountData.PHONE;
            }

            public static final Set<String> selectedDrawerItems() {
                return DrawerSwitchableItem.Companion.getDefaultItems();
            }

            public static final Set<String> selectedExtendedAvatarPreviewerItems() {
                Set<String> set;
                ExtendedAvatarPreviewerItem[] values = ExtendedAvatarPreviewerItem.values();
                ArrayList arrayList = new ArrayList(values.length);
                for (ExtendedAvatarPreviewerItem extendedAvatarPreviewerItem : values) {
                    arrayList.add(extendedAvatarPreviewerItem.name());
                }
                set = CollectionsKt___CollectionsKt.toSet(arrayList);
                return set;
            }

            public static final String selectedVideoVoiceCamera() {
                return VideoVoiceCamera.ASK.name();
            }

            public static final ChatProfileTelegramIdMode selectedChatProfileTelegramIdMode() {
                return ChatProfileTelegramIdMode.TELEGRAM_API;
            }

            public static final Set<String> selectedPhotoViewerMenuItems() {
                return PhotoViewerMenuItem.Companion.getDefaultEnumNames();
            }

            public static final Set<String> selectedDialogTypesForMessagePopupReactions() {
                Set<String> set;
                DialogType[] values = DialogType.values();
                ArrayList arrayList = new ArrayList(values.length);
                for (DialogType dialogType : values) {
                    arrayList.add(dialogType.name());
                }
                set = CollectionsKt___CollectionsKt.toSet(arrayList);
                return set;
            }

            public static final FilterTabNotificationMode selectedFilterTabsNotificationMode() {
                return FilterTabNotificationMode.NUMBER;
            }

            public static final TemplatesMode selectedTemplatesMode() {
                return TemplatesMode.OVAL;
            }

            public static final TemplatesSortingType selectedTemplatesSortingType() {
                return TemplatesSortingType.DATE;
            }

            public static final FilterTabWidthMode selectedFilterTabsWidthMode() {
                return FilterTabWidthMode.DEFAULT;
            }

            public static final DrawerHolidayIconType selectedDrawerHolidayIconType() {
                return DrawerHolidayIconType.DEFAULT;
            }
        }
    }

    /* compiled from: TelegramPreferenceKeys.kt */
    /* loaded from: classes3.dex */
    public static final class User {
        static {
            new User();
        }

        public static final String appVersionRequiredUpdate() {
            return "iMeAppVersionNeedUpdate";
        }

        public static final String isMultiPanelEnabled() {
            return "iMeChatPanel_PanelEnabled";
        }

        public static final String isSortingChatsEnabled() {
            return "sortingChatsEnabled";
        }

        public static final String walletRefreshToken() {
            return "walletRefreshToken";
        }

        private User() {
        }

        public static final String isOpenAlbumsInsteadCloudEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("openAlbumsInsteadCloud");
        }

        public static final String isAutoBackupEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("autoBackupEnabled");
        }

        public static final String selectedAutoBackupInterval() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("autoBackupInterval");
        }

        public static final String lastAutoBackupTime() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("lastAutoBackupTime");
        }

        public static final String isHideFoldersEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("hideFolders");
        }

        public static final String isFoldersFirstEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("foldersFirst");
        }

        public static final String isAllChatsTabEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("allChatsTabEnabled");
        }

        public static final String isIconInsteadAllChatsTabTitleEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("iconInsteadAllChatsTabTitle");
        }

        public static final String selectedAllChatsTabFabs() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedAllChatsTabFabs");
        }

        public static final String isArchiveSortingChatsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("archiveSorting");
        }

        public static final String buildSortingTabPositionKey(SortingFilter sortingFilter) {
            Intrinsics.checkNotNullParameter(sortingFilter, "sortingFilter");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("sortingTab_" + sortingFilter.name() + "_position");
        }

        public static final String buildSortingTabEnabledKey(SortingFilter sortingFilter) {
            Intrinsics.checkNotNullParameter(sortingFilter, "sortingFilter");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("sortingTab_" + sortingFilter.name() + "_enabled");
        }

        public static final String buildSortingTabSelectedFabsKey(SortingFilter sortingFilter) {
            Intrinsics.checkNotNullParameter(sortingFilter, "sortingFilter");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("sortingTab_" + sortingFilter.name() + "_selectedFabs");
        }

        public static final String sortingDeployVersion() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("SortingFilters_DeployVersion");
        }

        public static final String lastFilterTab() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("lastFilterTab");
        }

        public static final String isAccountMuted() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isAccountMuted");
        }

        public static final String isQuickReactionEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("quickReactionEnabled");
        }

        public static final String isPremiumAnimateStickers() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("premiumAnimateStickers");
        }

        public static final String isShowPremiumBadgeEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("premiumShowStar");
        }

        public static final String isShowPremiumStatusEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("premiumShowStatus");
        }

        public static final String isPremiumAnimateAvatars() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("premiumAnimateAvatars");
        }

        public static final String selectedContactsFilter() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("contactsFilter");
        }

        public static final String isSwipeToGoToNextUnreadDialogEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("swipeToGoToNextUnreadDialog");
        }

        public static final String isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("swipeToGoToNextUnreadDialogConsiderArchive");
        }

        public static final String selectedDialogTypesForSwipeToGoToNextUnreadDialog() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("swipeToGoToNextUnreadDialogTypes");
        }

        public static final String isShowChannelBottomPanel() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showChannelBottomPanel");
        }

        public static final String buildEnabledChatAttachAlertButtonsKey(DialogType dialogType) {
            Intrinsics.checkNotNullParameter(dialogType, "dialogType");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("enabledChatAttachAlertButtons_" + dialogType.name());
        }

        public static final String selectedMessagePopupItems() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("messagePopupItems");
        }

        public static final String isMessagePopupAggregatorEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isMessagePopupAggregatorEnabled");
        }

        public static final String isChannelWidePostsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("channelWidePosts");
        }

        public static final String isRevokeByDefault() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("deleteForAllSelectedByDefault");
        }

        public static final String buildAutoLockInKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("autoLockIn_" + section.name());
        }

        public static final String buildBadPasscodeTriesKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("badPasscodeTries_" + section.name());
        }

        public static final String buildIsSectionLockedKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("isSectionLocked_" + section.name());
        }

        public static final String buildLastUptimeMillisKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("lastUptimeMillis_" + section.name());
        }

        public static final String buildPasscodeHashKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeHash_" + section.name());
        }

        public static final String buildPasscodeRetryInMsKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeRetryInMs_" + section.name());
        }

        public static final String buildPasscodeSaltStringKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeSaltString_" + section.name());
        }

        public static final String buildPasscodeTypeKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeType_" + section.name());
        }

        public static final String buildUseFingerprintKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("useFingerprint_" + section.name());
        }

        public static final String isHideMultiPanelOnScrollEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isHideMultiPanelOnScrollEnabled");
        }

        public static final String buildMultiPanelButtonPositionKey(MultiPanelButton multiPanelButton, DialogType dialogType) {
            Intrinsics.checkNotNullParameter(multiPanelButton, "multiPanelButton");
            Intrinsics.checkNotNullParameter(dialogType, "dialogType");
            return "iMeChatPanel_" + multiPanelButton.name() + '_' + dialogType.name() + "_position";
        }

        public static final String buildMultiPanelButtonEnabledKey(MultiPanelButton multiPanelButton, DialogType dialogType) {
            Intrinsics.checkNotNullParameter(multiPanelButton, "multiPanelButton");
            Intrinsics.checkNotNullParameter(dialogType, "dialogType");
            return "iMeChatPanel_" + multiPanelButton.name() + '_' + dialogType.name() + "_enabled";
        }

        public static final String selectedMusicTab() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("lastMusicTab");
        }

        public static final String isNeuroBotsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("neuroBotsEnabled");
        }

        public static final String isNeuroBotsAutoEnabledInPersonalChats() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("neuroBotsAutoEnabledInPersonalChats");
        }

        public static final String isNeuroBotsAutoEnabledInGroups() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("neuroBotsAutoEnabledInGroups");
        }

        public static final String isShowOftenUsedNeuroBotsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("showOftenUsedNeuroBots");
        }

        public static final String templatesChannelId() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("templatesChannelId");
        }

        public static final String isSilentSendingEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("silentSending");
        }

        public static final String selectedSentMessageFont() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedSentMessageFont");
        }

        public static final String isRememberLastDialogEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("rememberLastDialog");
        }

        public static final String rememberLastDialogId() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("rememberLastDialogId");
        }

        public static final String rememberLastDialogTopicId() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("rememberLastDialogTopicId");
        }

        public static final String isTopicsBarEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("topicsEnabled");
        }

        public static final String isTopicsBarAtBottomEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("topicsBarAtBottom");
        }

        public static final String isAutoUpdateTopicsCatalogEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("autoUpdateTopicsCatalogEnabled");
        }

        public static final String selectedAutoUpdateTopicsCatalogInterval() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("autoUpdateTopicsCatalogInterval");
        }

        public static final String isNoTopicFirstEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("noTopicFirst");
        }

        public static final String lastAutoUpdateTopicsCatalogTime() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("lastAutoUpdateTopicsCatalogTime");
        }

        public static final String isRecentChatsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("recentChatsEnabled");
        }

        public static final String isSaveArchiveRecentChatsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("saveArchiveRecentChatsEnabled");
        }

        public static final String walletPinCodeEncrypted() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("walletPinCodeEncrypted");
        }

        public static final String walletFingerprintUnlockEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("walletFingerprintUnlockEnabled");
        }

        public static final String selectedRecentChatsDialogTypes() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedRecentChatsDialogTypes");
        }

        public static final String selectedDrawStatusTypes() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedDrawStatusTypes");
        }

        /* compiled from: TelegramPreferenceKeys.kt */
        /* loaded from: classes3.dex */
        public static final class Default {
            public static final Default INSTANCE = new Default();

            public static final String appVersionRequiredUpdate() {
                return null;
            }

            public static final int badPasscodeTries() {
                return 0;
            }

            public static final boolean isAccountMuted() {
                return false;
            }

            public static final boolean isAllChatsTabEnabled() {
                return true;
            }

            public static final boolean isAutoBackupEnabled() {
                return false;
            }

            public static final boolean isAutoUpdateTopicsCatalogEnabled() {
                return false;
            }

            public static final boolean isChannelWidePostsEnabled() {
                return false;
            }

            public static final boolean isFoldersFirstEnabled() {
                return false;
            }

            public static final boolean isHideFoldersEnabled() {
                return false;
            }

            public static final boolean isHideMultiPanelOnScrollEnabled() {
                return true;
            }

            public static final boolean isIconInsteadAllChatsTabTitleEnabled() {
                return false;
            }

            public static final boolean isMessagePopupAggregatorEnabled() {
                return true;
            }

            public static final boolean isMultiPanelEnabled() {
                return true;
            }

            public static final boolean isNeuroBotsAutoEnabledInGroups() {
                return false;
            }

            public static final boolean isNeuroBotsAutoEnabledInPersonalChats() {
                return false;
            }

            public static final boolean isNeuroBotsEnabled() {
                return false;
            }

            public static final boolean isNoTopicFirstEnabled() {
                return false;
            }

            public static final boolean isOpenAlbumsInsteadCloudEnabled() {
                return false;
            }

            public static final boolean isPremiumAnimateAvatars() {
                return true;
            }

            public static final boolean isPremiumAnimateStickers() {
                return true;
            }

            public static final boolean isQuickReactionEnabled() {
                return true;
            }

            public static final boolean isRecentChatsEnabled() {
                return false;
            }

            public static final boolean isRememberLastDialogEnabled() {
                return false;
            }

            public static final boolean isRevokeByDefault() {
                return false;
            }

            public static final boolean isSectionLocked() {
                return false;
            }

            public static final boolean isShowChannelBottomPanel() {
                return true;
            }

            public static final boolean isShowOftenUsedNeuroBotsEnabled() {
                return true;
            }

            public static final boolean isShowPremiumBadgeEnabled() {
                return true;
            }

            public static final boolean isShowPremiumStatusEnabled() {
                return true;
            }

            public static final boolean isSilentSendingEnabled() {
                return false;
            }

            public static final boolean isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled() {
                return true;
            }

            public static final boolean isSwipeToGoToNextUnreadDialogEnabled() {
                return true;
            }

            public static final boolean isTopicsBarAtBottomEnabled() {
                return false;
            }

            public static final boolean isTopicsBarEnabled() {
                return true;
            }

            public static final long lastAutoBackupTime() {
                return 0L;
            }

            public static final long lastAutoUpdateTopicsCatalogTime() {
                return 0L;
            }

            public static final int lastFilterTab() {
                return -1;
            }

            public static final long lastUptimeMillis() {
                return 0L;
            }

            public static final String passcodeHash() {
                return "";
            }

            public static final long passcodeRetryInMs() {
                return 0L;
            }

            public static final String passcodeSaltString() {
                return "";
            }

            public static final int passcodeType() {
                return 0;
            }

            public static final long rememberLastDialogId() {
                return 0L;
            }

            public static final int rememberLastDialogTopicId() {
                return 0;
            }

            public static final int sortingDeployVersion() {
                return 0;
            }

            public static final long templatesChannelId() {
                return -1L;
            }

            public static final boolean useFingerprint() {
                return true;
            }

            public static final boolean walletFingerprintUnlockEnabled() {
                return true;
            }

            public static final String walletPinCodeEncrypted() {
                return "";
            }

            public static final String walletRefreshToken() {
                return null;
            }

            public final boolean isSaveArchiveRecentChatsEnabled() {
                return true;
            }

            private Default() {
            }

            public static final Interval selectedAutoBackupInterval() {
                return Interval.EVERY_WEEK;
            }

            public static final Set<String> selectedAllChatsTabFabs() {
                Set<String> mutableSetOf;
                mutableSetOf = SetsKt__SetsKt.mutableSetOf(FilterFab.CREATE_CHAT.name());
                return mutableSetOf;
            }

            public static final boolean isSortingChatsEnabled() {
                return SharedConfig.isChatSortingEnabledByDefault;
            }

            public static final boolean isArchiveSortingChatsEnabled() {
                return SharedConfig.isChatSortingEnabledByDefault;
            }

            public static final ContactsFilter selectedContactsFilter() {
                return ContactsFilter.ALL;
            }

            public static final Set<String> selectedDialogTypesForSwipeToGoToNextUnreadDialog() {
                Set<String> of;
                of = SetsKt__SetsJVMKt.setOf(DialogType.CHANNEL.name());
                return of;
            }

            public static final Set<String> selectedMessagePopupItems() {
                return MessagePopupItem.Companion.getDefaultEnumNames();
            }

            public static final int autoLockInId() {
                return AutoLockTime.HOUR.getId();
            }

            public static final MusicTab selectedMusicTab() {
                return MusicTab.ALBUMS;
            }

            public static final SentMessageFont selectedSentMessageFont() {
                return SentMessageFont.REGULAR;
            }

            public static final Interval selectedAutoUpdateTopicsCatalogInterval() {
                return Interval.EVERY_WEEK;
            }

            public static final Set<String> selectedRecentChatsDialogTypes() {
                Set<String> of;
                of = SetsKt__SetsKt.setOf((Object[]) new String[]{"CHAT", "GROUP", "CHANNEL", "BOT", "FORUM"});
                return of;
            }

            public static final Set<String> selectedDrawStatusTypes() {
                Set<String> of;
                of = SetsKt__SetsKt.setOf((Object[]) new String[]{DrawStatusType.UNREAD_COUNT_CHATS.name(), DrawStatusType.ONLINE_USER.name(), DrawStatusType.LIVE_VIDEO.name(), DrawStatusType.REACTION.name(), DrawStatusType.MENTIONS.name()});
                return of;
            }
        }
    }
}
