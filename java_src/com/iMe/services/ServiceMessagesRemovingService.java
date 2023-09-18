package com.iMe.services;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.iMe.common.IdFabric$ServiceNotifications;
import com.iMe.fork.enums.ServiceMessageType;
import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.services.receivers.StopServiceMessagesRemovingReceiver;
import com.iMe.services.utils.ServiceNotificationsUtils;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$TL_messageActionChannelCreate;
import org.telegram.tgnet.TLRPC$TL_messageActionChannelMigrateFrom;
import org.telegram.tgnet.TLRPC$TL_messageActionTopicCreate;
/* compiled from: ServiceMessagesRemovingService.kt */
/* loaded from: classes4.dex */
public final class ServiceMessagesRemovingService extends Service implements NotificationCenter.NotificationCenterDelegate {
    private AccountInstance accountInstance;
    private NotificationCompat.Builder builder;
    private long chatId;
    private int classGuid;
    private int deletedMessagesCount;
    private boolean isDeleteAllSelected;
    private boolean isGroup;
    private boolean isLoadingMessages;
    private long migratedChatId;
    private int migratedChatMaxMessageId;
    private int minDate;
    private List<? extends Class<? extends TLRPC$MessageAction>> removingServiceMessagesTypes;
    private int serviceMessagesCount;
    private Map<Long, List<Integer>> serviceMessagesIdsByChatsIds;
    private int startLoadFromMessageId;
    private int topicId;
    private boolean useMigratedChatId;
    private final List<MessageObject> messages = new ArrayList();
    private final int notificationChannelId = IdFabric$ServiceNotifications.SERVICE_MESSAGES_REMOVING;
    private final int[] notifications = {NotificationCenter.messagesDidLoad, NotificationCenter.messagesDeleted, NotificationCenter.loadingMessagesFailed, NotificationCenter.didUpdateConnectionState};
    private List<Integer> deletingServiceMessagesIds = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ServiceMessagesRemovingService.kt */
    /* loaded from: classes4.dex */
    public enum State {
        LOADING,
        DELETING,
        WAITING_FOR_NETWORK
    }

    /* compiled from: ServiceMessagesRemovingService.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.DELETING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent arg2) {
        Intrinsics.checkNotNullParameter(arg2, "arg2");
        return null;
    }

    public ServiceMessagesRemovingService() {
        List<? extends Class<? extends TLRPC$MessageAction>> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.removingServiceMessagesTypes = emptyList;
        this.serviceMessagesIdsByChatsIds = new LinkedHashMap();
        this.isLoadingMessages = true;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.classGuid = ConnectionsManager.generateClassGuid();
        AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
        Intrinsics.checkNotNullExpressionValue(accountInstance, "getInstance(UserConfig.selectedAccount)");
        this.accountInstance = accountInstance;
        if (accountInstance == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
            accountInstance = null;
        }
        accountInstance.getNotificationCenter().addObservers(this, this.notifications);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.messagesDidLoad) {
            Object obj = args[10];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) obj).intValue();
            if (this.isLoadingMessages && intValue == this.classGuid) {
                Object obj2 = args[2];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.List<*>");
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : (List) obj2) {
                    if (obj3 instanceof MessageObject) {
                        arrayList.add(obj3);
                    }
                }
                onNewMessagesPartLoaded(arrayList);
            }
        } else if (i == NotificationCenter.messagesDeleted) {
            Object obj4 = args[0];
            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.collections.List<*>");
            ArrayList arrayList2 = new ArrayList();
            for (Object obj5 : (List) obj4) {
                if (obj5 instanceof Integer) {
                    arrayList2.add(obj5);
                }
            }
            Object obj6 = args[1];
            Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type kotlin.Long");
            long longValue = ((Long) obj6).longValue();
            if (this.isLoadingMessages) {
                return;
            }
            if ((longValue == this.chatId || longValue == this.migratedChatId || longValue == 0) && Intrinsics.areEqual(this.deletingServiceMessagesIds, arrayList2)) {
                deleteNextServiceMessagesPart();
            }
        } else if (i == NotificationCenter.loadingMessagesFailed) {
            Object obj7 = args[0];
            Intrinsics.checkNotNull(obj7, "null cannot be cast to non-null type kotlin.Int");
            int intValue2 = ((Integer) obj7).intValue();
            if (this.isLoadingMessages && intValue2 == this.classGuid) {
                stopServiceWithToast(C3473R.string.loading_messages_error);
            }
        } else if (i == NotificationCenter.didUpdateConnectionState) {
            onConnectionStateChanged();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        AccountInstance accountInstance = null;
        this.builder = null;
        stopForeground(true);
        NotificationManagerCompat.from(ApplicationLoader.applicationContext).cancel(this.notificationChannelId);
        AccountInstance accountInstance2 = this.accountInstance;
        if (accountInstance2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
        } else {
            accountInstance = accountInstance2;
        }
        accountInstance.getNotificationCenter().removeObservers(this, this.notifications);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        resolveIntentExtras(intent);
        buildNotification();
        loadMessages();
        updateNotification(false, State.LOADING);
        int i3 = this.notificationChannelId;
        NotificationCompat.Builder builder = this.builder;
        Intrinsics.checkNotNull(builder);
        startForeground(i3, builder.build());
        return 2;
    }

    private final void resolveIntentExtras(Intent intent) {
        int collectionSizeOrDefault;
        this.migratedChatId = intent.getLongExtra("migrated_chat_id", -1L);
        this.chatId = intent.getLongExtra("chat_id", -1L);
        this.topicId = intent.getIntExtra("topic_id", 0);
        this.migratedChatMaxMessageId = intent.getIntExtra("migrated_chat_max_message_id", -1);
        this.isGroup = intent.getBooleanExtra("is_group", false);
        this.minDate = intent.getIntExtra("min_date", -1);
        boolean booleanExtra = intent.getBooleanExtra("is_channel", false);
        List<Integer> integerArrayListExtra = intent.getIntegerArrayListExtra("selected_filters_codes");
        if (integerArrayListExtra == null) {
            integerArrayListExtra = CollectionsKt__CollectionsKt.emptyList();
        }
        if (Intrinsics.areEqual(CollectionsKt.firstOrNull(integerArrayListExtra), ServiceMessageType.ALL.getGroupCode())) {
            this.isDeleteAllSelected = true;
            return;
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(integerArrayListExtra, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Integer it : integerArrayListExtra) {
            ServiceMessageType.Companion companion = ServiceMessageType.Companion;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(companion.getByCode(it.intValue(), booleanExtra).getAction());
        }
        this.removingServiceMessagesTypes = arrayList;
    }

    private final void buildNotification() {
        if (this.builder == null) {
            this.builder = ServiceNotificationsUtils.INSTANCE.createCancellableNotification("iMe_ServiceMessagesRemovingChannel", C3473R.C3475drawable.msg_delete_filled, StopServiceMessagesRemovingReceiver.class);
        }
    }

    private final void onNewMessagesPartLoaded(List<? extends MessageObject> list) {
        List<MessageObject> takeLast;
        boolean z;
        if (list.isEmpty()) {
            onAllMessagesLoaded();
            return;
        }
        boolean z2 = false;
        if (((MessageObject) CollectionsKt.last(list)).messageOwner.date < this.minDate) {
            List<MessageObject> list2 = this.messages;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((MessageObject) obj).messageOwner.date > this.minDate) {
                    arrayList.add(obj);
                }
            }
            CollectionsKt__MutableCollectionsKt.addAll(list2, arrayList);
            onAllMessagesLoaded();
            return;
        }
        CollectionsKt__MutableCollectionsKt.addAll(this.messages, list);
        this.startLoadFromMessageId = ((MessageObject) CollectionsKt.last(list)).messageOwner.f1546id;
        if (list.size() == 1) {
            TLRPC$Message tLRPC$Message = ((MessageObject) CollectionsKt.first((List<? extends Object>) list)).messageOwner;
            TLRPC$MessageAction tLRPC$MessageAction = tLRPC$Message.action;
            if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionChannelMigrateFrom) {
                this.useMigratedChatId = true;
                this.startLoadFromMessageId = this.migratedChatMaxMessageId;
            } else if ((tLRPC$MessageAction instanceof TLRPC$TL_messageActionChannelCreate) && !this.isGroup) {
                onAllMessagesLoaded();
            }
            if (this.messages.size() >= 3) {
                takeLast = CollectionsKt___CollectionsKt.takeLast(this.messages, 3);
                if (!(takeLast instanceof Collection) || !takeLast.isEmpty()) {
                    for (MessageObject messageObject : takeLast) {
                        if (messageObject.messageOwner.f1546id == tLRPC$Message.f1546id) {
                            z = true;
                            continue;
                        } else {
                            z = false;
                            continue;
                        }
                        if (!z) {
                            break;
                        }
                    }
                }
                z2 = true;
                if (z2) {
                    onAllMessagesLoaded();
                }
            }
        }
        updateNotification(true, State.LOADING);
        loadMessages();
    }

    private final void loadMessages() {
        long j;
        if (this.useMigratedChatId) {
            j = this.migratedChatId;
        } else {
            j = this.chatId;
        }
        final long j2 = -j;
        runWithDelay(new Runnable() { // from class: com.iMe.services.ServiceMessagesRemovingService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ServiceMessagesRemovingService.loadMessages$lambda$3(ServiceMessagesRemovingService.this, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadMessages$lambda$3(ServiceMessagesRemovingService this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AccountInstance accountInstance = this$0.accountInstance;
        if (accountInstance == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
            accountInstance = null;
        }
        MessagesController messagesController = accountInstance.getMessagesController();
        int i = this$0.startLoadFromMessageId;
        int i2 = this$0.classGuid;
        int i3 = this$0.topicId;
        messagesController.loadMessages(j, 0L, true, 100, i, 0, false, 0, i2, 0, 0, 0, i3, 0, 0, i3 != 0);
    }

    private final void onAllMessagesLoaded() {
        int mapCapacity;
        Map<Long, List<Integer>> mutableMap;
        List distinct;
        boolean z = false;
        this.isLoadingMessages = false;
        List<MessageObject> list = this.messages;
        ArrayList<MessageObject> arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z2 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            TLRPC$MessageAction tLRPC$MessageAction = ((MessageObject) next).messageOwner.action;
            if (tLRPC$MessageAction == null || ((this.topicId != 0 && (tLRPC$MessageAction instanceof TLRPC$TL_messageActionTopicCreate)) || (!this.isDeleteAllSelected && !this.removingServiceMessagesTypes.contains(tLRPC$MessageAction.getClass())))) {
                z2 = false;
            }
            if (z2) {
                arrayList.add(next);
            }
        }
        this.serviceMessagesCount = arrayList.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (MessageObject messageObject : arrayList) {
            Long valueOf = Long.valueOf(messageObject.getChatId());
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(valueOf, obj);
            }
            ((List) obj).add(Integer.valueOf(messageObject.messageOwner.f1546id));
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(linkedHashMap.size());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key = entry.getKey();
            distinct = CollectionsKt___CollectionsKt.distinct((Iterable) entry.getValue());
            linkedHashMap2.put(key, distinct);
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap2);
        this.serviceMessagesIdsByChatsIds = mutableMap;
        List<Integer> list2 = mutableMap.get(Long.valueOf(this.chatId));
        if (list2 == null || list2.isEmpty()) {
            List<Integer> list3 = this.serviceMessagesIdsByChatsIds.get(Long.valueOf(this.migratedChatId));
            if ((list3 == null || list3.isEmpty()) ? true : true) {
                stopServiceWithToast(C3473R.string.no_service_messages);
                return;
            }
        }
        deleteNextServiceMessagesPart();
    }

    private final void deleteNextServiceMessagesPart() {
        updateNotification(true, State.DELETING);
        if (deleteChatMessagesPartIfExist(this.chatId) && deleteChatMessagesPartIfExist(this.migratedChatId)) {
            stopServiceWithToast(C3473R.string.deleting_messages_success);
        }
    }

    private final boolean deleteChatMessagesPartIfExist(long j) {
        List<Integer> list = this.serviceMessagesIdsByChatsIds.get(Long.valueOf(j));
        if (list != null && (list.isEmpty() ^ true)) {
            this.useMigratedChatId = j == this.migratedChatId;
            int size = list.size();
            List<Integer> subList = list.subList(size - Math.min(size, 100), size);
            this.deletingServiceMessagesIds = subList;
            this.deletedMessagesCount += subList.size();
            deleteMessages();
            Map<Long, List<Integer>> map = this.serviceMessagesIdsByChatsIds;
            Long valueOf = Long.valueOf(j);
            List<Integer> list2 = this.serviceMessagesIdsByChatsIds.get(Long.valueOf(j));
            List<Integer> dropLast = list2 != null ? CollectionsKt___CollectionsKt.dropLast(list2, Math.min(size, 100)) : null;
            if (dropLast == null) {
                dropLast = CollectionsKt__CollectionsKt.emptyList();
            }
            map.put(valueOf, dropLast);
            return false;
        }
        return true;
    }

    private final void deleteMessages() {
        final long j;
        if (this.useMigratedChatId) {
            j = this.migratedChatId;
        } else {
            j = this.chatId;
        }
        runWithDelay(new Runnable() { // from class: com.iMe.services.ServiceMessagesRemovingService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ServiceMessagesRemovingService.deleteMessages$lambda$9(ServiceMessagesRemovingService.this, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteMessages$lambda$9(ServiceMessagesRemovingService this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AccountInstance accountInstance = this$0.accountInstance;
        if (accountInstance == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
            accountInstance = null;
        }
        accountInstance.getMessagesController().deleteMessages(CollectionsUtilsKt.toArrayList(this$0.deletingServiceMessagesIds), null, null, -j, true, false);
    }

    private final void onConnectionStateChanged() {
        AccountInstance accountInstance = this.accountInstance;
        if (accountInstance == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
            accountInstance = null;
        }
        if (accountInstance.getConnectionsManager().getConnectionState() == 2) {
            updateNotification(true, State.WAITING_FOR_NETWORK);
        }
    }

    private final void updateNotification(boolean z, State state) {
        String formatStringInternal;
        if (this.builder == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i == 1) {
            formatStringInternal = LocaleController.formatStringInternal(C3473R.string.loading_messages, Integer.valueOf(this.messages.size()));
        } else if (i == 2) {
            formatStringInternal = LocaleController.formatStringInternal(C3473R.string.deleting_messages, Integer.valueOf(this.deletedMessagesCount), Integer.valueOf(this.serviceMessagesCount));
        } else {
            formatStringInternal = LocaleController.getString("WaitingForNetwork", C3473R.string.WaitingForNetwork);
        }
        NotificationCompat.Builder builder = this.builder;
        if (builder != null) {
            builder.setTicker(formatStringInternal);
            builder.setContentText(formatStringInternal);
            if (z) {
                NotificationManagerCompat.from(ApplicationLoader.applicationContext).notify(this.notificationChannelId, builder.build());
            }
        }
    }

    private final void stopServiceWithToast(int i) {
        String internalString = LocaleController.getInternalString(i);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(res)");
        ContextExtKt.toast(internalString);
        stopSelf();
    }

    private final void runWithDelay(Runnable runnable) {
        AndroidUtilities.runOnUIThread(runnable, 1000L);
    }

    /* compiled from: ServiceMessagesRemovingService.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
