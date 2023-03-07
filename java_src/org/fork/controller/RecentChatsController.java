package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.storage.data.locale.p027db.dao.main.HistoryDialogDao;
import com.smedialink.storage.data.locale.p027db.model.recent_chats.HistoryDialogDb;
import com.smedialink.storage.data.mapper.recent_chats.RecentChatsMappingKt;
import com.smedialink.storage.domain.model.HistoryDialogModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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
import org.fork.controller.RecentChatsController;
import org.fork.enums.DialogType;
import org.fork.models.backup.Backup;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: RecentChatsController.kt */
/* loaded from: classes4.dex */
public final class RecentChatsController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, RecentChatsController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy dao$delegate;
    private Map<Long, HistoryDialogModel> historyDialogs;
    private boolean isRecentChatsEnabled;
    private Set<DialogType> selectedRecentChatsDialogTypes;

    public static final RecentChatsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public RecentChatsController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new RecentChatsController$special$$inlined$inject$default$1(this, null, null));
        this.dao$delegate = lazy;
        this.isRecentChatsEnabled = TelegramPreferenceKeys.User.Default.isRecentChatsEnabled();
        this.selectedRecentChatsDialogTypes = new LinkedHashSet();
        this.historyDialogs = new LinkedHashMap();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final HistoryDialogDao getDao() {
        return (HistoryDialogDao) this.dao$delegate.getValue();
    }

    public final boolean isRecentChatsEnabled() {
        return this.isRecentChatsEnabled;
    }

    public final void setRecentChatsEnabled(boolean z) {
        this.isRecentChatsEnabled = z;
    }

    public final Set<DialogType> getSelectedRecentChatsDialogTypes() {
        return this.selectedRecentChatsDialogTypes;
    }

    public final void setSelectedRecentChatsDialogTypes(Set<DialogType> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.selectedRecentChatsDialogTypes = set;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        setRecentChatsEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isRecentChatsEnabled(), TelegramPreferenceKeys.User.Default.isRecentChatsEnabled()));
        setSelectedRecentChatsDialogTypes(DialogType.Companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.User.selectedRecentChatsDialogTypes(), TelegramPreferenceKeys.User.Default.selectedRecentChatsDialogTypes())));
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isRecentChatsEnabled(), isRecentChatsEnabled()).apply();
        edit.putStringSet(TelegramPreferenceKeys.User.selectedRecentChatsDialogTypes(), DialogType.Companion.mapEnumsToNames(getSelectedRecentChatsDialogTypes())).apply();
    }

    public final void restoreBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isRecentChatsEnabled() != null) {
            this.isRecentChatsEnabled = backup.isRecentChatsEnabled().booleanValue();
        }
        if (backup.getSelectedRecentChatsDialogTypes() != null) {
            this.selectedRecentChatsDialogTypes = DialogType.Companion.mapNamesToEnums(backup.getSelectedRecentChatsDialogTypes());
        }
        saveConfig();
    }

    public final void updateCreationDate(long j, boolean z) {
        if (!z) {
            HistoryDialogModel historyDialogModel = this.historyDialogs.get(Long.valueOf(j));
            if (historyDialogModel != null && historyDialogModel.isPinned()) {
                return;
            }
        }
        final HistoryDialogModel historyDialogModel2 = this.historyDialogs.get(Long.valueOf(j));
        if (historyDialogModel2 == null) {
            historyDialogModel2 = new HistoryDialogModel(j, 0L, false);
        }
        historyDialogModel2.setCreationDate(System.currentTimeMillis());
        this.historyDialogs.put(Long.valueOf(j), historyDialogModel2);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.RecentChatsController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.m1935updateCreationDate$lambda2(RecentChatsController.this, historyDialogModel2);
            }
        });
        getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateCreationDate$lambda-2  reason: not valid java name */
    public static final void m1935updateCreationDate$lambda2(RecentChatsController this$0, HistoryDialogModel newModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newModel, "$newModel");
        this$0.getDao().insert((HistoryDialogDao) RecentChatsMappingKt.mapToDb(newModel, this$0.getUserConfig().clientUserId));
    }

    public final void toggleEnabled() {
        this.isRecentChatsEnabled = !this.isRecentChatsEnabled;
        saveConfig();
    }

    public final void updatePin(final long j) {
        HistoryDialogModel historyDialogModel = this.historyDialogs.get(Long.valueOf(j));
        if (historyDialogModel == null) {
            return;
        }
        final boolean isPinned = historyDialogModel.isPinned();
        HistoryDialogModel historyDialogModel2 = this.historyDialogs.get(Long.valueOf(j));
        if (historyDialogModel2 != null) {
            historyDialogModel2.setPinned(!isPinned);
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.RecentChatsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.m1936updatePin$lambda3(RecentChatsController.this, j, isPinned);
            }
        });
        updateCreationDate(j, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updatePin$lambda-3  reason: not valid java name */
    public static final void m1936updatePin$lambda3(RecentChatsController this$0, long j, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().updatePinned(this$0.getUserConfig().clientUserId, j, !z);
    }

    public final List<HistoryDialogModel> getRecentChatsFilter() {
        List list;
        List sortedWith;
        List sortedWith2;
        List<HistoryDialogModel> plus;
        list = CollectionsKt___CollectionsKt.toList(getRecentChatsList());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((HistoryDialogModel) obj).isPinned()) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: org.fork.controller.RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((HistoryDialogModel) t2).getCreationDate()), Long.valueOf(((HistoryDialogModel) t).getCreationDate()));
                return compareValues;
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            if (!((HistoryDialogModel) obj2).isPinned()) {
                arrayList2.add(obj2);
            }
        }
        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: org.fork.controller.RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$2
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((HistoryDialogModel) t2).getCreationDate()), Long.valueOf(((HistoryDialogModel) t).getCreationDate()));
                return compareValues;
            }
        });
        plus = CollectionsKt___CollectionsKt.plus((Collection) sortedWith, (Iterable) sortedWith2);
        return plus;
    }

    public final void loadRecentChats() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<Long, HistoryDialogModel> mutableMap;
        List<HistoryDialogDb> historyDialog = getDao().getHistoryDialog(getUserConfig().clientUserId);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(historyDialog, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (HistoryDialogDb historyDialogDb : historyDialog) {
            Pair m100to = TuplesKt.m100to(Long.valueOf(historyDialogDb.getDialogId()), RecentChatsMappingKt.mapToDomain(historyDialogDb));
            linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.historyDialogs = mutableMap;
    }

    public final void removeRecentChat(final long j) {
        this.historyDialogs.remove(Long.valueOf(j));
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.RecentChatsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.m1934removeRecentChat$lambda9(RecentChatsController.this, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removeRecentChat$lambda-9  reason: not valid java name */
    public static final void m1934removeRecentChat$lambda9(RecentChatsController this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().removeRecentChatHistory(this$0.getUserConfig().clientUserId, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteByIdList$lambda-11  reason: not valid java name */
    public static final void m1933deleteByIdList$lambda11(RecentChatsController this$0, List idsLong) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(idsLong, "$idsLong");
        this$0.getDao().deleteByIdList(idsLong, this$0.getUserConfig().clientUserId);
    }

    public final void clearRecentChatsHistory() {
        Map<Long, HistoryDialogModel> mutableMap;
        Map<Long, HistoryDialogModel> map = this.historyDialogs;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Long, HistoryDialogModel> entry : map.entrySet()) {
            if (entry.getValue().isPinned()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.historyDialogs = mutableMap;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.RecentChatsController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.m1932clearRecentChatsHistory$lambda13(RecentChatsController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: clearRecentChatsHistory$lambda-13  reason: not valid java name */
    public static final void m1932clearRecentChatsHistory$lambda13(RecentChatsController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        HistoryDialogDao.clearRecentChatHistory$default(this$0.getDao(), false, 1, null);
    }

    public final Collection<HistoryDialogModel> getRecentChatsList() {
        return this.historyDialogs.values();
    }

    public final List<String> getDialogTypesSettingsRecentChats() {
        List<DialogType> sortedWith;
        int collectionSizeOrDefault;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.selectedRecentChatsDialogTypes, new Comparator() { // from class: org.fork.controller.RecentChatsController$getDialogTypesSettingsRecentChats$$inlined$sortedBy$1
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

    /* compiled from: RecentChatsController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final RecentChatsController m1937getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new RecentChatsController(i);
        }

        public final RecentChatsController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(RecentChatsController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.RecentChatsController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    RecentChatsController m1937getInstance$lambda0;
                    m1937getInstance$lambda0 = RecentChatsController.Companion.m1937getInstance$lambda0(i, (Integer) obj);
                    return m1937getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (RecentChatsController) computeIfAbsent;
        }
    }

    public final void deleteByIdList(final List<Long> idsLong) {
        Intrinsics.checkNotNullParameter(idsLong, "idsLong");
        for (Number number : idsLong) {
            this.historyDialogs.remove(Long.valueOf(number.longValue()));
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.RecentChatsController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.m1933deleteByIdList$lambda11(RecentChatsController.this, idsLong);
            }
        });
    }
}
