package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.fork.models.backup.Backup;
import com.iMe.fork.models.backup.BackupMappingKt;
import com.iMe.fork.models.backup.TopicBackup;
import com.iMe.storage.data.locale.p026db.dao.main.TopicsDao;
import com.iMe.storage.data.locale.p026db.model.topics.TopicDb;
import com.iMe.storage.data.mapper.topics.TopicMappingKt;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.domain.model.topics.TopicModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt___SetsKt;
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
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC$Dialog;
import p033j$.util.Map;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: ForkTopicsController.kt */
/* loaded from: classes3.dex */
public final class ForkTopicsController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, ForkTopicsController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy dao$delegate;
    private boolean isNoTopicFirstEnabled;
    private boolean isTopicsBarAtBottomEnabled;
    private boolean isTopicsBarEnabled;
    private int lastTopicsCount;
    private long selectedArchiveTopicId;
    private long selectedMainTopicId;
    private Map<Long, TopicModel> topics;

    public static final ForkTopicsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public ForkTopicsController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TopicsDao>() { // from class: com.iMe.fork.controller.ForkTopicsController$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.data.locale.db.dao.main.TopicsDao, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TopicsDao invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TopicsDao.class), qualifier, function0);
            }
        });
        this.dao$delegate = lazy;
        this.isTopicsBarEnabled = TelegramPreferenceKeys.User.Default.isTopicsBarEnabled();
        this.isTopicsBarAtBottomEnabled = TelegramPreferenceKeys.User.Default.isTopicsBarAtBottomEnabled();
        this.isNoTopicFirstEnabled = TelegramPreferenceKeys.User.Default.isNoTopicFirstEnabled();
        this.selectedMainTopicId = -1L;
        this.selectedArchiveTopicId = -1L;
        this.topics = new LinkedHashMap();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final TopicsDao getDao() {
        return (TopicsDao) this.dao$delegate.getValue();
    }

    public final boolean isTopicsBarEnabled() {
        return this.isTopicsBarEnabled;
    }

    public final void setTopicsBarEnabled(boolean z) {
        this.isTopicsBarEnabled = z;
    }

    public final boolean isTopicsBarAtBottomEnabled() {
        return this.isTopicsBarAtBottomEnabled;
    }

    public final void setTopicsBarAtBottomEnabled(boolean z) {
        this.isTopicsBarAtBottomEnabled = z;
    }

    public final boolean isNoTopicFirstEnabled() {
        return this.isNoTopicFirstEnabled;
    }

    public final void setNoTopicFirstEnabled(boolean z) {
        this.isNoTopicFirstEnabled = z;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isTopicsBarEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isTopicsBarEnabled(), TelegramPreferenceKeys.User.Default.isTopicsBarEnabled());
        this.isTopicsBarAtBottomEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isTopicsBarAtBottomEnabled(), TelegramPreferenceKeys.User.Default.isTopicsBarAtBottomEnabled());
        this.isNoTopicFirstEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isNoTopicFirstEnabled(), TelegramPreferenceKeys.User.Default.isNoTopicFirstEnabled());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isTopicsBarEnabled(), this.isTopicsBarEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isTopicsBarAtBottomEnabled(), this.isTopicsBarAtBottomEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isNoTopicFirstEnabled(), this.isNoTopicFirstEnabled);
        edit.apply();
    }

    public final void restoreBackup(Backup backup) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(backup, "backup");
        cleanup();
        if (backup.getTopicsEnabled() != null) {
            this.isTopicsBarEnabled = backup.getTopicsEnabled().booleanValue();
        }
        if (backup.getTopicsBarAtBottom() != null) {
            this.isTopicsBarAtBottomEnabled = backup.getTopicsBarAtBottom().booleanValue();
        }
        if (backup.getNoTopicFirst() != null) {
            this.isNoTopicFirstEnabled = backup.getNoTopicFirst().booleanValue();
        }
        if (backup.getTopics() != null) {
            List<TopicBackup> topics = backup.getTopics();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(topics, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            int i = 0;
            for (Object obj : topics) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                arrayList.add(BackupMappingKt.mapToDb((TopicBackup) obj, i, getUserConfig().clientUserId));
                i = i2;
            }
            getDao().restoreBackup(getUserConfig().clientUserId, arrayList);
            setTopics(arrayList);
        }
        saveConfig();
    }

    public final void loadTopics() {
        setTopics(getDao().getTopics(getUserConfig().clientUserId));
    }

    public final void addOrEditTopic(TopicModel topic) {
        Set<Number> plus;
        List<TopicModel> listOf;
        Intrinsics.checkNotNullParameter(topic, "topic");
        plus = SetsKt___SetsKt.plus((Set) topic.getPresets(), (Iterable) topic.getDialogs());
        for (Number number : plus) {
            long longValue = number.longValue();
            TopicModel topicForDialog = getTopicForDialog(longValue);
            boolean z = false;
            if (topicForDialog != null && topicForDialog.getTopicId() == topic.getTopicId()) {
                z = true;
            }
            if (!z) {
                removeTopicDialog(topicForDialog, longValue);
            }
        }
        putTopic(topic);
        filterTopics();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(topic);
        insertTopics(listOf);
    }

    public final void addTopicDialog(TopicModel topic, long j) {
        List<TopicModel> listOf;
        Intrinsics.checkNotNullParameter(topic, "topic");
        if (topic.getTopicId() == -1) {
            topic.setTopicId(calcNextId());
        }
        removeTopicDialog(j);
        TopicModel topic2 = getTopic(topic.getTopicId());
        if (topic2 == null) {
            topic2 = createNewTopic$default(this, topic.getIcon(), 0L, 0, 6, null);
        }
        topic2.getDialogs().add(Long.valueOf(j));
        putTopic(topic2);
        filterTopics();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(topic2);
        insertTopics(listOf);
    }

    public final void removeTopicDialog(long j) {
        removeTopicDialog(getTopicForDialog(j), j);
    }

    public final void swapTopics(TopicModel from, TopicModel to) {
        List<TopicModel> listOf;
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        int order = from.getOrder();
        from.setOrder(to.getOrder());
        to.setOrder(order);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TopicModel[]{from, to});
        insertTopics(listOf);
    }

    public final void removeTopicFilterDialogs(TopicModel topic) {
        Set plus;
        Set plus2;
        Intrinsics.checkNotNullParameter(topic, "topic");
        Set<Long> presets = topic.getPresets();
        plus = SetsKt___SetsKt.plus((Set) topic.getFilterDialogs(), (Iterable) topic.getFilterArchivedDialogs());
        presets.removeAll(plus);
        Set<Long> dialogs = topic.getDialogs();
        plus2 = SetsKt___SetsKt.plus((Set) topic.getFilterDialogs(), (Iterable) topic.getFilterArchivedDialogs());
        dialogs.removeAll(plus2);
        saveTopic(topic);
    }

    public final void filterTopics() {
        boolean z;
        Collection<TopicModel> values = this.topics.values();
        int size = values.size();
        if (this.lastTopicsCount != size) {
            this.lastTopicsCount = size;
            z = true;
        } else {
            z = false;
        }
        for (TopicModel topicModel : values) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Number number : topicModel.getPresets()) {
                long longValue = number.longValue();
                TLRPC$Dialog dialog = getMessagesController().getDialog(longValue);
                if (dialog != null) {
                    Intrinsics.checkNotNullExpressionValue(dialog, "getDialog(did)");
                    if (!getHiddenChatsController().isChatHidden(dialog.f1606id)) {
                        if (dialog.folder_id == 0) {
                            arrayList.add(Long.valueOf(longValue));
                        } else {
                            arrayList2.add(Long.valueOf(longValue));
                        }
                    }
                }
            }
            for (Number number2 : topicModel.getDialogs()) {
                long longValue2 = number2.longValue();
                TLRPC$Dialog dialog2 = getMessagesController().getDialog(longValue2);
                if (dialog2 != null) {
                    Intrinsics.checkNotNullExpressionValue(dialog2, "getDialog(did)");
                    if (!getHiddenChatsController().isChatHidden(dialog2.f1606id)) {
                        if (dialog2.folder_id == 0) {
                            arrayList.add(Long.valueOf(longValue2));
                        } else {
                            arrayList2.add(Long.valueOf(longValue2));
                        }
                    }
                }
            }
            Set<Long> filterDialogs = topicModel.getFilterDialogs();
            if (!Intrinsics.areEqual(filterDialogs, arrayList)) {
                filterDialogs.clear();
                filterDialogs.addAll(arrayList);
                z = true;
            }
            Set<Long> filterArchivedDialogs = topicModel.getFilterArchivedDialogs();
            if (!Intrinsics.areEqual(filterArchivedDialogs, arrayList2)) {
                filterArchivedDialogs.clear();
                filterArchivedDialogs.addAll(arrayList2);
                z = true;
            }
        }
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.ForkTopicsController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ForkTopicsController.filterTopics$lambda$10(ForkTopicsController.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void filterTopics$lambda$10(ForkTopicsController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.topicsDidLoad, new Object[0]);
    }

    public final void setHidden(final long j, final boolean z) {
        TopicModel topicModel = this.topics.get(Long.valueOf(j));
        if (topicModel != null) {
            topicModel.setHidden(z);
        }
        Map<Long, TopicModel> map = this.topics;
        Long valueOf = Long.valueOf(j);
        Intrinsics.checkNotNull(topicModel, "null cannot be cast to non-null type com.iMe.storage.domain.model.topics.TopicModel");
        Map.EL.replace(map, valueOf, topicModel);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.topicsSettingsChanged, new Object[0]);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.ForkTopicsController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ForkTopicsController.setHidden$lambda$11(ForkTopicsController.this, z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setHidden$lambda$11(ForkTopicsController this$0, boolean z, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().setHidden(z, this$0.getUserConfig().clientUserId, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003b, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
        if (r3 != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.iMe.storage.domain.model.topics.TopicModel> getTopicsNotEmpty(boolean r8) {
        /*
            r7 = this;
            java.util.Map<java.lang.Long, com.iMe.storage.domain.model.topics.TopicModel> r0 = r7.topics
            java.util.Collection r0 = r0.values()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        Lf:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L48
            java.lang.Object r2 = r0.next()
            r3 = r2
            com.iMe.storage.domain.model.topics.TopicModel r3 = (com.iMe.storage.domain.model.topics.TopicModel) r3
            boolean r4 = r3.isHidden()
            r5 = 1
            r6 = 0
            if (r4 != 0) goto L41
            if (r8 == 0) goto L31
            java.util.Set r3 = r3.getFilterArchivedDialogs()
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L3d
            goto L3b
        L31:
            java.util.Set r3 = r3.getFilterDialogs()
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L3d
        L3b:
            r3 = r5
            goto L3e
        L3d:
            r3 = r6
        L3e:
            if (r3 == 0) goto L41
            goto L42
        L41:
            r5 = r6
        L42:
            if (r5 == 0) goto Lf
            r1.add(r2)
            goto Lf
        L48:
            com.iMe.fork.controller.ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1 r8 = new com.iMe.fork.controller.ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1
            r8.<init>()
            java.util.List r8 = kotlin.collections.CollectionsKt.sortedWith(r1, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.controller.ForkTopicsController.getTopicsNotEmpty(boolean):java.util.List");
    }

    public final List<TopicModel> getAllTopicsNotEmpty() {
        List<TopicModel> sortedWith;
        Collection<TopicModel> values = this.topics.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            TopicModel topicModel = (TopicModel) obj;
            boolean z = true;
            if (!(!topicModel.getFilterArchivedDialogs().isEmpty()) && !(!topicModel.getFilterDialogs().isEmpty())) {
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.fork.controller.ForkTopicsController$getAllTopicsNotEmpty$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((TopicModel) t).getOrder()), Integer.valueOf(((TopicModel) t2).getOrder()));
                return compareValues;
            }
        });
        return sortedWith;
    }

    public final TopicModel getTopicForDialog(long j) {
        Object obj;
        boolean contains;
        Iterator<T> it = this.topics.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            TopicModel topicModel = (TopicModel) obj;
            if (getMessagesController().isArchivedDialog(j)) {
                contains = topicModel.getFilterArchivedDialogs().contains(Long.valueOf(j));
                continue;
            } else {
                contains = topicModel.getFilterDialogs().contains(Long.valueOf(j));
                continue;
            }
            if (contains) {
                break;
            }
        }
        return (TopicModel) obj;
    }

    public final List<TopicModel> getAlertTopics() {
        List sortedWith;
        int collectionSizeOrDefault;
        List<TopicModel> plus;
        Object obj;
        boolean z;
        Collection<TopicModel> values = this.topics.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : values) {
            if (((TopicModel) obj2).isUserTopic()) {
                arrayList.add(obj2);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.fork.controller.ForkTopicsController$getAlertTopics$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((TopicModel) t).getOrder()), Integer.valueOf(((TopicModel) t2).getOrder()));
                return compareValues;
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : values) {
            if (true ^ ((TopicModel) obj3).isUserTopic()) {
                arrayList2.add(obj3);
            }
        }
        List<Topic> autoTopics = Topic.Companion.autoTopics();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(autoTopics, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (Topic topic : autoTopics) {
            Iterator it = arrayList2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((TopicModel) obj).getIcon() == topic) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    break;
                }
            }
            TopicModel topicModel = (TopicModel) obj;
            if (topicModel == null) {
                topicModel = createNewTopic$default(this, topic, -1L, 0, 4, null);
            }
            arrayList3.add(topicModel);
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) sortedWith, (Iterable) arrayList3);
        return plus;
    }

    public final void selectTopic(boolean z, long j) {
        if (z) {
            if (j == this.selectedArchiveTopicId) {
                return;
            }
            this.selectedArchiveTopicId = j;
        } else if (j == this.selectedMainTopicId) {
            return;
        } else {
            this.selectedMainTopicId = j;
        }
        getMessagesController().sortDialogs(null);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fa, code lost:
        if (r0 == null) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateCatalog(com.iMe.fork.utils.Callbacks$Callback1<java.lang.Boolean> r17) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.controller.ForkTopicsController.updateCatalog(com.iMe.fork.utils.Callbacks$Callback1):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateCatalog$lambda$29(ForkTopicsController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.topicsDidLoad, new Object[0]);
    }

    public final long getSelectedTopicId(boolean z) {
        return z ? this.selectedArchiveTopicId : this.selectedMainTopicId;
    }

    public final boolean hasSelectedTopic(boolean z) {
        return getSelectedTopicId(z) != -1;
    }

    public final long calcNextId() {
        Object obj;
        Iterator<T> it = this.topics.values().iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long topicId = ((TopicModel) next).getTopicId();
                do {
                    Object next2 = it.next();
                    long topicId2 = ((TopicModel) next2).getTopicId();
                    if (topicId < topicId2) {
                        next = next2;
                        topicId = topicId2;
                    }
                } while (it.hasNext());
                obj = next;
            } else {
                obj = next;
            }
        } else {
            obj = null;
        }
        TopicModel topicModel = (TopicModel) obj;
        if (topicModel != null) {
            return topicModel.getTopicId() + 1;
        }
        return 0L;
    }

    public final int calcNextOrder() {
        Object obj;
        Iterator<T> it = this.topics.values().iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                int order = ((TopicModel) next).getOrder();
                do {
                    Object next2 = it.next();
                    int order2 = ((TopicModel) next2).getOrder();
                    if (order < order2) {
                        next = next2;
                        order = order2;
                    }
                } while (it.hasNext());
                obj = next;
            } else {
                obj = next;
            }
        } else {
            obj = null;
        }
        TopicModel topicModel = (TopicModel) obj;
        if (topicModel != null) {
            return topicModel.getOrder() + 1;
        }
        return 0;
    }

    public final List<TopicBackup> getTopicsBackupData() {
        int collectionSizeOrDefault;
        List<TopicBackup> mutableList;
        Collection<TopicModel> values = this.topics.values();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(values, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TopicModel topicModel : values) {
            arrayList.add(BackupMappingKt.mapToBackup(topicModel));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    public final TopicModel getTopic(long j) {
        return this.topics.get(Long.valueOf(j));
    }

    public static /* synthetic */ TopicModel createNewTopic$default(ForkTopicsController forkTopicsController, Topic topic, long j, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j = forkTopicsController.calcNextId();
        }
        if ((i2 & 4) != 0) {
            i = forkTopicsController.calcNextOrder();
        }
        return forkTopicsController.createNewTopic(topic, j, i);
    }

    public final TopicModel createNewTopic(Topic topic, long j, int i) {
        return new TopicModel(j, null, topic, i, false, new LinkedHashSet(), new LinkedHashSet(), new LinkedHashSet(), null, 256, null);
    }

    public final void cleanup() {
        this.lastTopicsCount = 0;
        this.selectedMainTopicId = -1L;
        this.selectedArchiveTopicId = -1L;
    }

    private final void putTopic(TopicModel topicModel) {
        this.topics.put(Long.valueOf(topicModel.getTopicId()), topicModel);
    }

    private final void removeTopicDialog(TopicModel topicModel, long j) {
        if (topicModel == null) {
            return;
        }
        topicModel.getPresets().remove(Long.valueOf(j));
        topicModel.getDialogs().remove(Long.valueOf(j));
        saveTopic(topicModel);
    }

    private final void saveTopic(final TopicModel topicModel) {
        List<TopicModel> listOf;
        boolean z = topicModel.getDialogs().isEmpty() && topicModel.getPresets().isEmpty();
        if (z) {
            this.topics.remove(Long.valueOf(topicModel.getTopicId()));
        }
        filterTopics();
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.ForkTopicsController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ForkTopicsController.saveTopic$lambda$33(ForkTopicsController.this, topicModel);
                }
            });
            return;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(topicModel);
        insertTopics(listOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveTopic$lambda$33(ForkTopicsController this$0, TopicModel topic) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(topic, "$topic");
        this$0.getDao().removeTopic(this$0.getUserConfig().clientUserId, topic.getTopicId());
    }

    private final void insertTopics(final List<TopicModel> list) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.ForkTopicsController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ForkTopicsController.insertTopics$lambda$36(ForkTopicsController.this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void insertTopics$lambda$36(ForkTopicsController this$0, List topics) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(topics, "$topics");
        TopicsDao dao = this$0.getDao();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(topics, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = topics.iterator();
        while (it.hasNext()) {
            arrayList.add(TopicMappingKt.mapToDb((TopicModel) it.next(), this$0.getUserConfig().clientUserId));
        }
        dao.insert((List) arrayList);
    }

    /* compiled from: ForkTopicsController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ForkTopicsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (ForkTopicsController) tmp0.invoke(obj);
        }

        public final ForkTopicsController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = ForkTopicsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, ForkTopicsController> function1 = new Function1<Integer, ForkTopicsController>() { // from class: com.iMe.fork.controller.ForkTopicsController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ForkTopicsController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ForkTopicsController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.ForkTopicsController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    ForkTopicsController instance$lambda$0;
                    instance$lambda$0 = ForkTopicsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (ForkTopicsController) computeIfAbsent;
        }
    }

    private final void setTopics(List<TopicDb> list) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        java.util.Map<Long, TopicModel> mutableMap;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (TopicDb topicDb : list) {
            Pair m144to = TuplesKt.m144to(Long.valueOf(topicDb.getTopicId()), TopicMappingKt.mapToDomain(topicDb));
            linkedHashMap.put(m144to.getFirst(), m144to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.topics = mutableMap;
        filterTopics();
    }
}
