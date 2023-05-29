package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.MultiPanelController;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.enums.MultiPanelButton;
import com.iMe.fork.models.MultiPanelButtonState;
import com.iMe.fork.models.backup.Backup;
import com.iMe.fork.models.backup.BackupMappingKt;
import com.iMe.fork.models.backup.MultiPanelButtonStateBackup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
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
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: MultiPanelController.kt */
/* loaded from: classes3.dex */
public final class MultiPanelController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, MultiPanelController> accountInstances = new ConcurrentHashMap<>(5);
    private Map<DialogType, List<MultiPanelButtonState>> buttonStates;
    private boolean isHideMultiPanelOnScrollEnabled;
    private boolean isMultiPanelEnabled;

    public static final MultiPanelController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public MultiPanelController(int i) {
        super(i);
        this.isMultiPanelEnabled = TelegramPreferenceKeys.User.Default.isMultiPanelEnabled();
        this.isHideMultiPanelOnScrollEnabled = TelegramPreferenceKeys.User.Default.isHideMultiPanelOnScrollEnabled();
        this.buttonStates = new LinkedHashMap();
    }

    public final boolean isMultiPanelEnabled() {
        return this.isMultiPanelEnabled;
    }

    public final void setMultiPanelEnabled(boolean z) {
        this.isMultiPanelEnabled = z;
    }

    public final boolean isHideMultiPanelOnScrollEnabled() {
        return this.isHideMultiPanelOnScrollEnabled;
    }

    public final void setHideMultiPanelOnScrollEnabled(boolean z) {
        this.isHideMultiPanelOnScrollEnabled = z;
    }

    public final Map<DialogType, List<MultiPanelButtonState>> getButtonStates() {
        return this.buttonStates;
    }

    public final void loadConfig(SharedPreferences preferences) {
        DialogType[] values;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.buttonStates.clear();
        this.isMultiPanelEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isMultiPanelEnabled(), TelegramPreferenceKeys.User.Default.isMultiPanelEnabled());
        this.isHideMultiPanelOnScrollEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isHideMultiPanelOnScrollEnabled(), TelegramPreferenceKeys.User.Default.isHideMultiPanelOnScrollEnabled());
        for (DialogType dialogType : DialogType.values()) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : dialogType.getMultiPanelButtons()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                MultiPanelButton multiPanelButton = (MultiPanelButton) obj;
                arrayList.add(new MultiPanelButtonState(multiPanelButton, preferences.getBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton, dialogType), multiPanelButton.isEnabledByDefault()), preferences.getInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton, dialogType), i)));
                i = i2;
            }
            if (arrayList.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.iMe.fork.controller.MultiPanelController$loadConfig$lambda$3$lambda$2$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((MultiPanelButtonState) t).getPosition()), Integer.valueOf(((MultiPanelButtonState) t2).getPosition()));
                        return compareValues;
                    }
                });
            }
            this.buttonStates.put(dialogType, arrayList);
        }
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isMultiPanelEnabled(), this.isMultiPanelEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isHideMultiPanelOnScrollEnabled(), this.isHideMultiPanelOnScrollEnabled);
        for (Map.Entry<DialogType, List<MultiPanelButtonState>> entry : this.buttonStates.entrySet()) {
            DialogType key = entry.getKey();
            int i = 0;
            for (Object obj : entry.getValue()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                MultiPanelButtonState multiPanelButtonState = (MultiPanelButtonState) obj;
                edit.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButtonState.getType(), key), i);
                edit.putBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButtonState.getType(), key), multiPanelButtonState.isEnabled());
                i = i2;
            }
        }
        edit.apply();
    }

    public final Map<String, List<MultiPanelButtonStateBackup>> getBackupData() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<String, List<MultiPanelButtonStateBackup>> mutableMap;
        int collectionSizeOrDefault2;
        List mutableList;
        Set<Map.Entry<DialogType, List<MultiPanelButtonState>>> entrySet = this.buttonStates.entrySet();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entrySet, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String name = ((DialogType) entry.getKey()).name();
            Iterable<MultiPanelButtonState> iterable = (Iterable) entry.getValue();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
            for (MultiPanelButtonState multiPanelButtonState : iterable) {
                arrayList.add(BackupMappingKt.mapToBackup(multiPanelButtonState));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            Pair m85to = TuplesKt.m85to(name, mutableList);
            linkedHashMap.put(m85to.getFirst(), m85to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        return mutableMap;
    }

    public final void restoreBackup(Backup backup) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<DialogType, List<MultiPanelButtonState>> mutableMap;
        List mutableList;
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isMultiPanelEnabled() != null) {
            this.isMultiPanelEnabled = backup.isMultiPanelEnabled().booleanValue();
        }
        if (backup.isHideMultiPanelOnScrollEnabled() != null) {
            this.isHideMultiPanelOnScrollEnabled = backup.isHideMultiPanelOnScrollEnabled().booleanValue();
        }
        if (backup.getMultiPanelSettings() != null) {
            Set<Map.Entry<String, List<MultiPanelButtonStateBackup>>> entrySet = backup.getMultiPanelSettings().entrySet();
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
                ArrayList arrayList2 = new ArrayList();
                for (MultiPanelButtonStateBackup multiPanelButtonStateBackup : (Iterable) entry.getValue()) {
                    MultiPanelButtonState mapToDomain = BackupMappingKt.mapToDomain(multiPanelButtonStateBackup);
                    if (mapToDomain != null) {
                        arrayList2.add(mapToDomain);
                    }
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
                Pair m85to = TuplesKt.m85to(mapNameToEnum, mutableList);
                linkedHashMap.put(m85to.getFirst(), m85to.getSecond());
            }
            mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
            this.buttonStates = mutableMap;
        }
        saveConfig();
    }

    public final void resetConfig() {
        DialogType[] values;
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.remove(TelegramPreferenceKeys.User.isMultiPanelEnabled());
        for (DialogType dialogType : DialogType.values()) {
            for (MultiPanelButton multiPanelButton : dialogType.getMultiPanelButtons()) {
                edit.remove(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton, dialogType));
                edit.remove(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton, dialogType));
            }
        }
        edit.apply();
        SharedPreferences preferencesPublic = getUserConfig().getPreferencesPublic();
        Intrinsics.checkNotNullExpressionValue(preferencesPublic, "userConfig.preferencesPublic");
        loadConfig(preferencesPublic);
    }

    public final List<String> getActiveDialogTypeNames() {
        Map<DialogType, List<MultiPanelButtonState>> map = this.buttonStates;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<DialogType, List<MultiPanelButtonState>> entry : map.entrySet()) {
            List<MultiPanelButtonState> value = entry.getValue();
            boolean z = false;
            if (!(value instanceof Collection) || !value.isEmpty()) {
                Iterator<T> it = value.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((MultiPanelButtonState) it.next()).isEnabled()) {
                            z = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (z) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            arrayList.add(LocaleController.getInternalString(((DialogType) entry2.getKey()).getNameResId()));
        }
        return arrayList;
    }

    public final List<MultiPanelButtonState> getButtons(DialogType dialogType) {
        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
        Map<DialogType, List<MultiPanelButtonState>> map = this.buttonStates;
        List<MultiPanelButtonState> list = map.get(dialogType);
        if (list == null) {
            list = new ArrayList<>();
            map.put(dialogType, list);
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setButtonEnabled(DialogType dialogType, MultiPanelButton button, boolean z) {
        boolean z2;
        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
        Intrinsics.checkNotNullParameter(button, "button");
        List<MultiPanelButtonState> list = this.buttonStates.get(dialogType);
        MultiPanelButtonState multiPanelButtonState = null;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((MultiPanelButtonState) next).getType() == button) {
                    z2 = true;
                    continue;
                } else {
                    z2 = false;
                    continue;
                }
                if (z2) {
                    multiPanelButtonState = next;
                    break;
                }
            }
            multiPanelButtonState = multiPanelButtonState;
        }
        if (multiPanelButtonState == null) {
            return;
        }
        multiPanelButtonState.setEnabled(z);
    }

    /* compiled from: MultiPanelController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final MultiPanelController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (MultiPanelController) tmp0.invoke(obj);
        }

        public final MultiPanelController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = MultiPanelController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final MultiPanelController$Companion$getInstance$1 multiPanelController$Companion$getInstance$1 = new MultiPanelController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.MultiPanelController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    MultiPanelController instance$lambda$0;
                    instance$lambda$0 = MultiPanelController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…ontroller(accountIndex) }");
            return (MultiPanelController) computeIfAbsent;
        }
    }
}
