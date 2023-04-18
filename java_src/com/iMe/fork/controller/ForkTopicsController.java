package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.fork.enums.Interval;
import com.iMe.fork.models.backup.Backup;
import com.iMe.fork.models.backup.BackupMappingKt;
import com.iMe.fork.models.backup.TopicBackup;
import com.iMe.storage.data.locale.p027db.dao.main.TopicsDao;
import com.iMe.storage.data.locale.p027db.model.topics.TopicDb;
import com.iMe.storage.data.mapper.topics.TopicMappingKt;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.topics.TopicModel;
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
import java.util.concurrent.TimeUnit;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC$Dialog;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: ForkTopicsController.kt */
/* loaded from: classes3.dex */
public final class ForkTopicsController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, ForkTopicsController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy dao$delegate;
    private boolean isAutoUpdateTopicsCatalogEnabled;
    private boolean isNoTopicFirstEnabled;
    private boolean isTopicsBarAtBottomEnabled;
    private boolean isTopicsBarEnabled;
    private long lastAutoUpdateTopicsCatalogTime;
    private int lastTopicsCount;
    private long selectedArchiveTopicId;
    private Interval selectedAutoUpdateTopicsCatalogInterval;
    private long selectedMainTopicId;
    private Map<Long, TopicModel> topics;

    public static final ForkTopicsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public ForkTopicsController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new ForkTopicsController$special$$inlined$inject$default$1(this, null, null));
        this.dao$delegate = lazy;
        this.isTopicsBarEnabled = TelegramPreferenceKeys.User.Default.isTopicsBarEnabled();
        this.isTopicsBarAtBottomEnabled = TelegramPreferenceKeys.User.Default.isTopicsBarAtBottomEnabled();
        this.isAutoUpdateTopicsCatalogEnabled = TelegramPreferenceKeys.User.Default.isAutoUpdateTopicsCatalogEnabled();
        this.selectedAutoUpdateTopicsCatalogInterval = TelegramPreferenceKeys.User.Default.selectedAutoUpdateTopicsCatalogInterval();
        this.isNoTopicFirstEnabled = TelegramPreferenceKeys.User.Default.isNoTopicFirstEnabled();
        this.lastAutoUpdateTopicsCatalogTime = TelegramPreferenceKeys.User.Default.lastAutoUpdateTopicsCatalogTime();
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

    public final boolean isAutoUpdateTopicsCatalogEnabled() {
        return this.isAutoUpdateTopicsCatalogEnabled;
    }

    public final void setAutoUpdateTopicsCatalogEnabled(boolean z) {
        this.isAutoUpdateTopicsCatalogEnabled = z;
    }

    public final Interval getSelectedAutoUpdateTopicsCatalogInterval() {
        return this.selectedAutoUpdateTopicsCatalogInterval;
    }

    public final void setSelectedAutoUpdateTopicsCatalogInterval(Interval interval) {
        Intrinsics.checkNotNullParameter(interval, "<set-?>");
        this.selectedAutoUpdateTopicsCatalogInterval = interval;
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
        this.isAutoUpdateTopicsCatalogEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isAutoUpdateTopicsCatalogEnabled(), TelegramPreferenceKeys.User.Default.isAutoUpdateTopicsCatalogEnabled());
        this.selectedAutoUpdateTopicsCatalogInterval = Interval.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.User.selectedAutoUpdateTopicsCatalogInterval(), TelegramPreferenceKeys.User.Default.selectedAutoUpdateTopicsCatalogInterval().name()), TelegramPreferenceKeys.User.Default.selectedAutoUpdateTopicsCatalogInterval());
        this.isNoTopicFirstEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isNoTopicFirstEnabled(), TelegramPreferenceKeys.User.Default.isNoTopicFirstEnabled());
        this.lastAutoUpdateTopicsCatalogTime = preferences.getLong(TelegramPreferenceKeys.User.lastAutoUpdateTopicsCatalogTime(), TelegramPreferenceKeys.User.Default.lastAutoUpdateTopicsCatalogTime());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isTopicsBarEnabled(), this.isTopicsBarEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isTopicsBarAtBottomEnabled(), this.isTopicsBarAtBottomEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isAutoUpdateTopicsCatalogEnabled(), this.isAutoUpdateTopicsCatalogEnabled);
        edit.putString(TelegramPreferenceKeys.User.selectedAutoUpdateTopicsCatalogInterval(), this.selectedAutoUpdateTopicsCatalogInterval.name());
        edit.putBoolean(TelegramPreferenceKeys.User.isNoTopicFirstEnabled(), this.isNoTopicFirstEnabled);
        edit.putLong(TelegramPreferenceKeys.User.lastAutoUpdateTopicsCatalogTime(), this.lastAutoUpdateTopicsCatalogTime);
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
        if (backup.isAutoUpdateCatalogEnabled() != null) {
            this.isAutoUpdateTopicsCatalogEnabled = backup.isAutoUpdateCatalogEnabled().booleanValue();
        }
        if (backup.getSelectedAutoUpdateCatalogInterval() != null) {
            this.selectedAutoUpdateTopicsCatalogInterval = Interval.Companion.mapNameToEnum(backup.getSelectedAutoUpdateCatalogInterval(), TelegramPreferenceKeys.User.Default.selectedAutoUpdateTopicsCatalogInterval());
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

    public final void swapTopics(long j, long j2) {
        TopicModel topic;
        List<TopicModel> listOf;
        TopicModel topic2 = getTopic(j);
        if (topic2 == null || (topic = getTopic(j2)) == null) {
            return;
        }
        int order = topic2.getOrder();
        topic2.setOrder(topic.getOrder());
        topic.setOrder(order);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TopicModel[]{topic2, topic});
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
        Set<Number> plus;
        Collection<TopicModel> topicsList = getTopicsList();
        int size = topicsList.size();
        if (this.lastTopicsCount != size) {
            this.lastTopicsCount = size;
            z = true;
        } else {
            z = false;
        }
        for (TopicModel topicModel : topicsList) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            plus = SetsKt___SetsKt.plus((Set) topicModel.getPresets(), (Iterable) topicModel.getDialogs());
            for (Number number : plus) {
                long longValue = number.longValue();
                TLRPC$Dialog tLRPC$Dialog = getMessagesController().dialogs_dict.get(longValue);
                if (tLRPC$Dialog != null && !getHiddenChatsController().isChatHidden(tLRPC$Dialog.f1433id)) {
                    if (tLRPC$Dialog.folder_id == 0) {
                        arrayList.add(Long.valueOf(longValue));
                    } else {
                        arrayList2.add(Long.valueOf(longValue));
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.ForkTopicsController$$ExternalSyntheticLambda1
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
        this$0.getNotificationCenter().postNotificationName(NotificationCenter.topicsDidLoad, new Object[0]);
    }

    public final List<TopicModel> getTopicsNotEmpty(boolean z) {
        List<TopicModel> sortedWith;
        Collection<TopicModel> topicsList = getTopicsList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : topicsList) {
            TopicModel topicModel = (TopicModel) obj;
            boolean z2 = true;
            if (!z ? topicModel.getFilterDialogs().isEmpty() : topicModel.getFilterArchivedDialogs().isEmpty()) {
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.fork.controller.ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((TopicModel) t).getOrder()), Integer.valueOf(((TopicModel) t2).getOrder()));
                return compareValues;
            }
        });
        return sortedWith;
    }

    public final List<TopicModel> getAllTopicsNotEmpty() {
        List<TopicModel> sortedWith;
        Collection<TopicModel> topicsList = getTopicsList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : topicsList) {
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
        Iterator<T> it = getTopicsList().iterator();
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
        Collection<TopicModel> topicsList = getTopicsList();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : topicsList) {
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
        for (Object obj3 : topicsList) {
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
        getNotificationCenter().postNotificationName(NotificationCenter.dialogsNeedReload, new Object[0]);
    }

    public final long getSelectedTopicId(boolean z) {
        return z ? this.selectedArchiveTopicId : this.selectedMainTopicId;
    }

    public final boolean hasSelectedTopic(boolean z) {
        return getSelectedTopicId(z) != -1;
    }

    public final long calcNextId() {
        Object obj;
        Iterator<T> it = getTopicsList().iterator();
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
        Iterator<T> it = getTopicsList().iterator();
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
        Collection<TopicModel> topicsList = getTopicsList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(topicsList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TopicModel topicModel : topicsList) {
            arrayList.add(BackupMappingKt.mapToBackup(topicModel));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    public final Collection<TopicModel> getTopicsList() {
        return this.topics.values();
    }

    public final TopicModel getTopic(long j) {
        return this.topics.get(Long.valueOf(j));
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0103, code lost:
        if (r0 == null) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateCatalog(boolean r17, com.iMe.fork.utils.Callbacks$Callback1<java.lang.Boolean> r18) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.controller.ForkTopicsController.updateCatalog(boolean, com.iMe.fork.utils.Callbacks$Callback1):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateCatalog$lambda$32(ForkTopicsController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().postNotificationName(NotificationCenter.topicsDidLoad, new Object[0]);
    }

    public final void resetLastAutoUpdateCatalogTime() {
        this.lastAutoUpdateTopicsCatalogTime = DateExtKt.now();
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
        return new TopicModel(j, null, topic, i, new LinkedHashSet(), new LinkedHashSet(), new LinkedHashSet(), null, 128, null);
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
                ForkTopicsController.insertTopics$lambda$35(ForkTopicsController.this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void insertTopics$lambda$35(ForkTopicsController this$0, List topics) {
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

    private final boolean needSkipAutoUpdateCatalog() {
        return DateExtKt.now() - this.lastAutoUpdateTopicsCatalogTime < TimeUnit.DAYS.toMillis((long) this.selectedAutoUpdateTopicsCatalogInterval.getDays());
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

        public final ForkTopicsController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = ForkTopicsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final ForkTopicsController$Companion$getInstance$1 forkTopicsController$Companion$getInstance$1 = new ForkTopicsController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.ForkTopicsController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    ForkTopicsController instance$lambda$0;
                    instance$lambda$0 = ForkTopicsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…ontroller(accountIndex) }");
            return (ForkTopicsController) computeIfAbsent;
        }
    }

    public final void setTopics(List<TopicDb> newTopics) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<Long, TopicModel> mutableMap;
        Intrinsics.checkNotNullParameter(newTopics, "newTopics");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(newTopics, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (TopicDb topicDb : newTopics) {
            Pair m80to = TuplesKt.m80to(Long.valueOf(topicDb.getTopicId()), TopicMappingKt.mapToDomain(topicDb));
            linkedHashMap.put(m80to.getFirst(), m80to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.topics = mutableMap;
        filterTopics();
    }
}
