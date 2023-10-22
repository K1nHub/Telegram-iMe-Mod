package com.iMe.fork.controller;

import android.content.SharedPreferences;
import androidx.collection.LongSparseArray;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.TemplatesController;
import com.iMe.fork.enums.TemplatesSortingType;
import com.iMe.fork.models.backup.Backup;
import com.iMe.storage.data.locale.p026db.dao.main.TemplatesDao;
import com.iMe.storage.data.locale.p026db.model.templates.TemplatesDb;
import com.iMe.storage.data.mapper.template.TemplateMappingKt;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.templates.TemplateModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
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
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$TL_channels_getMessages;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messageEmpty;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$messages_Messages;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: TemplatesController.kt */
/* loaded from: classes3.dex */
public final class TemplatesController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, TemplatesController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy dao$delegate;
    private Map<Long, TemplateModel> templates;
    private long templatesChannelId;

    /* compiled from: TemplatesController.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TemplatesSortingType.values().length];
            try {
                iArr[TemplatesSortingType.DATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TemplatesSortingType.NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TemplatesController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public TemplatesController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TemplatesDao>() { // from class: com.iMe.fork.controller.TemplatesController$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.data.locale.db.dao.main.TemplatesDao, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TemplatesDao invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TemplatesDao.class), qualifier, function0);
            }
        });
        this.dao$delegate = lazy;
        this.templatesChannelId = TelegramPreferenceKeys.User.Default.templatesChannelId();
        this.templates = new LinkedHashMap();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final TemplatesDao getDao() {
        return (TemplatesDao) this.dao$delegate.getValue();
    }

    public final long getTemplatesChannelId() {
        return this.templatesChannelId;
    }

    public final void setTemplatesChannelId(long j) {
        this.templatesChannelId = j;
    }

    public final Map<Long, TemplateModel> getTemplates() {
        return this.templates;
    }

    public final void loadTemplates() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<Long, TemplateModel> mutableMap;
        List<TemplatesDb> allTemplatesForUser = getDao().getAllTemplatesForUser(getUserConfig().clientUserId);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allTemplatesForUser, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (TemplatesDb templatesDb : allTemplatesForUser) {
            Pair m144to = TuplesKt.m144to(Long.valueOf(templatesDb.getMessageId()), TemplateMappingKt.mapToDomain(templatesDb));
            linkedHashMap.put(m144to.getFirst(), m144to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.templates = mutableMap;
    }

    public final void restoreBackup(final Backup backup) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.getTemplatesChannelId() != null && checkValidTemplatesChat(backup.getTemplatesChannelId().longValue())) {
            this.templatesChannelId = backup.getTemplatesChannelId().longValue();
            if (backup.getTemplates() != null && (!backup.getTemplates().isEmpty())) {
                this.templates.clear();
                TLRPC$TL_channels_getMessages tLRPC$TL_channels_getMessages = new TLRPC$TL_channels_getMessages();
                tLRPC$TL_channels_getMessages.channel = getMessagesController().getInputChannel(this.templatesChannelId);
                ArrayList<Integer> arrayList = tLRPC$TL_channels_getMessages.f1644id;
                List<TemplateModel> templates = backup.getTemplates();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(templates, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                for (TemplateModel templateModel : templates) {
                    arrayList2.add(Integer.valueOf((int) templateModel.getMessageId()));
                }
                arrayList.addAll(arrayList2);
                getConnectionsManager().sendRequest(tLRPC$TL_channels_getMessages, new RequestDelegate() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda14
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        TemplatesController.restoreBackup$lambda$8(Backup.this, this, tLObject, tLRPC$TL_error);
                    }
                });
            }
        }
        saveConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restoreBackup$lambda$8(Backup backup, final TemplatesController this$0, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        int collectionSizeOrDefault;
        Sequence asSequence;
        Sequence filterNot;
        Sequence map;
        Intrinsics.checkNotNullParameter(backup, "$backup");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArrayList arrayList = new ArrayList();
        if (tLRPC$TL_error == null && (tLObject instanceof TLRPC$messages_Messages)) {
            LongSparseArray longSparseArray = new LongSparseArray();
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            ArrayList<TLRPC$User> arrayList2 = tLRPC$messages_Messages.users;
            Intrinsics.checkNotNullExpressionValue(arrayList2, "response.users");
            for (TLRPC$User tLRPC$User : arrayList2) {
                longSparseArray.put(tLRPC$User.f1762id, tLRPC$User);
            }
            LongSparseArray longSparseArray2 = new LongSparseArray();
            ArrayList<TLRPC$Chat> arrayList3 = tLRPC$messages_Messages.chats;
            Intrinsics.checkNotNullExpressionValue(arrayList3, "response.chats");
            for (TLRPC$Chat tLRPC$Chat : arrayList3) {
                longSparseArray2.put(tLRPC$Chat.f1600id, tLRPC$Chat);
            }
            ArrayList<TLRPC$Message> arrayList4 = tLRPC$messages_Messages.messages;
            Intrinsics.checkNotNullExpressionValue(arrayList4, "response.messages");
            asSequence = CollectionsKt___CollectionsKt.asSequence(arrayList4);
            filterNot = SequencesKt___SequencesKt.filterNot(asSequence, new Function1<TLRPC$Message, Boolean>() { // from class: com.iMe.fork.controller.TemplatesController$restoreBackup$1$3
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(TLRPC$Message tLRPC$Message) {
                    return Boolean.valueOf(tLRPC$Message instanceof TLRPC$TL_messageEmpty);
                }
            });
            map = SequencesKt___SequencesKt.map(filterNot, new Function1<TLRPC$Message, Integer>() { // from class: com.iMe.fork.controller.TemplatesController$restoreBackup$1$4
                @Override // kotlin.jvm.functions.Function1
                public final Integer invoke(TLRPC$Message tLRPC$Message) {
                    return Integer.valueOf(tLRPC$Message.f1624id);
                }
            });
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, map);
        }
        List<TemplateModel> templates = backup.getTemplates();
        ArrayList<TemplateModel> arrayList5 = new ArrayList();
        for (Object obj : templates) {
            if (arrayList.contains(Integer.valueOf((int) ((TemplateModel) obj).getMessageId()))) {
                arrayList5.add(obj);
            }
        }
        Map<Long, TemplateModel> map2 = this$0.templates;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList5, 10);
        ArrayList arrayList6 = new ArrayList(collectionSizeOrDefault);
        for (TemplateModel templateModel : arrayList5) {
            arrayList6.add(TuplesKt.m144to(Long.valueOf(templateModel.getMessageId()), templateModel));
        }
        MapsKt__MapsKt.putAll(map2, arrayList6);
        this$0.getDao().restoreBackup(this$0.getUserConfig().clientUserId, arrayList5);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.restoreBackup$lambda$8$lambda$7(TemplatesController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restoreBackup$lambda$8$lambda$7(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    public final boolean checkValidTemplatesChat(long j) {
        TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(j));
        return (chat == null || ChatObject.isNotInChat(chat) || !ChatObject.canWriteToChat(chat)) ? false : true;
    }

    public final List<TemplateModel> getTemplatesBackupData() {
        List<TemplateModel> mutableList;
        Collection<TemplateModel> values = this.templates.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            if (((TemplateModel) obj).getSent()) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    public final List<TemplateModel> getTemplatesList() {
        List<TemplateModel> mutableList;
        List<TemplateModel> templatesBackupData = getTemplatesBackupData();
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : templatesBackupData) {
            Long valueOf = Long.valueOf(((TemplateModel) obj).getGroupId());
            if (Intrinsics.areEqual((Object) valueOf, (Object) 0L) || hashSet.add(valueOf)) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        TemplatesSortingType templatesSortingType = SharedConfig.selectedTemplatesSortingType;
        int i = templatesSortingType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[templatesSortingType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                if (mutableList.size() > 1) {
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.iMe.fork.controller.TemplatesController$getTemplatesList$$inlined$sortBy$2
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            int compareValues;
                            String name = ((TemplateModel) t).getName();
                            Locale locale = Locale.ROOT;
                            String lowerCase = name.toLowerCase(locale);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                            String lowerCase2 = ((TemplateModel) t2).getName().toLowerCase(locale);
                            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                            compareValues = ComparisonsKt__ComparisonsKt.compareValues(lowerCase, lowerCase2);
                            return compareValues;
                        }
                    });
                }
            } else if (mutableList.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.iMe.fork.controller.TemplatesController$getTemplatesList$$inlined$sortByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((TemplateModel) t2).getUsageRating()), Integer.valueOf(((TemplateModel) t).getUsageRating()));
                        return compareValues;
                    }
                });
            }
        } else if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.iMe.fork.controller.TemplatesController$getTemplatesList$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((TemplateModel) t).getCreationDate()), Long.valueOf(((TemplateModel) t2).getCreationDate()));
                    return compareValues;
                }
            });
        }
        return mutableList;
    }

    public final void addTemplate(long j, long j2, String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final TemplatesDb templatesDb = new TemplatesDb(getUserConfig().clientUserId, j, j2, name, 0L, 0, false);
        this.templates.put(Long.valueOf(j), TemplateMappingKt.mapToDomain(templatesDb));
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.addTemplate$lambda$14(TemplatesController.this, templatesDb);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addTemplate$lambda$14(TemplatesController this$0, TemplatesDb template) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(template, "$template");
        this$0.getDao().insert((TemplatesDao) template);
    }

    public final void markAsSent(final long j, long j2) {
        TemplateModel templateModel = this.templates.get(Long.valueOf(j));
        if (templateModel == null) {
            return;
        }
        final TemplateModel templateModel2 = new TemplateModel(j2, templateModel.getGroupId(), templateModel.getName(), DateExtKt.now(), 0, true);
        this.templates.put(Long.valueOf(j2), templateModel2);
        this.templates.remove(Long.valueOf(j));
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.markAsSent$lambda$15(TemplatesController.this, templateModel2, j);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.markAsSent$lambda$16(TemplatesController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void markAsSent$lambda$15(TemplatesController this$0, TemplateModel newTemplate, long j) {
        List<Long> listOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newTemplate, "$newTemplate");
        this$0.getDao().insert((TemplatesDao) TemplateMappingKt.mapToDb(newTemplate, this$0.getUserConfig().clientUserId));
        TemplatesDao dao = this$0.getDao();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(j));
        dao.removeTemplates(listOf, this$0.getUserConfig().clientUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void markAsSent$lambda$16(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void convertToTemplate$lambda$20(TemplatesController this$0, List newTemplates) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newTemplates, "$newTemplates");
        TemplatesDao dao = this$0.getDao();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(newTemplates, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = newTemplates.iterator();
        while (it.hasNext()) {
            arrayList.add(TemplateMappingKt.mapToDb((TemplateModel) it.next(), this$0.getUserConfig().clientUserId));
        }
        dao.insert((List) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void convertToTemplate$lambda$21(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    public final void renameTemplate(List<Integer> messageIds, String newName) {
        TemplateModel copy;
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        Intrinsics.checkNotNullParameter(newName, "newName");
        final ArrayList arrayList = new ArrayList();
        for (Number number : messageIds) {
            long intValue = number.intValue();
            TemplateModel templateModel = this.templates.get(Long.valueOf(intValue));
            if (templateModel != null) {
                copy = templateModel.copy((r20 & 1) != 0 ? templateModel.messageId : 0L, (r20 & 2) != 0 ? templateModel.groupId : 0L, (r20 & 4) != 0 ? templateModel.name : newName, (r20 & 8) != 0 ? templateModel.creationDate : 0L, (r20 & 16) != 0 ? templateModel.usageRating : 0, (r20 & 32) != 0 ? templateModel.sent : false);
                this.templates.put(Long.valueOf(intValue), copy);
                arrayList.add(copy);
            }
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.renameTemplate$lambda$24(TemplatesController.this, arrayList);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.renameTemplate$lambda$25(TemplatesController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renameTemplate$lambda$24(TemplatesController this$0, List newTemplates) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newTemplates, "$newTemplates");
        TemplatesDao dao = this$0.getDao();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(newTemplates, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = newTemplates.iterator();
        while (it.hasNext()) {
            arrayList.add(TemplateMappingKt.mapToDb((TemplateModel) it.next(), this$0.getUserConfig().clientUserId));
        }
        dao.insert((List) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renameTemplate$lambda$25(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    public final void incrementUsageRating(List<? extends MessageObject> messages) {
        TemplateModel copy;
        Intrinsics.checkNotNullParameter(messages, "messages");
        final ArrayList arrayList = new ArrayList();
        for (MessageObject messageObject : messages) {
            TemplateModel templateModel = this.templates.get(Long.valueOf(messageObject.getId()));
            if (templateModel != null) {
                copy = templateModel.copy((r20 & 1) != 0 ? templateModel.messageId : 0L, (r20 & 2) != 0 ? templateModel.groupId : 0L, (r20 & 4) != 0 ? templateModel.name : null, (r20 & 8) != 0 ? templateModel.creationDate : 0L, (r20 & 16) != 0 ? templateModel.usageRating : templateModel.getUsageRating() + 1, (r20 & 32) != 0 ? templateModel.sent : false);
                this.templates.put(Long.valueOf(messageObject.getId()), copy);
                arrayList.add(copy);
            }
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.incrementUsageRating$lambda$28(TemplatesController.this, arrayList);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.incrementUsageRating$lambda$29(TemplatesController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void incrementUsageRating$lambda$28(TemplatesController this$0, List newTemplates) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newTemplates, "$newTemplates");
        TemplatesDao dao = this$0.getDao();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(newTemplates, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = newTemplates.iterator();
        while (it.hasNext()) {
            arrayList.add(TemplateMappingKt.mapToDb((TemplateModel) it.next(), this$0.getUserConfig().clientUserId));
        }
        dao.insert((List) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void incrementUsageRating$lambda$29(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    public final void clearAllTemplates() {
        this.templates.clear();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.clearAllTemplates$lambda$30(TemplatesController.this);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.clearAllTemplates$lambda$31(TemplatesController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearAllTemplates$lambda$30(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().clearAllTemplates(this$0.getUserConfig().clientUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearAllTemplates$lambda$31(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeTemplates$lambda$33(TemplatesController this$0, List messageIds) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageIds, "$messageIds");
        this$0.getDao().removeTemplates(messageIds, this$0.getUserConfig().clientUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeTemplates$lambda$34(TemplatesController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.templatesDidChanged, new Object[0]);
    }

    public final List<Integer> getTemplateMessageIds(int i) {
        int collectionSizeOrDefault;
        List<Integer> listOf;
        List<Integer> emptyList;
        TemplateModel templateModel = this.templates.get(Long.valueOf(i));
        if (templateModel == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (templateModel.getGroupId() == 0) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(i));
            return listOf;
        } else {
            Collection<TemplateModel> values = this.templates.values();
            ArrayList<TemplateModel> arrayList = new ArrayList();
            for (Object obj : values) {
                if (((TemplateModel) obj).getGroupId() == templateModel.getGroupId()) {
                    arrayList.add(obj);
                }
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (TemplateModel templateModel2 : arrayList) {
                arrayList2.add(Integer.valueOf((int) templateModel2.getMessageId()));
            }
            return arrayList2;
        }
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.templatesChannelId = preferences.getLong(TelegramPreferenceKeys.User.templatesChannelId(), TelegramPreferenceKeys.User.Default.templatesChannelId());
    }

    public final void saveConfig() {
        getUserConfig().getPreferencesPublic().edit().putLong(TelegramPreferenceKeys.User.templatesChannelId(), this.templatesChannelId).apply();
    }

    /* compiled from: TemplatesController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final TemplatesController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (TemplatesController) tmp0.invoke(obj);
        }

        public final TemplatesController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = TemplatesController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, TemplatesController> function1 = new Function1<Integer, TemplatesController>() { // from class: com.iMe.fork.controller.TemplatesController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final TemplatesController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new TemplatesController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.TemplatesController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    TemplatesController instance$lambda$0;
                    instance$lambda$0 = TemplatesController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (TemplatesController) computeIfAbsent;
        }
    }

    public final void convertToTemplate(List<Integer> messageIds, long j, String name) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        Intrinsics.checkNotNullParameter(name, "name");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(messageIds, 10);
        final ArrayList<TemplateModel> arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : messageIds) {
            arrayList.add(new TemplateModel(number.intValue(), j, name, DateExtKt.now(), 0, true));
        }
        Map<Long, TemplateModel> map = this.templates;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (TemplateModel templateModel : arrayList) {
            arrayList2.add(TuplesKt.m144to(Long.valueOf(templateModel.getMessageId()), templateModel));
        }
        MapsKt__MapsKt.putAll(map, arrayList2);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.convertToTemplate$lambda$20(TemplatesController.this, arrayList);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.convertToTemplate$lambda$21(TemplatesController.this);
            }
        });
    }

    public final void removeTemplates(final List<Long> messageIds) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        for (Number number : messageIds) {
            this.templates.remove(Long.valueOf(number.longValue()));
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.removeTemplates$lambda$33(TemplatesController.this, messageIds);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.TemplatesController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                TemplatesController.removeTemplates$lambda$34(TemplatesController.this);
            }
        });
    }
}
