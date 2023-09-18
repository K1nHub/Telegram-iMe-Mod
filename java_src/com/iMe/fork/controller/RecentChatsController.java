package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.RecentChatsController;
import com.iMe.fork.enums.DrawStatusType;
import com.iMe.fork.enums.RecentChatsDialogType;
import com.iMe.fork.models.backup.Backup;
import com.iMe.storage.data.locale.p027db.dao.main.HistoryDialogDao;
import com.iMe.storage.data.locale.p027db.model.recent_chats.HistoryDialogDb;
import com.iMe.storage.data.mapper.recent_chats.RecentChatsMappingKt;
import com.iMe.storage.domain.model.HistoryDialogModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt___RangesKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import p033j$.util.Collection$EL;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
import p033j$.util.function.Predicate;
/* compiled from: RecentChatsController.kt */
/* loaded from: classes4.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<HistoryDialogDao>() { // from class: com.iMe.fork.controller.RecentChatsController$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final HistoryDialogDao invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(HistoryDialogDao.class), qualifier, function0);
            }
        });
        this.dao$delegate = lazy;
        this.isRecentChatsEnabled = TelegramPreferenceKeys.User.Default.isRecentChatsEnabled();
        this.selectedRecentChatsDialogTypes = new LinkedHashSet();
        this.selectedDrawStatusTypes = new LinkedHashSet();
        this.isSaveArchiveRecentChatsEnabled = TelegramPreferenceKeys.User.Default.isSaveArchiveRecentChatsEnabled();
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
        this.isSaveArchiveRecentChatsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isSaveArchiveRecentChatsEnabled(), TelegramPreferenceKeys.User.Default.isSaveArchiveRecentChatsEnabled());
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
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int mapCapacity;
        int coerceAtLeast;
        Map<Long, HistoryDialogModel> mutableMap;
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
        if (backup.getPinnedRecentChats() != null) {
            HistoryDialogDao dao = getDao();
            long j = getUserConfig().clientUserId;
            List<HistoryDialogModel> pinnedRecentChats = backup.getPinnedRecentChats();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(pinnedRecentChats, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (HistoryDialogModel historyDialogModel : pinnedRecentChats) {
                arrayList.add(RecentChatsMappingKt.mapToDb(historyDialogModel, getUserConfig().clientUserId));
            }
            dao.restoreBackup(j, arrayList);
            List<HistoryDialogModel> pinnedRecentChats2 = backup.getPinnedRecentChats();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(pinnedRecentChats2, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (HistoryDialogModel historyDialogModel2 : pinnedRecentChats2) {
                Pair m103to = TuplesKt.m103to(Long.valueOf(historyDialogModel2.getDialogId()), historyDialogModel2);
                linkedHashMap.put(m103to.getFirst(), m103to.getSecond());
            }
            mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
            this.historyDialogs = mutableMap;
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
        if (this.historyDialogs.size() >= 25) {
            if (!this.historyDialogs.containsKey(Long.valueOf(j))) {
                List<HistoryDialogModel> unPinnedRecentChats = getUnPinnedRecentChats();
                if (unPinnedRecentChats.isEmpty()) {
                    return;
                }
                removeRecentChat(unPinnedRecentChats.get(unPinnedRecentChats.size() - 1).getDialogId());
            }
        }
        historyDialogModel2.setCreationDate(System.currentTimeMillis());
        this.historyDialogs.put(Long.valueOf(j), historyDialogModel2);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RecentChatsController.updateCreationDate$lambda$4(RecentChatsController.this, historyDialogModel2);
            }
        });
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentChatsDidLoad, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateCreationDate$lambda$4(RecentChatsController this$0, HistoryDialogModel newModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newModel, "$newModel");
        this$0.getDao().insert((HistoryDialogDao) RecentChatsMappingKt.mapToDb(newModel, this$0.getUserConfig().clientUserId));
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
                RecentChatsController.updatePin$lambda$5(RecentChatsController.this, j, isPinned);
            }
        });
        updateCreationDate(j, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updatePin$lambda$5(RecentChatsController this$0, long j, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().updatePinned(this$0.getUserConfig().clientUserId, j, !z);
    }

    public final List<HistoryDialogModel> getRecentChatsFilter() {
        List list;
        List sortedWith;
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
        plus = CollectionsKt___CollectionsKt.plus((Collection) sortedWith, (Iterable) getUnPinnedRecentChats());
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
            Pair m103to = TuplesKt.m103to(Long.valueOf(historyDialogDb.getDialogId()), RecentChatsMappingKt.mapToDomain(historyDialogDb));
            linkedHashMap.put(m103to.getFirst(), m103to.getSecond());
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
        final RecentChatsController$clearRecentChatsHistory$1 recentChatsController$clearRecentChatsHistory$1 = new Function1<HistoryDialogModel, Boolean>() { // from class: com.iMe.fork.controller.RecentChatsController$clearRecentChatsHistory$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(HistoryDialogModel it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!it.isPinned());
            }
        };
        Collection$EL.removeIf(values, new Predicate() { // from class: com.iMe.fork.controller.RecentChatsController$$ExternalSyntheticLambda5
            @Override // p033j$.util.function.Predicate
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate.CC.$default$and(this, predicate);
            }

            @Override // p033j$.util.function.Predicate
            public /* synthetic */ Predicate negate() {
                return Predicate.CC.$default$negate(this);
            }

            @Override // p033j$.util.function.Predicate
            /* renamed from: or */
            public /* synthetic */ Predicate mo25or(Predicate predicate) {
                return Predicate.CC.$default$or(this, predicate);
            }

            @Override // p033j$.util.function.Predicate
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

    private final List<HistoryDialogModel> getUnPinnedRecentChats() {
        List list;
        List<HistoryDialogModel> sortedWith;
        list = CollectionsKt___CollectionsKt.toList(getRecentChatsList());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!((HistoryDialogModel) obj).isPinned()) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.fork.controller.RecentChatsController$getUnPinnedRecentChats$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((HistoryDialogModel) t2).getCreationDate()), Long.valueOf(((HistoryDialogModel) t).getCreationDate()));
                return compareValues;
            }
        });
        return sortedWith;
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
        public static final RecentChatsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (RecentChatsController) tmp0.invoke(obj);
        }

        public final RecentChatsController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = RecentChatsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, RecentChatsController> function1 = new Function1<Integer, RecentChatsController>() { // from class: com.iMe.fork.controller.RecentChatsController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final RecentChatsController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new RecentChatsController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.RecentChatsController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    RecentChatsController instance$lambda$0;
                    instance$lambda$0 = RecentChatsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
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
