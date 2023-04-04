package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.RecentChatsController;
import com.iMe.fork.enums.DrawStatusType;
import com.iMe.fork.enums.RecentChatsDialogType;
import com.iMe.fork.models.backup.Backup;
import com.iMe.storage.data.locale.p028db.dao.main.HistoryDialogDao;
import com.iMe.storage.data.locale.p028db.model.recent_chats.HistoryDialogDb;
import com.iMe.storage.data.mapper.recent_chats.RecentChatsMappingKt;
import com.iMe.storage.domain.model.HistoryDialogModel;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import p035j$.util.Collection$EL;
import p035j$.util.concurrent.ConcurrentHashMap;
import p035j$.util.concurrent.ConcurrentMap$EL;
import p035j$.util.function.Function;
import p035j$.util.function.Predicate;
/* compiled from: RecentChatsController.kt */
/* loaded from: classes3.dex */
public final class RecentChatsController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, RecentChatsController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy dao$delegate;
    private Map<Long, HistoryDialogModel> historyDialogs;
    private boolean isRecentChatsEnabled;
    private boolean isSaveArchiveRecentChatsEnabled;
    private Set<DrawStatusType> selectedDrawStatusTypes;
    private Set<RecentChatsDialogType> selectedRecentChatsDialogTypes;

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
        this.selectedDrawStatusTypes = new LinkedHashSet();
        this.isSaveArchiveRecentChatsEnabled = TelegramPreferenceKeys.User.Default.INSTANCE.isSaveArchiveRecentChatsEnabled();
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

    public final Set<RecentChatsDialogType> getSelectedRecentChatsDialogTypes() {
        return this.selectedRecentChatsDialogTypes;
    }

    public final void setSelectedRecentChatsDialogTypes(Set<RecentChatsDialogType> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.selectedRecentChatsDialogTypes = set;
    }

    public final Set<DrawStatusType> getSelectedDrawStatusTypes() {
        return this.selectedDrawStatusTypes;
    }

    public final void setSelectedDrawStatusTypes(Set<DrawStatusType> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.selectedDrawStatusTypes = set;
    }

    public final boolean isSaveArchiveRecentChatsEnabled() {
        return this.isSaveArchiveRecentChatsEnabled;
    }

    public final void setSaveArchiveRecentChatsEnabled(boolean z) {
        this.isSaveArchiveRecentChatsEnabled = z;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isRecentChatsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isRecentChatsEnabled(), TelegramPreferenceKeys.User.Default.isRecentChatsEnabled());
        this.selectedRecentChatsDialogTypes = RecentChatsDialogType.Companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.User.selectedRecentChatsDialogTypes(), TelegramPreferenceKeys.User.Default.selectedRecentChatsDialogTypes()));
        this.isSaveArchiveRecentChatsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isSaveArchiveRecentChatsEnabled(), TelegramPreferenceKeys.User.Default.INSTANCE.isSaveArchiveRecentChatsEnabled());
        this.selectedDrawStatusTypes = DrawStatusType.Companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.User.selectedDrawStatusTypes(), TelegramPreferenceKeys.User.Default.selectedDrawStatusTypes()));
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isRecentChatsEnabled(), this.isRecentChatsEnabled).apply();
        edit.putStringSet(TelegramPreferenceKeys.User.selectedRecentChatsDialogTypes(), RecentChatsDialogType.Companion.mapEnumsToNames(this.selectedRecentChatsDialogTypes)).apply();
        edit.putBoolean(TelegramPreferenceKeys.User.isSaveArchiveRecentChatsEnabled(), this.isSaveArchiveRecentChatsEnabled).apply();
        edit.putStringSet(TelegramPreferenceKeys.User.selectedDrawStatusTypes(), DrawStatusType.Companion.mapEnumsToNames(this.selectedDrawStatusTypes)).apply();
    }

    public final void restoreBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isRecentChatsEnabled() != null) {
            this.isRecentChatsEnabled = backup.isRecentChatsEnabled().booleanValue();
        }
        if (backup.getSelectedRecentChatsDialogTypes() != null) {
            this.selectedRecentChatsDialogTypes = RecentChatsDialogType.Companion.mapNamesToEnums(backup.getSelectedRecentChatsDialogTypes());
        }
        if (backup.isSaveArchiveRecentChatsEnabled() != null) {
            this.isSaveArchiveRecentChatsEnabled = backup.isSaveArchiveRecentChatsEnabled().booleanValue();
        }
        if (backup.getSelectedDrawStatusTypes() != null) {
            this.selectedDrawStatusTypes = DrawStatusType.Companion.mapNamesToEnums(backup.getSelectedDrawStatusTypes());
        }
        saveConfig();
    }

    public final void updateCreationDate(long j, boolean z) {
        if (!z) {
            HistoryDialogModel historyDialogModel = this.historyDialogs.get(Long.valueOf(j));
            boolean z2 = true;
            if (historyDialogModel == null || !historyDialogModel.isPinned()) {
                z2 = false;
            }
            if (z2) {
                return;
            }
        }
        final HistoryDialogModel historyDialogModel2 = this.historyDialogs.get(Long.valueOf(j));
        if (historyDialogModel2 == null) {
            historyDialogModel2 = new HistoryDialogModel(j, 0L, false);
        }
        historyDialogModel2.setCreationDate(System.currentTimeMillis());
        this.historyDialogs.put(Long.valueOf(j), historyDialogModel2);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.updateCreationDate$lambda$2(RecentChatsController.this, historyDialogModel2);
            }
        });
        getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateCreationDate$lambda$2(RecentChatsController this$0, HistoryDialogModel newModel) {
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
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.updatePin$lambda$3(RecentChatsController.this, j, isPinned);
            }
        });
        updateCreationDate(j, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updatePin$lambda$3(RecentChatsController this$0, long j, boolean z) {
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
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.fork.controller.RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1
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
        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.iMe.fork.controller.RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$2
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

    public final boolean isDrawStatusType(DrawStatusType drawStatusType) {
        Intrinsics.checkNotNullParameter(drawStatusType, "drawStatusType");
        return this.selectedDrawStatusTypes.contains(drawStatusType);
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
            Pair m94to = TuplesKt.m94to(Long.valueOf(historyDialogDb.getDialogId()), RecentChatsMappingKt.mapToDomain(historyDialogDb));
            linkedHashMap.put(m94to.getFirst(), m94to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.historyDialogs = mutableMap;
    }

    public final void removeRecentChat(final long j) {
        this.historyDialogs.remove(Long.valueOf(j));
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.removeRecentChat$lambda$9(RecentChatsController.this, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeRecentChat$lambda$9(RecentChatsController this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().removeRecentChatHistory(this$0.getUserConfig().clientUserId, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteByIdList$lambda$11(RecentChatsController this$0, List idsLong) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(idsLong, "$idsLong");
        this$0.getDao().deleteByIdList(idsLong, this$0.getUserConfig().clientUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean clearRecentChatsHistory$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    public final void clearRecentChatsHistory() {
        Collection<HistoryDialogModel> values = this.historyDialogs.values();
        final RecentChatsController$clearRecentChatsHistory$1 recentChatsController$clearRecentChatsHistory$1 = RecentChatsController$clearRecentChatsHistory$1.INSTANCE;
        Collection$EL.removeIf(values, new Predicate() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda5
            @Override // p035j$.util.function.Predicate
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Objects.requireNonNull(predicate);
            }

            @Override // p035j$.util.function.Predicate
            public /* synthetic */ Predicate negate() {
                return Predicate.CC.$default$negate(this);
            }

            @Override // p035j$.util.function.Predicate
            /* renamed from: or */
            public /* synthetic */ Predicate mo21or(Predicate predicate) {
                return Objects.requireNonNull(predicate);
            }

            @Override // p035j$.util.function.Predicate
            public final boolean test(Object obj) {
                boolean clearRecentChatsHistory$lambda$12;
                clearRecentChatsHistory$lambda$12 = RecentChatsController.clearRecentChatsHistory$lambda$12(Function1.this, obj);
                return clearRecentChatsHistory$lambda$12;
            }
        });
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.clearRecentChatsHistory$lambda$13(RecentChatsController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearRecentChatsHistory$lambda$13(RecentChatsController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        HistoryDialogDao.clearRecentChatHistory$default(this$0.getDao(), false, 1, null);
    }

    public final Collection<HistoryDialogModel> getRecentChatsList() {
        return this.historyDialogs.values();
    }

    public final List<String> getDialogTypesSettingsRecentChats() {
        List<RecentChatsDialogType> sortedWith;
        int collectionSizeOrDefault;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.selectedRecentChatsDialogTypes, new Comparator() { // from class: com.iMe.fork.controller.RecentChatsController$getDialogTypesSettingsRecentChats$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((RecentChatsDialogType) t).ordinal()), Integer.valueOf(((RecentChatsDialogType) t2).ordinal()));
                return compareValues;
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (RecentChatsDialogType recentChatsDialogType : sortedWith) {
            arrayList.add(recentChatsDialogType.getTitle());
        }
        return arrayList;
    }

    /* compiled from: RecentChatsController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final RecentChatsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (RecentChatsController) tmp0.invoke(obj);
        }

        public final RecentChatsController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = RecentChatsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final RecentChatsController$Companion$getInstance$1 recentChatsController$Companion$getInstance$1 = new RecentChatsController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.RecentChatsController$Companion$$ExternalSyntheticLambda0
                @Override // p035j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p035j$.util.function.Function
                public final Object apply(Object obj) {
                    RecentChatsController instance$lambda$0;
                    instance$lambda$0 = RecentChatsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p035j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…ontroller(accountIndex) }");
            return (RecentChatsController) computeIfAbsent;
        }
    }

    public final void deleteByIdList(final List<Long> idsLong) {
        Intrinsics.checkNotNullParameter(idsLong, "idsLong");
        for (Number number : idsLong) {
            this.historyDialogs.remove(Long.valueOf(number.longValue()));
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.deleteByIdList$lambda$11(RecentChatsController.this, idsLong);
            }
        });
    }
}
