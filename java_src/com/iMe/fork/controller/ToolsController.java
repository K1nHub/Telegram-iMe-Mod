package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.enums.ChatAttachAlertButton;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.enums.MessagePopupItem;
import com.iMe.fork.enums.SentMessageFont;
import com.iMe.fork.models.backup.Backup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: ToolsController.kt */
/* loaded from: classes4.dex */
public final class ToolsController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, ToolsController> accountInstances = new ConcurrentHashMap<>(5);
    private boolean isChannelWidePostsEnabled;
    private boolean isMessagePopupAggregatorEnabled;
    private boolean isRememberLastDialogEnabled;
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

    public final boolean isShowChannelBottomPanel() {
        return this.isShowChannelBottomPanel;
    }

    public final void setShowChannelBottomPanel(boolean z) {
        this.isShowChannelBottomPanel = z;
    }

    public final Map<DialogType, Set<ChatAttachAlertButton>> getSelectedChatAttachAlertButtons() {
        return this.selectedChatAttachAlertButtons;
    }

    public final Set<MessagePopupItem> getSelectedMessagePopupItems() {
        return this.selectedMessagePopupItems;
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

    public final void loadConfig(SharedPreferences preferences) {
        int mapCapacity;
        int coerceAtLeast;
        Map<DialogType, Set<ChatAttachAlertButton>> mutableMap;
        Set<? extends ChatAttachAlertButton> set;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isSilentSendingEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isSilentSendingEnabled(), TelegramPreferenceKeys.User.Default.isSilentSendingEnabled());
        this.selectedSentMessageFont = SentMessageFont.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.User.selectedSentMessageFont(), TelegramPreferenceKeys.User.Default.selectedSentMessageFont().name()));
        this.isRememberLastDialogEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isRememberLastDialogEnabled(), TelegramPreferenceKeys.User.Default.isRememberLastDialogEnabled());
        this.rememberLastDialogId = preferences.getLong(TelegramPreferenceKeys.User.rememberLastDialogId(), TelegramPreferenceKeys.User.Default.rememberLastDialogId());
        this.rememberLastDialogTopicId = preferences.getInt(TelegramPreferenceKeys.User.rememberLastDialogTopicId(), TelegramPreferenceKeys.User.Default.rememberLastDialogTopicId());
        this.isSwipeToGoToNextUnreadDialogEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogEnabled(), TelegramPreferenceKeys.User.Default.isSwipeToGoToNextUnreadDialogEnabled());
        this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(), TelegramPreferenceKeys.User.Default.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled());
        this.selectedDialogTypesForSwipeToGoToNextUnreadDialog = DialogType.Companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.User.selectedDialogTypesForSwipeToGoToNextUnreadDialog(), TelegramPreferenceKeys.User.Default.selectedDialogTypesForSwipeToGoToNextUnreadDialog()));
        this.isShowChannelBottomPanel = preferences.getBoolean(TelegramPreferenceKeys.User.isShowChannelBottomPanel(), TelegramPreferenceKeys.User.Default.isShowChannelBottomPanel());
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
        this.selectedChatAttachAlertButtons = mutableMap;
        this.selectedMessagePopupItems = MessagePopupItem.Companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.User.selectedMessagePopupItems(), TelegramPreferenceKeys.User.Default.selectedMessagePopupItems()));
        this.isMessagePopupAggregatorEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isMessagePopupAggregatorEnabled(), TelegramPreferenceKeys.User.Default.isMessagePopupAggregatorEnabled());
        this.isChannelWidePostsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isChannelWidePostsEnabled(), TelegramPreferenceKeys.User.Default.isChannelWidePostsEnabled());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isSilentSendingEnabled(), this.isSilentSendingEnabled);
        edit.putString(TelegramPreferenceKeys.User.selectedSentMessageFont(), this.selectedSentMessageFont.name());
        edit.putBoolean(TelegramPreferenceKeys.User.isRememberLastDialogEnabled(), this.isRememberLastDialogEnabled);
        edit.putLong(TelegramPreferenceKeys.User.rememberLastDialogId(), this.rememberLastDialogId);
        edit.putInt(TelegramPreferenceKeys.User.rememberLastDialogTopicId(), this.rememberLastDialogTopicId);
        edit.putBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogEnabled(), this.isSwipeToGoToNextUnreadDialogEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(), this.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled);
        edit.putStringSet(TelegramPreferenceKeys.User.selectedDialogTypesForSwipeToGoToNextUnreadDialog(), DialogType.Companion.mapEnumsToNames(this.selectedDialogTypesForSwipeToGoToNextUnreadDialog));
        edit.putBoolean(TelegramPreferenceKeys.User.isShowChannelBottomPanel(), this.isShowChannelBottomPanel);
        for (Map.Entry<DialogType, Set<ChatAttachAlertButton>> entry : this.selectedChatAttachAlertButtons.entrySet()) {
            edit.putStringSet(TelegramPreferenceKeys.User.buildEnabledChatAttachAlertButtonsKey(entry.getKey()), ChatAttachAlertButton.Companion.mapEnumsToNames(entry.getValue()));
        }
        edit.putStringSet(TelegramPreferenceKeys.User.selectedMessagePopupItems(), MessagePopupItem.Companion.mapEnumsToNames(this.selectedMessagePopupItems));
        edit.putBoolean(TelegramPreferenceKeys.User.isMessagePopupAggregatorEnabled(), this.isMessagePopupAggregatorEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isChannelWidePostsEnabled(), this.isChannelWidePostsEnabled);
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
                Intrinsics.checkNotNull(mapNameToEnum, "null cannot be cast to non-null type com.iMe.fork.enums.DialogType");
                Pair m103to = TuplesKt.m103to(mapNameToEnum, ChatAttachAlertButton.Companion.mapNamesToEnums((Set) entry.getValue()));
                linkedHashMap.put(m103to.getFirst(), m103to.getSecond());
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
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.selectedDialogTypesForSwipeToGoToNextUnreadDialog, new Comparator() { // from class: com.iMe.fork.controller.ToolsController$getSwipeToGoToNextUnreadDialogTypeNames$$inlined$sortedBy$1
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
            Pair m103to = TuplesKt.m103to(((DialogType) entry.getKey()).name(), ChatAttachAlertButton.Companion.mapEnumsToNames((Set) entry.getValue()));
            linkedHashMap.put(m103to.getFirst(), m103to.getSecond());
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
        public static final ToolsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (ToolsController) tmp0.invoke(obj);
        }

        public final ToolsController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = ToolsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, ToolsController> function1 = new Function1<Integer, ToolsController>() { // from class: com.iMe.fork.controller.ToolsController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ToolsController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ToolsController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.ToolsController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    ToolsController instance$lambda$0;
                    instance$lambda$0 = ToolsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (ToolsController) computeIfAbsent;
        }
    }
}
