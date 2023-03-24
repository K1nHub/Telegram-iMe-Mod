package org.fork.controller;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;
import com.smedialink.common.Constants;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.p031ui.drawer.DrawerSwitchableItem;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.domain.model.filters.FilterFab;
import com.smedialink.utils.extentions.common.ContextExtKt;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.fork.controller.BackupController;
import org.fork.enums.BackupComponent;
import org.fork.enums.ChatProfileTelegramIdMode;
import org.fork.enums.DialogType;
import org.fork.enums.DrawerHolidayIconType;
import org.fork.enums.ExtendedAvatarPreviewerItem;
import org.fork.enums.FilterTabNotificationMode;
import org.fork.enums.FilterTabWidthMode;
import org.fork.enums.Interval;
import org.fork.enums.PhotoViewerMenuItem;
import org.fork.enums.StickersSize;
import org.fork.enums.TemplatesMode;
import org.fork.enums.TemplatesSortingType;
import org.fork.enums.VideoVoiceCamera;
import org.fork.models.DrawerHeaderSettings;
import org.fork.models.backup.Backup;
import org.fork.models.backup.MultiPanelButtonStateBackup;
import org.fork.utils.Callbacks$Callback1;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.BaseFragment;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: BackupController.kt */
/* loaded from: classes4.dex */
public final class BackupController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, BackupController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy gson$delegate;
    private boolean isAutoBackupEnabled;
    private long lastAutoBackupTime;
    private Interval selectedAutoBackupInterval;

    /* compiled from: BackupController.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BackupComponent.values().length];
            try {
                iArr[BackupComponent.INTERFACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BackupComponent.MULTI_PANEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BackupComponent.TOOLS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BackupComponent.FILTERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BackupComponent.SORTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BackupComponent.ALBUMS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[BackupComponent.BOOKMARKS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[BackupComponent.MUSIC.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[BackupComponent.TRANSLATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[BackupComponent.TEMPLATES.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[BackupComponent.TOPICS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BackupController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public static final boolean isBackupFileName(String str) {
        return Companion.isBackupFileName(str);
    }

    public BackupController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new BackupController$special$$inlined$inject$default$1(this, null, null));
        this.gson$delegate = lazy;
        this.isAutoBackupEnabled = TelegramPreferenceKeys.User.Default.isAutoBackupEnabled();
        this.selectedAutoBackupInterval = TelegramPreferenceKeys.User.Default.selectedAutoBackupInterval();
        this.lastAutoBackupTime = TelegramPreferenceKeys.User.Default.lastAutoBackupTime();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final Gson getGson() {
        return (Gson) this.gson$delegate.getValue();
    }

    public final boolean isAutoBackupEnabled() {
        return this.isAutoBackupEnabled;
    }

    public final void setAutoBackupEnabled(boolean z) {
        this.isAutoBackupEnabled = z;
    }

    public final Interval getSelectedAutoBackupInterval() {
        return this.selectedAutoBackupInterval;
    }

    public final void setSelectedAutoBackupInterval(Interval interval) {
        Intrinsics.checkNotNullParameter(interval, "<set-?>");
        this.selectedAutoBackupInterval = interval;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isAutoBackupEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isAutoBackupEnabled(), TelegramPreferenceKeys.User.Default.isAutoBackupEnabled());
        this.selectedAutoBackupInterval = Interval.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.User.selectedAutoBackupInterval(), TelegramPreferenceKeys.User.Default.selectedAutoBackupInterval().name()), TelegramPreferenceKeys.User.Default.selectedAutoBackupInterval());
        this.lastAutoBackupTime = preferences.getLong(TelegramPreferenceKeys.User.lastAutoBackupTime(), TelegramPreferenceKeys.User.Default.lastAutoBackupTime());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isAutoBackupEnabled(), this.isAutoBackupEnabled);
        edit.putString(TelegramPreferenceKeys.User.selectedAutoBackupInterval(), this.selectedAutoBackupInterval.name());
        edit.putLong(TelegramPreferenceKeys.User.lastAutoBackupTime(), this.lastAutoBackupTime);
        edit.apply();
    }

    public final void restoreBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isAutoBackupEnabled() != null) {
            this.isAutoBackupEnabled = backup.isAutoBackupEnabled().booleanValue();
        }
        if (backup.getSelectedAutoBackupInterval() != null) {
            this.selectedAutoBackupInterval = Interval.Companion.mapNameToEnum(backup.getSelectedAutoBackupInterval(), TelegramPreferenceKeys.User.Default.selectedAutoBackupInterval());
        }
        saveConfig();
    }

    public final void resetLastAutoBackupTime() {
        this.lastAutoBackupTime = DateExtKt.now();
    }

    public final void backup(boolean z) {
        Backup backup;
        ArrayList arrayListOf;
        ArrayList arrayListOf2;
        if (z && (!this.isAutoBackupEnabled || needSkipAutoBackup())) {
            return;
        }
        try {
            Boolean valueOf = Boolean.valueOf(getBackupController().isAutoBackupEnabled);
            String name = getBackupController().selectedAutoBackupInterval.name();
            Boolean valueOf2 = Boolean.valueOf(SharedConfig.isFilesSendingPreviewAndCaptionEnabled);
            Boolean valueOf3 = Boolean.valueOf(SharedConfig.isVibrationEnabled);
            String name2 = SharedConfig.selectedStickersSize.name();
            Boolean valueOf4 = Boolean.valueOf(getForkCommonController().isQuickReactionEnabled());
            Boolean valueOf5 = Boolean.valueOf(getForkCommonController().isPremiumAnimateStickers());
            Boolean valueOf6 = Boolean.valueOf(getForkCommonController().isShowPremiumBadgeEnabled());
            Boolean valueOf7 = Boolean.valueOf(getForkCommonController().isShowPremiumStatusEnabled());
            Boolean valueOf8 = Boolean.valueOf(getForkCommonController().isPremiumAnimateAvatars());
            Boolean valueOf9 = Boolean.valueOf(SharedConfig.isProxyButtonForceVisible);
            String name3 = getForkCommonController().getSelectedContactsFilter().name();
            Boolean valueOf10 = Boolean.valueOf(SharedConfig.isReadAllChatsConfirmationShown);
            Boolean valueOf11 = Boolean.valueOf(SharedConfig.isProfileInfoHidden);
            Boolean valueOf12 = Boolean.valueOf(SharedConfig.isMultiForwardingOptionsHintShown);
            Boolean valueOf13 = Boolean.valueOf(SharedConfig.isSuggestPremiumReactionsEmoji);
            DrawerHeaderSettings drawerHeaderSettings = SharedConfig.getDrawerHeaderSettings();
            DrawerSwitchableItem.Companion companion = DrawerSwitchableItem.Companion;
            try {
                Set<DrawerSwitchableItem> selectedDrawerItems = SharedConfig.selectedDrawerItems;
                Intrinsics.checkNotNullExpressionValue(selectedDrawerItems, "selectedDrawerItems");
                Set<String> mapEnumsToNames = companion.mapEnumsToNames(selectedDrawerItems);
                Boolean valueOf14 = Boolean.valueOf(SharedConfig.isActionBarAccountSwitchEnabled);
                Boolean valueOf15 = Boolean.valueOf(SharedConfig.isMainActionBarMenuEnabled);
                Boolean valueOf16 = Boolean.valueOf(SharedConfig.isDialogsCompactModeEnabled);
                Boolean valueOf17 = Boolean.valueOf(getToolsController().isSwipeToGoToNextUnreadDialogEnabled());
                Boolean valueOf18 = Boolean.valueOf(getToolsController().isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled());
                DialogType.Companion companion2 = DialogType.Companion;
                Set<String> mapEnumsToNames2 = companion2.mapEnumsToNames(getToolsController().getSelectedDialogTypesForSwipeToGoToNextUnreadDialog());
                Boolean valueOf19 = Boolean.valueOf(getToolsController().isShowChannelBottomPanel());
                Boolean valueOf20 = Boolean.valueOf(SharedConfig.isHideChatKeyboardOnScrollEnabled);
                Boolean valueOf21 = Boolean.valueOf(SharedConfig.isChatThemesEnabled);
                Map<String, Set<String>> chatAttachAlertButtonsBackupData = getToolsController().getChatAttachAlertButtonsBackupData();
                Boolean valueOf22 = Boolean.valueOf(SharedConfig.isExtendedAvatarPreviewerEnabled);
                Boolean valueOf23 = Boolean.valueOf(SharedConfig.isExtendedAvatarPreviewerByTapEnabled);
                ExtendedAvatarPreviewerItem.Companion companion3 = ExtendedAvatarPreviewerItem.Companion;
                List<ExtendedAvatarPreviewerItem> selectedExtendedAvatarPreviewerItems = SharedConfig.selectedExtendedAvatarPreviewerItems;
                Intrinsics.checkNotNullExpressionValue(selectedExtendedAvatarPreviewerItems, "selectedExtendedAvatarPreviewerItems");
                Set<String> mapEnumsToNames3 = companion3.mapEnumsToNames(selectedExtendedAvatarPreviewerItems);
                List<String> messagePopupItemBackupData = getToolsController().getMessagePopupItemBackupData();
                Boolean valueOf24 = Boolean.valueOf(getToolsController().isMessagePopupAggregatorEnabled());
                Boolean valueOf25 = Boolean.valueOf(getToolsController().isChannelWidePostsEnabled());
                Boolean valueOf26 = Boolean.valueOf(SharedConfig.isCallsConfirmationEnabled);
                Boolean valueOf27 = Boolean.valueOf(SharedConfig.isDeleteCloudConfirmationEnabled);
                Boolean valueOf28 = Boolean.valueOf(SharedConfig.isSendingGifConfirmationEnabled);
                Boolean valueOf29 = Boolean.valueOf(SharedConfig.isSendingStickerConfirmationEnabled);
                Boolean valueOf30 = Boolean.valueOf(SharedConfig.isSpeakWithoutHoldEnabled);
                Boolean valueOf31 = Boolean.valueOf(SharedConfig.isVideoSpeakWithoutHoldEnabled);
                String name4 = SharedConfig.selectedVideoVoiceCamera.name();
                Boolean valueOf32 = Boolean.valueOf(getRecentChatsController().isRecentChatsEnabled());
                Boolean valueOf33 = Boolean.valueOf(getRecentChatsController().isSaveArchiveRecentChatsEnabled());
                Boolean valueOf34 = Boolean.valueOf(getMultiPanelController().isMultiPanelEnabled());
                Boolean valueOf35 = Boolean.valueOf(getMultiPanelController().isHideMultiPanelOnScrollEnabled());
                Map<String, List<MultiPanelButtonStateBackup>> backupData = getMultiPanelController().getBackupData();
                Boolean valueOf36 = Boolean.valueOf(SharedConfig.isOpenForwardingOptionsAutomaticallyEnabled);
                Boolean valueOf37 = Boolean.valueOf(SharedConfig.isCustomSharingModeEnabled);
                Boolean valueOf38 = Boolean.valueOf(SharedConfig.isMultiReplyEnabled);
                String name5 = SharedConfig.selectedChatProfileTelegramIdMode.name();
                Boolean valueOf39 = Boolean.valueOf(SharedConfig.isMessageQuickTranslateEnabled);
                Boolean valueOf40 = Boolean.valueOf(SharedConfig.isBotHelpTranslateEnabled);
                Boolean valueOf41 = Boolean.valueOf(SharedConfig.isTranslateInSendPopupEnabled);
                Boolean valueOf42 = Boolean.valueOf(getToolsController().isSilentSendingEnabled());
                String name6 = getToolsController().getSelectedSentMessageFont().name();
                Boolean valueOf43 = Boolean.valueOf(getToolsController().isRememberLastDialogEnabled());
                Boolean valueOf44 = Boolean.valueOf(SharedConfig.isCombineMessagesEnabled);
                PhotoViewerMenuItem.Companion companion4 = PhotoViewerMenuItem.Companion;
                Set<PhotoViewerMenuItem> selectedPhotoViewerMenuItems = SharedConfig.selectedPhotoViewerMenuItems;
                Intrinsics.checkNotNullExpressionValue(selectedPhotoViewerMenuItems, "selectedPhotoViewerMenuItems");
                Set<String> mapEnumsToNames4 = companion4.mapEnumsToNames(selectedPhotoViewerMenuItems);
                Boolean valueOf45 = Boolean.valueOf(SharedConfig.isReactionsEnabled);
                Set<DialogType> selectedDialogTypesForMessagePopupReactions = SharedConfig.selectedDialogTypesForMessagePopupReactions;
                Intrinsics.checkNotNullExpressionValue(selectedDialogTypesForMessagePopupReactions, "selectedDialogTypesForMessagePopupReactions");
                backup = new Backup(valueOf, name, valueOf2, valueOf3, name2, valueOf4, valueOf5, valueOf6, valueOf7, valueOf8, valueOf9, name3, valueOf10, valueOf11, valueOf12, valueOf13, drawerHeaderSettings, mapEnumsToNames, valueOf14, valueOf15, valueOf16, valueOf17, valueOf18, mapEnumsToNames2, valueOf19, valueOf20, valueOf21, chatAttachAlertButtonsBackupData, valueOf22, valueOf23, mapEnumsToNames3, messagePopupItemBackupData, valueOf24, valueOf25, valueOf26, valueOf27, valueOf28, valueOf29, valueOf30, valueOf31, name4, valueOf32, null, valueOf33, null, valueOf34, valueOf35, backupData, valueOf36, valueOf37, valueOf38, name5, valueOf39, valueOf40, valueOf41, valueOf42, name6, valueOf43, valueOf44, mapEnumsToNames4, valueOf45, companion2.mapEnumsToNames(selectedDialogTypesForMessagePopupReactions), Boolean.valueOf(SharedConfig.isReactionsInSendPopupEnabled), null, null, Boolean.valueOf(SharedConfig.isFilterTabsAtBottomEnabled), SharedConfig.selectedFilterTabsNotificationMode.name(), SharedConfig.selectedFilterTabWidthMode.name(), Boolean.valueOf(SharedConfig.isRememberLastFilterTabEnabled), Boolean.valueOf(getFiltersController().isHideFoldersEnabled()), Boolean.valueOf(getFiltersController().isFoldersFirstEnabled()), getFiltersController().getFiltersBackupData(), Boolean.valueOf(SharedConfig.isChatSortingEnabledByDefault), Boolean.valueOf(getFiltersController().isAllChatsTabEnabled()), Boolean.valueOf(getFiltersController().isIconInsteadAllChatsTabTitleEnabled()), FilterFab.Companion.mapEnumsToNames(getFiltersController().getSelectedAllChatsTabFabs()), Boolean.valueOf(getFiltersController().isSortingEnabled(false)), getFiltersController().getBackupSortingTabs(false), Boolean.valueOf(getFiltersController().isSortingEnabled(true)), getFiltersController().getBackupSortingTabs(true), getFiltersController().getPinnedChats(false), getFiltersController().getPinnedChats(true), Boolean.valueOf(SharedConfig.isCloudAlbumsEnabled), Boolean.valueOf(SharedConfig.isAlbumsIntroShown), Boolean.valueOf(SharedConfig.isSortCloudAlbumsByNameEnabled), Boolean.valueOf(getAlbumsController().isOpenAlbumsInsteadCloudEnabled()), getAlbumsController().getAlbums(), getBookmarksController().getBookmarks(), getDialogTranslationSettingsController().getBackupData(), Boolean.valueOf(SharedConfig.isPlayerPinned), Boolean.valueOf(SharedConfig.isPinnedPlayerMinimized), Boolean.valueOf(SharedConfig.isPinnedPlayerThemeOverridden), Boolean.valueOf(SharedConfig.isPinnedPlayerNightThemeEnabled), Boolean.valueOf(SharedConfig.isMusicIntroShown), getMusicController().getSelectedMusicTab().name(), getMusicController().getPlaylists(), SharedConfig.selectedTemplatesMode.name(), SharedConfig.selectedTemplatesSortingType.name(), Long.valueOf(getTemplatesController().getTemplatesChannelId()), getTemplatesController().getTemplatesBackupData(), Boolean.valueOf(getForkTopicsController().isTopicsBarEnabled()), Boolean.valueOf(getForkTopicsController().isTopicsBarAtBottomEnabled()), Boolean.valueOf(getForkTopicsController().isAutoUpdateTopicsCatalogEnabled()), getForkTopicsController().getSelectedAutoUpdateTopicsCatalogInterval().name(), Boolean.valueOf(getForkTopicsController().isNoTopicFirstEnabled()), getForkTopicsController().getTopicsBackupData(), 12, null, null, 0, -2147478528, 1, 6144, null);
            } catch (Exception e) {
                e = e;
            }
            try {
                File file = new File(ApplicationLoader.getFilesDirFixed(), buildBackupFileName(getUserConfig().clientUserId));
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file));
                outputStreamWriter.write(getGson().toJson(backup));
                outputStreamWriter.flush();
                AccountInstance accountInstance = getAccountInstance();
                arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(file.getAbsolutePath());
                arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf(file.getAbsolutePath());
                SendMessagesHelper.prepareSendingDocuments(accountInstance, arrayListOf, arrayListOf2, null, null, null, getUserConfig().clientUserId, null, null, null, null, false, 0, null, true);
                if (z) {
                    resetLastAutoBackupTime();
                    saveConfig();
                }
            } catch (Exception e2) {
                e = e2;
                ContextExtKt.toast(String.valueOf(e.getMessage()));
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public final void restore(final MessageObject backupMessage, final List<? extends BackupComponent> components, final BaseFragment parentFragment, final Callbacks$Callback1<Boolean> onEnd) {
        Intrinsics.checkNotNullParameter(backupMessage, "backupMessage");
        Intrinsics.checkNotNullParameter(components, "components");
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Intrinsics.checkNotNullParameter(onEnd, "onEnd");
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.BackupController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BackupController.restore$lambda$15(BackupController.this, backupMessage, components, parentFragment, onEnd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restore$lambda$15(final BackupController this$0, MessageObject backupMessage, List components, BaseFragment parentFragment, final Callbacks$Callback1 onEnd) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(backupMessage, "$backupMessage");
        Intrinsics.checkNotNullParameter(components, "$components");
        Intrinsics.checkNotNullParameter(parentFragment, "$parentFragment");
        Intrinsics.checkNotNullParameter(onEnd, "$onEnd");
        try {
            Object fromJson = this$0.getGson().fromJson(new JsonReader(new FileReader(this$0.getFileLoader().getPathToMessage(backupMessage.messageOwner).toString())), Backup.class);
            Intrinsics.checkNotNullExpressionValue(fromJson, "gson.fromJson(reader, Backup::class.java)");
            Backup migrateToCurrentVersion = this$0.migrateToCurrentVersion((Backup) fromJson);
            this$0.getBackupController().restoreBackup(migrateToCurrentVersion);
            this$0.getForkCommonController().restoreBackup(migrateToCurrentVersion);
            if (migrateToCurrentVersion.isFilesSendingPreviewAndCaptionEnabled() != null) {
                SharedConfig.setFilesSendingPreviewAndCaptionEnabled(migrateToCurrentVersion.isFilesSendingPreviewAndCaptionEnabled().booleanValue());
            }
            if (migrateToCurrentVersion.isVibrationEnabled() != null) {
                SharedConfig.setVibrationEnabled(migrateToCurrentVersion.isVibrationEnabled().booleanValue());
            }
            if (migrateToCurrentVersion.getSelectedStickersSize() != null) {
                SharedConfig.setSelectedStickersSize(StickersSize.Companion.mapNameToEnum(migrateToCurrentVersion.getSelectedStickersSize()));
            }
            if (migrateToCurrentVersion.isProxyButtonForceVisible() != null) {
                SharedConfig.setProxyButtonForceVisible(migrateToCurrentVersion.isProxyButtonForceVisible().booleanValue());
            }
            if (migrateToCurrentVersion.isReadAllChatsConfirmationShown() != null) {
                SharedConfig.setReadAllChatsConfirmationShown(migrateToCurrentVersion.isReadAllChatsConfirmationShown().booleanValue());
            }
            if (migrateToCurrentVersion.isProfileInfoHidden() != null) {
                SharedConfig.setProfileInfoHidden(migrateToCurrentVersion.isProfileInfoHidden().booleanValue());
            }
            if (migrateToCurrentVersion.isMultiForwardingOptionsHintShown() != null) {
                SharedConfig.setMultiForwardingOptionsHintShown(migrateToCurrentVersion.isMultiForwardingOptionsHintShown().booleanValue());
            }
            if (migrateToCurrentVersion.isSuggestPremiumReactionsEmoji() != null) {
                SharedConfig.setSuggestPremiumReactionsEmoji(migrateToCurrentVersion.isSuggestPremiumReactionsEmoji().booleanValue());
            }
            Iterator it = components.iterator();
            while (it.hasNext()) {
                switch (WhenMappings.$EnumSwitchMapping$0[((BackupComponent) it.next()).ordinal()]) {
                    case 1:
                        this$0.getToolsController().restoreBackup(migrateToCurrentVersion);
                        this$0.getRecentChatsController().restoreBackup(migrateToCurrentVersion);
                        if (migrateToCurrentVersion.getDrawerHeaderSettings() != null) {
                            SharedConfig.setDrawerHeaderSettings(migrateToCurrentVersion.getDrawerHeaderSettings());
                        }
                        if (migrateToCurrentVersion.getDrawerItems() != null) {
                            SharedConfig.setSelectedDrawerItems(DrawerSwitchableItem.Companion.mapNamesToEnums(migrateToCurrentVersion.getDrawerItems()));
                        }
                        if (migrateToCurrentVersion.isActionBarAccountSwitchEnabled() != null) {
                            SharedConfig.setActionBarAccountSwitchEnabled(migrateToCurrentVersion.isActionBarAccountSwitchEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isMainActionBarMenuEnabled() != null) {
                            SharedConfig.setMainActionBarMenuEnabled(migrateToCurrentVersion.isMainActionBarMenuEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isDialogsCompactModeEnabled() != null) {
                            SharedConfig.setDialogsCompactModeEnabled(migrateToCurrentVersion.isDialogsCompactModeEnabled().booleanValue());
                            if (migrateToCurrentVersion.isDialogsCompactModeEnabled().booleanValue()) {
                                SharedConfig.setUseThreeLinesLayout(false);
                            }
                        }
                        if (migrateToCurrentVersion.isHideChatKeyboardOnScrollEnabled() != null) {
                            SharedConfig.setHideChatKeyboardOnScrollEnabled(migrateToCurrentVersion.isHideChatKeyboardOnScrollEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isChatThemesEnabled() != null) {
                            SharedConfig.setChatThemesEnabled(migrateToCurrentVersion.isChatThemesEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isExtendedAvatarPreviewerEnabled() != null) {
                            SharedConfig.setExtendedAvatarPreviewerEnabled(migrateToCurrentVersion.isExtendedAvatarPreviewerEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isExtendedAvatarPreviewerByTapEnabled() != null) {
                            SharedConfig.setExtendedAvatarPreviewerByTapEnabled(migrateToCurrentVersion.isExtendedAvatarPreviewerByTapEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.getSelectedExtendedAvatarPreviewerItems() != null) {
                            SharedConfig.setSelectedExtendedAvatarPreviewerItems(ExtendedAvatarPreviewerItem.Companion.mapNamesToEnums(migrateToCurrentVersion.getSelectedExtendedAvatarPreviewerItems()));
                        }
                        if (migrateToCurrentVersion.isCallsConfirmationEnabled() != null) {
                            SharedConfig.setCallsConfirmationEnabled(migrateToCurrentVersion.isCallsConfirmationEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isDeleteCloudConfirmationEnabled() != null) {
                            SharedConfig.setDeleteCloudConfirmationEnabled(migrateToCurrentVersion.isDeleteCloudConfirmationEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isSendingGifConfirmationEnabled() != null) {
                            SharedConfig.setSendingGifConfirmationEnabled(migrateToCurrentVersion.isSendingGifConfirmationEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isSendingStickerConfirmationEnabled() != null) {
                            SharedConfig.setSendingStickerConfirmationEnabled(migrateToCurrentVersion.isSendingStickerConfirmationEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isSpeakWithoutHoldEnabled() != null) {
                            SharedConfig.setSpeakWithoutHoldEnabled(migrateToCurrentVersion.isSpeakWithoutHoldEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isVideoSpeakWithoutHoldEnabled() != null) {
                            SharedConfig.setVideoSpeakWithoutHoldEnabled(migrateToCurrentVersion.isVideoSpeakWithoutHoldEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.getSelectedVideoVoiceCamera() == null) {
                            break;
                        } else {
                            SharedConfig.setSelectedVideoVoiceCamera(VideoVoiceCamera.Companion.mapNameToEnum(migrateToCurrentVersion.getSelectedVideoVoiceCamera()));
                            break;
                        }
                    case 2:
                        this$0.getMultiPanelController().restoreBackup(migrateToCurrentVersion);
                        break;
                    case 3:
                        this$0.getToolsController().restoreBackup(migrateToCurrentVersion);
                        this$0.getRecentChatsController().restoreBackup(migrateToCurrentVersion);
                        if (migrateToCurrentVersion.isOpenForwardingOptionsAutomaticallyEnabled() != null) {
                            SharedConfig.setOpenForwardingOptionsAutomaticallyEnabled(migrateToCurrentVersion.isOpenForwardingOptionsAutomaticallyEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isCustomSharingModeEnabled() != null) {
                            SharedConfig.setCustomSharingModeEnabled(migrateToCurrentVersion.isCustomSharingModeEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isMultiReplyEnabled() != null) {
                            SharedConfig.setMultiReplyEnabled(migrateToCurrentVersion.isMultiReplyEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.getSelectedChatProfileTelegramIdMode() != null) {
                            SharedConfig.setSelectedChatProfileTelegramIdMode(ChatProfileTelegramIdMode.Companion.mapNameToEnum(migrateToCurrentVersion.getSelectedChatProfileTelegramIdMode()));
                        }
                        if (migrateToCurrentVersion.isMessageQuickTranslateEnabled() != null) {
                            SharedConfig.setMessageQuickTranslateEnabled(migrateToCurrentVersion.isMessageQuickTranslateEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isBotHelpTranslateEnabled() != null) {
                            SharedConfig.setBotHelpTranslateEnabled(migrateToCurrentVersion.isBotHelpTranslateEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isTranslateInSendPopupEnabled() != null) {
                            SharedConfig.setTranslateInSendPopupEnabled(migrateToCurrentVersion.isTranslateInSendPopupEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isCombineMessagesEnabled() != null) {
                            SharedConfig.setCombineMessagesEnabled(migrateToCurrentVersion.isCombineMessagesEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.getSelectedPhotoViewerMenuItems() != null) {
                            SharedConfig.setSelectedPhotoViewerMenuItems(PhotoViewerMenuItem.Companion.mapNamesToEnums(migrateToCurrentVersion.getSelectedPhotoViewerMenuItems()));
                        }
                        if (migrateToCurrentVersion.isReactionsEnabled() != null) {
                            SharedConfig.setReactionsEnabled(migrateToCurrentVersion.isReactionsEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.getSelectedDialogTypesForMessagePopupReactions() != null) {
                            SharedConfig.setSelectedDialogTypesForMessagePopupReactions(DialogType.Companion.mapNamesToEnums(migrateToCurrentVersion.getSelectedDialogTypesForMessagePopupReactions()));
                        }
                        if (migrateToCurrentVersion.isReactionsInSendPopupEnabled() != null) {
                            SharedConfig.setReactionsInSendPopupEnabled(migrateToCurrentVersion.isReactionsInSendPopupEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.getDrawerHolidayIconType() == null) {
                            break;
                        } else {
                            SharedConfig.setDrawerHolidayIconType(DrawerHolidayIconType.Companion.mapNameToEnum(migrateToCurrentVersion.getDrawerHolidayIconType().name()));
                            break;
                        }
                    case 4:
                        this$0.getFiltersController().restoreBackup(migrateToCurrentVersion);
                        if (migrateToCurrentVersion.getFilterTabsAtBottom() != null) {
                            SharedConfig.setFilterTabsAtBottomEnabled(migrateToCurrentVersion.getFilterTabsAtBottom().booleanValue());
                        }
                        if (migrateToCurrentVersion.getFilterTabsNotificationMode() != null) {
                            SharedConfig.setSelectedFilterTabsNotificationMode(FilterTabNotificationMode.Companion.mapNameToEnum(migrateToCurrentVersion.getFilterTabsNotificationMode()));
                        }
                        if (migrateToCurrentVersion.getFilterTabsWidthMode() != null) {
                            SharedConfig.setSelectedFilterTabsWidthMode(FilterTabWidthMode.Companion.mapNameToEnum(migrateToCurrentVersion.getFilterTabsWidthMode()));
                        }
                        if (migrateToCurrentVersion.getRememberLastFilterTab() == null) {
                            break;
                        } else {
                            SharedConfig.setRememberLastFilterTabEnabled(migrateToCurrentVersion.getRememberLastFilterTab().booleanValue());
                            break;
                        }
                    case 5:
                        FiltersController filtersController = this$0.getFiltersController();
                        filtersController.restoreAllChatsTabBackup(migrateToCurrentVersion);
                        filtersController.restoreSortingBackup(false, migrateToCurrentVersion, parentFragment);
                        filtersController.restoreSortingBackup(true, migrateToCurrentVersion, parentFragment);
                        filtersController.saveConfig();
                        if (migrateToCurrentVersion.isChatSortingEnabledByDefault() == null) {
                            break;
                        } else {
                            SharedConfig.setChatSortingEnabledByDefault(migrateToCurrentVersion.isChatSortingEnabledByDefault().booleanValue());
                            break;
                        }
                    case 6:
                        this$0.getAlbumsController().restoreBackup(migrateToCurrentVersion);
                        if (migrateToCurrentVersion.isCLoudAlbumsEnabled() != null) {
                            SharedConfig.setCloudAlbumsEnabled(migrateToCurrentVersion.isCLoudAlbumsEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isAlbumsIntroShown() != null) {
                            SharedConfig.setAlbumsIntroShown(migrateToCurrentVersion.isAlbumsIntroShown().booleanValue());
                        }
                        if (migrateToCurrentVersion.isSortCloudAlbumsByNameEnabled() == null) {
                            break;
                        } else {
                            SharedConfig.setSortCloudAlbumsByNameEnabled(migrateToCurrentVersion.isSortCloudAlbumsByNameEnabled().booleanValue());
                            break;
                        }
                    case 7:
                        this$0.getBookmarksController().restoreBackup(migrateToCurrentVersion);
                        break;
                    case 8:
                        this$0.getMusicController().restoreBackup(migrateToCurrentVersion);
                        if (migrateToCurrentVersion.isPlayerPinned() != null) {
                            SharedConfig.setPlayerPinned(migrateToCurrentVersion.isPlayerPinned().booleanValue());
                        }
                        if (migrateToCurrentVersion.isPinnedPlayerMinimized() != null) {
                            SharedConfig.setPinnedPlayerMinimized(migrateToCurrentVersion.isPinnedPlayerMinimized().booleanValue());
                        }
                        if (migrateToCurrentVersion.isPinnedPlayerThemeOverridden() != null) {
                            SharedConfig.setPinnedPlayerThemeOverridden(migrateToCurrentVersion.isPinnedPlayerThemeOverridden().booleanValue());
                        }
                        if (migrateToCurrentVersion.isPinnedPlayerNightThemeEnabled() != null) {
                            SharedConfig.setPinnedPlayerNightThemeEnabled(migrateToCurrentVersion.isPinnedPlayerNightThemeEnabled().booleanValue());
                        }
                        if (migrateToCurrentVersion.isMusicIntroShown() == null) {
                            break;
                        } else {
                            SharedConfig.setMusicIntroShown(migrateToCurrentVersion.isMusicIntroShown().booleanValue());
                            break;
                        }
                    case 9:
                        this$0.getDialogTranslationSettingsController().restoreBackup(migrateToCurrentVersion);
                        break;
                    case 10:
                        this$0.getTemplatesController().restoreBackup(migrateToCurrentVersion);
                        if (migrateToCurrentVersion.getTemplatesMode() != null) {
                            SharedConfig.setSelectedTemplatesMode(TemplatesMode.Companion.mapNameToEnum(migrateToCurrentVersion.getTemplatesMode()));
                        }
                        if (migrateToCurrentVersion.getSelectedTemplatesSortingType() == null) {
                            break;
                        } else {
                            SharedConfig.setSelectedTemplatesSortingType(TemplatesSortingType.Companion.mapNameToEnum(migrateToCurrentVersion.getSelectedTemplatesSortingType()));
                            break;
                        }
                    case 11:
                        this$0.getForkTopicsController().restoreBackup(migrateToCurrentVersion);
                        break;
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.controller.BackupController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BackupController.restore$lambda$15$lambda$13(BackupController.this, onEnd);
                }
            });
        } catch (Exception e) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.controller.BackupController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BackupController.restore$lambda$15$lambda$14(e, onEnd);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restore$lambda$15$lambda$13(BackupController this$0, Callbacks$Callback1 onEnd) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onEnd, "$onEnd");
        this$0.getMessagesController().sortDialogs(null);
        onEnd.invoke(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restore$lambda$15$lambda$14(Exception e, Callbacks$Callback1 onEnd) {
        Intrinsics.checkNotNullParameter(e, "$e");
        Intrinsics.checkNotNullParameter(onEnd, "$onEnd");
        ContextExtKt.toast(String.valueOf(e.getMessage()));
        onEnd.invoke(Boolean.FALSE);
    }

    private final boolean needSkipAutoBackup() {
        return DateExtKt.now() - this.lastAutoBackupTime < TimeUnit.DAYS.toMillis((long) this.selectedAutoBackupInterval.getDays());
    }

    private final String buildBackupFileName(long j) {
        return "iMeBackup_" + Constants.INSTANCE.getDateDotsFormat().format(new Date()) + "_id" + j + ".ime";
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b8, code lost:
        r1 = kotlin.collections.CollectionsKt___CollectionsKt.sortedWith(r1, new org.fork.controller.BackupController$migrateToCurrentVersion$$inlined$sortedBy$1());
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x027c, code lost:
        r1 = kotlin.collections.CollectionsKt___CollectionsKt.sortedWith(r1, new org.fork.controller.BackupController$migrateToCurrentVersion$$inlined$sortedBy$2());
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final org.fork.models.backup.Backup migrateToCurrentVersion(org.fork.models.backup.Backup r235) {
        /*
            Method dump skipped, instructions count: 1778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fork.controller.BackupController.migrateToCurrentVersion(org.fork.models.backup.Backup):org.fork.models.backup.Backup");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean migrateToCurrentVersion$lambda$20(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* compiled from: BackupController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final BackupController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (BackupController) tmp0.invoke(obj);
        }

        public final BackupController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = BackupController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final BackupController$Companion$getInstance$1 backupController$Companion$getInstance$1 = new BackupController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: org.fork.controller.BackupController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    BackupController instance$lambda$0;
                    instance$lambda$0 = BackupController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…ontroller(accountIndex) }");
            return (BackupController) computeIfAbsent;
        }

        public final boolean isBackupFileName(String str) {
            boolean startsWith$default;
            boolean endsWith$default;
            if (str != null) {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "iMeBackup_", false, 2, null);
                if (startsWith$default) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, "_id" + UserConfig.getInstance(UserConfig.selectedAccount).clientUserId + ".ime", false, 2, null);
                    return endsWith$default;
                }
                return false;
            }
            return false;
        }
    }
}
