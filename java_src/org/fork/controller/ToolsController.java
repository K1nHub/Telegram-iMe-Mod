package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.fork.controller.ToolsController;
import org.fork.enums.ChatAttachAlertButton;
import org.fork.enums.DialogType;
import org.fork.enums.MessagePopupItem;
import org.fork.enums.SentMessageFont;
import org.fork.models.backup.Backup;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: ToolsController.kt */
/* loaded from: classes4.dex */
public final class ToolsController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, ToolsController> accountInstances = new ConcurrentHashMap<>(5);
    private boolean isChannelWidePostsEnabled;
    private boolean isMessagePopupAggregatorEnabled;
    private boolean isRememberLastDialogEnabled;
    private boolean isRevokeByDefault;
    private boolean isShowChannelBottomPanel;
    private boolean isSilentSendingEnabled;
    private boolean isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled;
    private boolean isSwipeToGoToNextUnreadDialogEnabled;
    private long rememberLastDialogId;
    private int rememberLastDialogTopicId;
    private Map<DialogType, Set<ChatAttachAlertButton>> selectedChatAttachAlertButtons;
    private Set<DialogType> selectedDialogTypesForSwipeToGoToNextUnreadDialog;
    private Set<MessagePopupItem> selectedMessagePopupItems;
    private SentMessageFont selectedSentMessageFont;

    public static final ToolsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public ToolsController(int i) {
        super(i);
        this.isSilentSendingEnabled = TelegramPreferenceKeys.User.Default.isSilentSendingEnabled();
        this.selectedSentMessageFont = TelegramPreferenceKeys.User.Default.selectedSentMessageFont();
        this.isRememberLastDialogEnabled = TelegramPreferenceKeys.User.Default.isRememberLastDialogEnabled();
        this.rememberLastDialogId = TelegramPreferenceKeys.User.Default.rememberLastDialogId();
        this.rememberLastDialogTopicId = TelegramPreferenceKeys.User.Default.rememberLastDialogTopicId();
        this.isSwipeToGoToNextUnreadDialogEnabled = TelegramPreferenceKeys.User.Default.isSwipeToGoToNextUnreadDialogEnabled();
        this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled = TelegramPreferenceKeys.User.Default.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled();
        this.selectedDialogTypesForSwipeToGoToNextUnreadDialog = new LinkedHashSet();
        this.isShowChannelBottomPanel = TelegramPreferenceKeys.User.Default.isShowChannelBottomPanel();
        this.selectedChatAttachAlertButtons = new LinkedHashMap();
        this.selectedMessagePopupItems = new LinkedHashSet();
        this.isMessagePopupAggregatorEnabled = TelegramPreferenceKeys.User.Default.isMessagePopupAggregatorEnabled();
        this.isChannelWidePostsEnabled = TelegramPreferenceKeys.User.Default.isChannelWidePostsEnabled();
        this.isRevokeByDefault = TelegramPreferenceKeys.User.Default.isRevokeByDefault();
    }

    public final boolean isSilentSendingEnabled() {
        return this.isSilentSendingEnabled;
    }

    public final void setSilentSendingEnabled(boolean z) {
        this.isSilentSendingEnabled = z;
    }

    public final SentMessageFont getSelectedSentMessageFont() {
        return this.selectedSentMessageFont;
    }

    public final void setSelectedSentMessageFont(SentMessageFont sentMessageFont) {
        Intrinsics.checkNotNullParameter(sentMessageFont, "<set-?>");
        this.selectedSentMessageFont = sentMessageFont;
    }

    public final boolean isRememberLastDialogEnabled() {
        return this.isRememberLastDialogEnabled;
    }

    public final void setRememberLastDialogEnabled(boolean z) {
        this.isRememberLastDialogEnabled = z;
    }

    public final long getRememberLastDialogId() {
        return this.rememberLastDialogId;
    }

    public final void setRememberLastDialogId(long j) {
        this.rememberLastDialogId = j;
    }

    public final int getRememberLastDialogTopicId() {
        return this.rememberLastDialogTopicId;
    }

    public final void setRememberLastDialogTopicId(int i) {
        this.rememberLastDialogTopicId = i;
    }

    public final boolean isSwipeToGoToNextUnreadDialogEnabled() {
        return this.isSwipeToGoToNextUnreadDialogEnabled;
    }

    public final void setSwipeToGoToNextUnreadDialogEnabled(boolean z) {
        this.isSwipeToGoToNextUnreadDialogEnabled = z;
    }

    public final boolean isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled() {
        return this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled;
    }

    public final void setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(boolean z) {
        this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled = z;
    }

    public final Set<DialogType> getSelectedDialogTypesForSwipeToGoToNextUnreadDialog() {
        return this.selectedDialogTypesForSwipeToGoToNextUnreadDialog;
    }

    public final void setSelectedDialogTypesForSwipeToGoToNextUnreadDialog(Set<DialogType> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.selectedDialogTypesForSwipeToGoToNextUnreadDialog = set;
    }

    public final boolean isShowChannelBottomPanel() {
        return this.isShowChannelBottomPanel;
    }

    public final void setShowChannelBottomPanel(boolean z) {
        this.isShowChannelBottomPanel = z;
    }

    public final Map<DialogType, Set<ChatAttachAlertButton>> getSelectedChatAttachAlertButtons() {
        return this.selectedChatAttachAlertButtons;
    }

    public final void setSelectedChatAttachAlertButtons(Map<DialogType, Set<ChatAttachAlertButton>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.selectedChatAttachAlertButtons = map;
    }

    public final Set<MessagePopupItem> getSelectedMessagePopupItems() {
        return this.selectedMessagePopupItems;
    }

    public final void setSelectedMessagePopupItems(Set<MessagePopupItem> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.selectedMessagePopupItems = set;
    }

    public final boolean isMessagePopupAggregatorEnabled() {
        return this.isMessagePopupAggregatorEnabled;
    }

    public final void setMessagePopupAggregatorEnabled(boolean z) {
        this.isMessagePopupAggregatorEnabled = z;
    }

    public final boolean isChannelWidePostsEnabled() {
        return this.isChannelWidePostsEnabled;
    }

    public final void setChannelWidePostsEnabled(boolean z) {
        this.isChannelWidePostsEnabled = z;
    }

    public final boolean isRevokeByDefault() {
        return this.isRevokeByDefault;
    }

    public final void setRevokeByDefault(boolean z) {
        this.isRevokeByDefault = z;
    }

    public final void loadConfig(SharedPreferences preferences) {
        int mapCapacity;
        int coerceAtLeast;
        Map<DialogType, Set<ChatAttachAlertButton>> mutableMap;
        Set<? extends ChatAttachAlertButton> set;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        setSilentSendingEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isSilentSendingEnabled(), TelegramPreferenceKeys.User.Default.isSilentSendingEnabled()));
        setSelectedSentMessageFont(SentMessageFont.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.User.selectedSentMessageFont(), TelegramPreferenceKeys.User.Default.selectedSentMessageFont().name())));
        setRememberLastDialogEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isRememberLastDialogEnabled(), TelegramPreferenceKeys.User.Default.isRememberLastDialogEnabled()));
        setRememberLastDialogId(preferences.getLong(TelegramPreferenceKeys.User.rememberLastDialogId(), TelegramPreferenceKeys.User.Default.rememberLastDialogId()));
        setRememberLastDialogTopicId(preferences.getInt(TelegramPreferenceKeys.User.rememberLastDialogTopicId(), TelegramPreferenceKeys.User.Default.rememberLastDialogTopicId()));
        setSwipeToGoToNextUnreadDialogEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogEnabled(), TelegramPreferenceKeys.User.Default.isSwipeToGoToNextUnreadDialogEnabled()));
        setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(), TelegramPreferenceKeys.User.Default.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()));
        setSelectedDialogTypesForSwipeToGoToNextUnreadDialog(DialogType.Companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.User.selectedDialogTypesForSwipeToGoToNextUnreadDialog(), TelegramPreferenceKeys.User.Default.selectedDialogTypesForSwipeToGoToNextUnreadDialog())));
        setShowChannelBottomPanel(preferences.getBoolean(TelegramPreferenceKeys.User.isShowChannelBottomPanel(), TelegramPreferenceKeys.User.Default.isShowChannelBottomPanel()));
        DialogType[] values = DialogType.values();
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(values.length);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (DialogType dialogType : values) {
            ChatAttachAlertButton.Companion companion = ChatAttachAlertButton.Companion;
            String buildEnabledChatAttachAlertButtonsKey = TelegramPreferenceKeys.User.buildEnabledChatAttachAlertButtonsKey(dialogType);
            set = CollectionsKt___CollectionsKt.toSet(dialogType.getChatAttachAlertButtons());
            linkedHashMap.put(dialogType, companion.mapNamesToEnums(preferences.getStringSet(buildEnabledChatAttachAlertButtonsKey, companion.mapEnumsToNames(set))));
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        setSelectedChatAttachAlertButtons(mutableMap);
        setSelectedMessagePopupItems(MessagePopupItem.Companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.User.selectedMessagePopupItems(), TelegramPreferenceKeys.User.Default.selectedMessagePopupItems())));
        setMessagePopupAggregatorEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isMessagePopupAggregatorEnabled(), TelegramPreferenceKeys.User.Default.isMessagePopupAggregatorEnabled()));
        setChannelWidePostsEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isChannelWidePostsEnabled(), TelegramPreferenceKeys.User.Default.isChannelWidePostsEnabled()));
        setRevokeByDefault(preferences.getBoolean(TelegramPreferenceKeys.User.isRevokeByDefault(), TelegramPreferenceKeys.User.Default.isRevokeByDefault()));
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isSilentSendingEnabled(), isSilentSendingEnabled());
        edit.putString(TelegramPreferenceKeys.User.selectedSentMessageFont(), getSelectedSentMessageFont().name());
        edit.putBoolean(TelegramPreferenceKeys.User.isRememberLastDialogEnabled(), isRememberLastDialogEnabled());
        edit.putLong(TelegramPreferenceKeys.User.rememberLastDialogId(), getRememberLastDialogId());
        edit.putInt(TelegramPreferenceKeys.User.rememberLastDialogTopicId(), getRememberLastDialogTopicId());
        edit.putBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogEnabled(), isSwipeToGoToNextUnreadDialogEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(), isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled());
        edit.putStringSet(TelegramPreferenceKeys.User.selectedDialogTypesForSwipeToGoToNextUnreadDialog(), DialogType.Companion.mapEnumsToNames(getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()));
        edit.putBoolean(TelegramPreferenceKeys.User.isShowChannelBottomPanel(), isShowChannelBottomPanel());
        for (Map.Entry<DialogType, Set<ChatAttachAlertButton>> entry : getSelectedChatAttachAlertButtons().entrySet()) {
            edit.putStringSet(TelegramPreferenceKeys.User.buildEnabledChatAttachAlertButtonsKey(entry.getKey()), ChatAttachAlertButton.Companion.mapEnumsToNames(entry.getValue()));
        }
        edit.putStringSet(TelegramPreferenceKeys.User.selectedMessagePopupItems(), MessagePopupItem.Companion.mapEnumsToNames(getSelectedMessagePopupItems()));
        edit.putBoolean(TelegramPreferenceKeys.User.isMessagePopupAggregatorEnabled(), isMessagePopupAggregatorEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isChannelWidePostsEnabled(), isChannelWidePostsEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isRevokeByDefault(), isRevokeByDefault());
        edit.apply();
    }

    public final void restoreBackup(Backup backup) {
        Set<String> set;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<DialogType, Set<ChatAttachAlertButton>> mutableMap;
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isSilentSendingEnabled() != null) {
            this.isSilentSendingEnabled = backup.isSilentSendingEnabled().booleanValue();
        }
        if (backup.getSelectedSentMessageFont() != null) {
            this.selectedSentMessageFont = SentMessageFont.Companion.mapNameToEnum(backup.getSelectedSentMessageFont());
        }
        if (backup.isRememberLastDialogEnabled() != null) {
            this.isRememberLastDialogEnabled = backup.isRememberLastDialogEnabled().booleanValue();
        }
        if (backup.isSwipeToGoToNextUnreadDialogEnabled() != null) {
            this.isSwipeToGoToNextUnreadDialogEnabled = backup.isSwipeToGoToNextUnreadDialogEnabled().booleanValue();
        }
        if (backup.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled() != null) {
            this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled = backup.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled().booleanValue();
        }
        if (backup.getSwipeToGoToNextUnreadDialogTypes() != null) {
            this.selectedDialogTypesForSwipeToGoToNextUnreadDialog = DialogType.Companion.mapNamesToEnums(backup.getSwipeToGoToNextUnreadDialogTypes());
        }
        if (backup.isShowChannelBottomPanel() != null) {
            this.isShowChannelBottomPanel = backup.isShowChannelBottomPanel().booleanValue();
        }
        if (backup.getChatAttachAlertButtons() != null) {
            Set<Map.Entry<String, Set<String>>> entrySet = backup.getChatAttachAlertButtons().entrySet();
            ArrayList<Map.Entry> arrayList = new ArrayList();
            for (Object obj : entrySet) {
                if (DialogType.Companion.mapNameToEnum((String) ((Map.Entry) obj).getKey()) != null) {
                    arrayList.add(obj);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (Map.Entry entry : arrayList) {
                DialogType mapNameToEnum = DialogType.Companion.mapNameToEnum((String) entry.getKey());
                Objects.requireNonNull(mapNameToEnum, "null cannot be cast to non-null type org.fork.enums.DialogType");
                Pair m100to = TuplesKt.m100to(mapNameToEnum, ChatAttachAlertButton.Companion.mapNamesToEnums((Set) entry.getValue()));
                linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
            }
            mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
            this.selectedChatAttachAlertButtons = mutableMap;
        }
        if (backup.getMessagePopupItems() != null) {
            MessagePopupItem.Companion companion = MessagePopupItem.Companion;
            set = CollectionsKt___CollectionsKt.toSet(backup.getMessagePopupItems());
            this.selectedMessagePopupItems = companion.mapNamesToEnums(set);
        }
        if (backup.isMessagePopupAggregatorEnabled() != null) {
            this.isMessagePopupAggregatorEnabled = backup.isMessagePopupAggregatorEnabled().booleanValue();
        }
        if (backup.isChannelWidePostsEnabled() != null) {
            this.isChannelWidePostsEnabled = backup.isChannelWidePostsEnabled().booleanValue();
        }
        if (backup.isRevokeByDefault() != null) {
            this.isRevokeByDefault = backup.isRevokeByDefault().booleanValue();
        }
        saveConfig();
    }

    public final boolean isSilentSendingEnabledForDialog(long j) {
        if (!this.isSilentSendingEnabled || j == getUserConfig().clientUserId) {
            return false;
        }
        DialogType.Companion companion = DialogType.Companion;
        MessagesController messagesController = getMessagesController();
        Intrinsics.checkNotNullExpressionValue(messagesController, "messagesController");
        DialogType dialogType = companion.getDialogType(j, messagesController);
        return dialogType == DialogType.CHAT || dialogType == DialogType.GROUP;
    }

    public final List<String> getSwipeToGoToNextUnreadDialogTypeNames() {
        List<DialogType> sortedWith;
        int collectionSizeOrDefault;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.selectedDialogTypesForSwipeToGoToNextUnreadDialog, new Comparator() { // from class: org.fork.controller.ToolsController$getSwipeToGoToNextUnreadDialogTypeNames$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((DialogType) t).ordinal()), Integer.valueOf(((DialogType) t2).ordinal()));
                return compareValues;
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (DialogType dialogType : sortedWith) {
            arrayList.add(LocaleController.getInternalString(dialogType.getNameResId()));
        }
        return arrayList;
    }

    public final List<String> getMessagePopupItemBackupData() {
        int collectionSizeOrDefault;
        List<String> mutableList;
        Set<MessagePopupItem> set = this.selectedMessagePopupItems;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (MessagePopupItem messagePopupItem : set) {
            arrayList.add(messagePopupItem.name());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    public final Map<String, Set<String>> getChatAttachAlertButtonsBackupData() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<String, Set<String>> mutableMap;
        Set<Map.Entry<DialogType, Set<ChatAttachAlertButton>>> entrySet = this.selectedChatAttachAlertButtons.entrySet();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entrySet, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Pair m100to = TuplesKt.m100to(((DialogType) entry.getKey()).name(), ChatAttachAlertButton.Companion.mapEnumsToNames((Set) entry.getValue()));
            linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        return mutableMap;
    }

    /* compiled from: ToolsController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final ToolsController m1961getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new ToolsController(i);
        }

        public final ToolsController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(ToolsController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.ToolsController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    ToolsController m1961getInstance$lambda0;
                    m1961getInstance$lambda0 = ToolsController.Companion.m1961getInstance$lambda0(i, (Integer) obj);
                    return m1961getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (ToolsController) computeIfAbsent;
        }
    }
}
