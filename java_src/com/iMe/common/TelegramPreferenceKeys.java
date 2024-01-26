package com.iMe.common;

import com.iMe.fork.enums.ChatProfileDialogType;
import com.iMe.fork.enums.ChatProfileTelegramIdMode;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.enums.DrawStatusType;
import com.iMe.fork.enums.DrawerHolidayIconType;
import com.iMe.fork.enums.ExtendedAvatarPreviewerItem;
import com.iMe.fork.enums.FilterTabNotificationMode;
import com.iMe.fork.enums.FilterTabWidthMode;
import com.iMe.fork.enums.FormattingPanelType;
import com.iMe.fork.enums.Interval;
import com.iMe.fork.enums.LockedSection;
import com.iMe.fork.enums.MessagePopupItem;
import com.iMe.fork.enums.MultiPanelButton;
import com.iMe.fork.enums.PhotoViewerMenuItem;
import com.iMe.fork.enums.SentMessageFont;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.enums.StickersSize;
import com.iMe.fork.enums.TemplatesMode;
import com.iMe.fork.enums.TemplatesSortingType;
import com.iMe.fork.enums.VideoVoiceCamera;
import com.iMe.model.contacts.ContactsFilter;
import com.iMe.p030ui.drawer.DrawerAccountData;
import com.iMe.p030ui.drawer.DrawerItem;
import com.iMe.p030ui.music.MusicTab;
import com.iMe.storage.domain.model.filters.FilterFab;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
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

        public static final String isProxyButtonEnabled() {
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

        public static final String selectedFilterTabsWidthMode() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("filterTabsWidthMode");
        }

        public static final String selectedDrawerHolidayIconType() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedDrawerHolidayIconType");
        }

        public static final String isNewTelegramAuthorizationRulesRead() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isNewTelegramAuthorizationRulesRead");
        }

        public static final String isDialogsPremiumHintEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isDialogsPremiumHintEnabled");
        }

        public static final String isChatAttachAlertWalletBotEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isChatAttachAlertWalletBotEnabled");
        }

        public static final String isChatProfileEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isChatProfileEnabled");
        }

        public static final String selectedChatProfileDialogTypes() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedChatProfileDialogTypes");
        }

        public static final String selectedFormattingPanelType() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("selectedFormattingPanelType");
        }

        public static final String isForwardingPreviewEditorHintShown() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isForwardingPreviewEditorHintShown");
        }

        public static final String isReplyColorsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isReplyColorsEnabled");
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

            public static final boolean isChatAttachAlertWalletBotEnabled() {
                return false;
            }

            public static final boolean isChatProfileEnabled() {
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

            public static final boolean isDebugThemeSwitchEnabled() {
                return true;
            }

            public static final boolean isDeleteCloudConfirmationEnabled() {
                return true;
            }

            public static final boolean isDialogsCompactModeEnabled() {
                return false;
            }

            public static final boolean isDialogsPremiumHintEnabled() {
                return true;
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

            public static final boolean isForwardingPreviewEditorHintShown() {
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

            public static final boolean isPlayerPinned() {
                return false;
            }

            public static final boolean isProfileInfoHidden() {
                return false;
            }

            public static final boolean isProxyButtonEnabled() {
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

            public static final boolean isReplyColorsEnabled() {
                return true;
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

            public static final boolean isTranslateInSendPopupEnabled() {
                return true;
            }

            public static final boolean isVibrationEnabled() {
                return true;
            }

            public static final boolean isVideoSpeakWithoutHoldEnabled() {
                return false;
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
                return DrawerItem.Companion.getDefaultItems();
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

            public static final Set<ChatProfileDialogType> selectedChatProfileDialogTypes() {
                Set<ChatProfileDialogType> set;
                set = ArraysKt___ArraysKt.toSet(ChatProfileDialogType.values());
                return set;
            }

            public static final FormattingPanelType selectedFormattingPanelType() {
                return FormattingPanelType.DEFAULT;
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

        public static final String isFoldersHidden() {
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

        public static final String buildPasscodeTypeKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeType_" + section.name());
        }

        public static final String buildPasscodeHashKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeHash_" + section.name());
        }

        public static final String buildPasscodeSaltStringKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeSaltString_" + section.name());
        }

        public static final String buildUseFingerprintKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("useFingerprint_" + section.name());
        }

        public static final String buildIsSectionLockedKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("isSectionLocked_" + section.name());
        }

        public static final String buildBadPasscodeTriesKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("badPasscodeTries_" + section.name());
        }

        public static final String buildPasscodeRetryInMsKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("passcodeRetryInMs_" + section.name());
        }

        public static final String buildLastUptimeMillisKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("lastUptimeMillis_" + section.name());
        }

        public static final String buildTimeoutKey(LockedSection section) {
            Intrinsics.checkNotNullParameter(section, "section");
            TelegramPreferenceKeys telegramPreferenceKeys = TelegramPreferenceKeys.INSTANCE;
            return telegramPreferenceKeys.withForkPrefix("timeout_" + section.name());
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
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("rememberLastTopicId");
        }

        public static final String isTopicsBarEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("topicsEnabled");
        }

        public static final String isTopicsBarAtBottomEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("topicsBarAtBottom");
        }

        public static final String isNoTopicFirstEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("noTopicFirst");
        }

        public static final String isRecentChatsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("recentChatsEnabled");
        }

        public static final String isSaveArchiveRecentChatsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("saveArchiveRecentChatsEnabled");
        }

        public static final String isHiddenChatsHidden() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("hiddenChatsHidden");
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

        public static final String isStoriesEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isStoriesEnabled");
        }

        public static final String isStoriesBarEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isStoriesBarEnabled");
        }

        public static final String isStoriesContactsAvatarsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isStoriesAvatarsEnabled");
        }

        public static final String isStoriesChannelsAvatarsEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isStoriesChannelAvatarsEnabled");
        }

        public static final String isStoriesProfileAvatarEnabled() {
            return TelegramPreferenceKeys.INSTANCE.withForkPrefix("isStoriesProfileAvatarEnabled");
        }

        /* compiled from: TelegramPreferenceKeys.kt */
        /* loaded from: classes3.dex */
        public static final class Default {
            static {
                new Default();
            }

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

            public static final boolean isChannelWidePostsEnabled() {
                return false;
            }

            public static final boolean isFoldersFirstEnabled() {
                return false;
            }

            public static final boolean isFoldersHidden() {
                return false;
            }

            public static final boolean isHiddenChatsHidden() {
                return true;
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

            public static final boolean isSaveArchiveRecentChatsEnabled() {
                return true;
            }

            public static final boolean isSectionLocked() {
                return false;
            }

            public static final boolean isShowChannelBottomPanel() {
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

            public static final boolean isStoriesBarEnabled() {
                return true;
            }

            public static final boolean isStoriesChannelsAvatarsEnabled() {
                return true;
            }

            public static final boolean isStoriesContactsAvatarsEnabled() {
                return true;
            }

            public static final boolean isStoriesEnabled() {
                return true;
            }

            public static final boolean isStoriesProfileAvatarEnabled() {
                return true;
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

            public static final long rememberLastDialogTopicId() {
                return 0L;
            }

            public static final int sortingDeployVersion() {
                return 0;
            }

            public static final long templatesChannelId() {
                return -1L;
            }

            public static final int timeout() {
                return 0;
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

            private Default() {
            }

            public static final Interval selectedAutoBackupInterval() {
                return Interval.EVERY_WEEK;
            }

            public static final Set<String> selectedAllChatsTabFabs() {
                Set<String> mutableSetOf;
                mutableSetOf = SetsKt__SetsKt.mutableSetOf(FilterFab.CREATE_STORY.name());
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

            public static final MusicTab selectedMusicTab() {
                return MusicTab.ALBUMS;
            }

            public static final SentMessageFont selectedSentMessageFont() {
                return SentMessageFont.REGULAR;
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
