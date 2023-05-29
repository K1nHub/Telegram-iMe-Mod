package com.iMe.services;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.iMe.common.IdFabric$ServiceNotifications;
import com.iMe.fork.enums.ParticipantsActionType;
import com.iMe.model.group.GroupMembersFilter;
import com.iMe.services.receivers.StopFilteredChatParticipantsProcessingReceiver;
import com.iMe.services.utils.ServiceNotificationsUtils;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$ChannelParticipantsFilter;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipants;
import org.telegram.tgnet.TLRPC$TL_channels_getParticipants;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: FilteredChatParticipantsProcessingService.kt */
/* loaded from: classes3.dex */
public final class FilteredChatParticipantsProcessingService extends Service implements NotificationCenter.NotificationCenterDelegate {
    private NotificationCompat.Builder builder;
    private final Lazy chat$delegate;
    private final Lazy chatFull$delegate;
    private long chatId;
    private int classGuid;
    private ConnectionsManager connectionsManager;
    private boolean isWaitingForNetwork;
    private MessagesController messagesController;
    private NotificationCenter notificationCenter;
    private ParticipantsActionType participantsActionType;
    private GroupMembersFilter participantsFilter;
    private int processedParticipantsCount;
    private List<TLRPC$User> processingParticipants;
    private TLRPC$TL_channels_getParticipants req;
    private final List<TLRPC$User> participants = new ArrayList();
    private final int notificationChannelId = IdFabric$ServiceNotifications.CHAT_PARTICIPANTS_PROCESSING;
    private final int[] notifications = {NotificationCenter.didUpdateConnectionState};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FilteredChatParticipantsProcessingService.kt */
    /* loaded from: classes3.dex */
    public enum State {
        LOADING,
        DELETING,
        WAITING_FOR_NETWORK
    }

    /* compiled from: FilteredChatParticipantsProcessingService.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ParticipantsActionType.values().length];
            try {
                iArr[ParticipantsActionType.DELETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ParticipantsActionType.UNBLOCK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ParticipantsActionType.RETURN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[State.values().length];
            try {
                iArr2[State.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[State.DELETING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
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

    public FilteredChatParticipantsProcessingService() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new FilteredChatParticipantsProcessingService$chat$2(this));
        this.chat$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new FilteredChatParticipantsProcessingService$chatFull$2(this));
        this.chatFull$delegate = lazy2;
        this.participantsFilter = GroupMembersFilter.defaultValue;
        this.participantsActionType = ParticipantsActionType.defaultValue;
        this.processingParticipants = new ArrayList();
    }

    private final TLRPC$Chat getChat() {
        Object value = this.chat$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-chat>(...)");
        return (TLRPC$Chat) value;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.classGuid = ConnectionsManager.generateClassGuid();
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(UserConfig.selectedAccount);
        Intrinsics.checkNotNullExpressionValue(connectionsManager, "getInstance(UserConfig.selectedAccount)");
        this.connectionsManager = connectionsManager;
        MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
        Intrinsics.checkNotNullExpressionValue(messagesController, "getInstance(UserConfig.selectedAccount)");
        this.messagesController = messagesController;
        Intrinsics.checkNotNullExpressionValue(MessagesStorage.getInstance(UserConfig.selectedAccount), "getInstance(UserConfig.selectedAccount)");
        NotificationCenter notificationCenter = NotificationCenter.getInstance(UserConfig.selectedAccount);
        Intrinsics.checkNotNullExpressionValue(notificationCenter, "getInstance(UserConfig.selectedAccount)");
        this.notificationCenter = notificationCenter;
        if (notificationCenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notificationCenter");
            notificationCenter = null;
        }
        notificationCenter.addObservers(this, this.notifications);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.didUpdateConnectionState) {
            onConnectionStateChanged();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        NotificationCenter notificationCenter = null;
        this.builder = null;
        stopForeground(true);
        NotificationManagerCompat.from(ApplicationLoader.applicationContext).cancel(this.notificationChannelId);
        NotificationCenter notificationCenter2 = this.notificationCenter;
        if (notificationCenter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notificationCenter");
        } else {
            notificationCenter = notificationCenter2;
        }
        notificationCenter.removeObservers(this, this.notifications);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        resolveIntentExtras(intent);
        buildNotification();
        loadParticipants();
        updateNotification(false, State.LOADING);
        int i3 = this.notificationChannelId;
        NotificationCompat.Builder builder = this.builder;
        Intrinsics.checkNotNull(builder);
        startForeground(i3, builder.build());
        return 2;
    }

    private final void resolveIntentExtras(Intent intent) {
        ParticipantsActionType valueOf;
        this.chatId = intent.getLongExtra("chat_id", -1L);
        String stringExtra = intent.getStringExtra("selected_filter_name");
        if (stringExtra == null) {
            stringExtra = GroupMembersFilter.defaultValue.name();
        }
        Intrinsics.checkNotNullExpressionValue(stringExtra, "intent.getStringExtra(EX…sFilter.defaultValue.name");
        GroupMembersFilter valueOf2 = GroupMembersFilter.valueOf(stringExtra);
        this.participantsFilter = valueOf2;
        if (valueOf2 == GroupMembersFilter.DELETED) {
            valueOf = ParticipantsActionType.DELETE;
        } else {
            String stringExtra2 = intent.getStringExtra("selected_participant_action");
            if (stringExtra2 == null) {
                stringExtra2 = ParticipantsActionType.defaultValue.name();
            }
            Intrinsics.checkNotNullExpressionValue(stringExtra2, "intent.getStringExtra(EX…ionType.defaultValue.name");
            valueOf = ParticipantsActionType.valueOf(stringExtra2);
        }
        this.participantsActionType = valueOf;
    }

    private final void buildNotification() {
        if (this.builder == null) {
            this.builder = ServiceNotificationsUtils.INSTANCE.createCancellableNotification("iMe_FilteredChatParticipantsProcessingChannel", C3295R.C3297drawable.msg_groups, StopFilteredChatParticipantsProcessingReceiver.class);
        }
    }

    private final void loadParticipants() {
        ConnectionsManager connectionsManager = null;
        if (this.req == null) {
            TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants = new TLRPC$TL_channels_getParticipants();
            MessagesController messagesController = this.messagesController;
            if (messagesController == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messagesController");
                messagesController = null;
            }
            tLRPC$TL_channels_getParticipants.channel = messagesController.getInputChannel(this.chatId);
            TLRPC$ChannelParticipantsFilter serverFilter = this.participantsFilter.getServerFilter();
            tLRPC$TL_channels_getParticipants.filter = serverFilter;
            serverFilter.f1432q = "";
            tLRPC$TL_channels_getParticipants.limit = 200;
            this.req = tLRPC$TL_channels_getParticipants;
        }
        TLRPC$TL_channels_getParticipants tLRPC$TL_channels_getParticipants2 = this.req;
        if (tLRPC$TL_channels_getParticipants2 != null) {
            tLRPC$TL_channels_getParticipants2.offset = this.participants.size();
        }
        ConnectionsManager connectionsManager2 = this.connectionsManager;
        if (connectionsManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionsManager");
            connectionsManager2 = null;
        }
        int sendRequest = connectionsManager2.sendRequest(this.req, new RequestDelegate() { // from class: com.iMe.services.FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FilteredChatParticipantsProcessingService.loadParticipants$lambda$1(FilteredChatParticipantsProcessingService.this, tLObject, tLRPC$TL_error);
            }
        });
        ConnectionsManager connectionsManager3 = this.connectionsManager;
        if (connectionsManager3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionsManager");
        } else {
            connectionsManager = connectionsManager3;
        }
        connectionsManager.bindRequestToGuid(sendRequest, this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadParticipants$lambda$1(FilteredChatParticipantsProcessingService this$0, TLObject response, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "response");
        if (tLRPC$TL_error == null) {
            ArrayList<TLRPC$ChannelParticipant> arrayList = ((TLRPC$TL_channels_channelParticipants) response).participants;
            Intrinsics.checkNotNullExpressionValue(arrayList, "response as TL_channels_…articipants).participants");
            this$0.onParticipantsPartLoaded(arrayList);
            return;
        }
        this$0.stopServiceWithToast(C3295R.string.loading_participants_error);
    }

    private final void onParticipantsPartLoaded(List<? extends TLRPC$ChannelParticipant> list) {
        List<TLRPC$User> list2 = this.participants;
        ArrayList arrayList = new ArrayList();
        for (TLRPC$ChannelParticipant tLRPC$ChannelParticipant : list) {
            MessagesController messagesController = this.messagesController;
            if (messagesController == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messagesController");
                messagesController = null;
            }
            TLRPC$User user = messagesController.getUser(Long.valueOf(MessageObject.getPeerId(tLRPC$ChannelParticipant.peer)));
            if (user != null) {
                arrayList.add(user);
            }
        }
        CollectionsKt__MutableCollectionsKt.addAll(list2, arrayList);
        if (list.size() < 200) {
            onAllParticipantsLoaded();
            return;
        }
        updateNotification(true, State.LOADING);
        runWithDelay(new Runnable() { // from class: com.iMe.services.FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FilteredChatParticipantsProcessingService.onParticipantsPartLoaded$lambda$3(FilteredChatParticipantsProcessingService.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onParticipantsPartLoaded$lambda$3(FilteredChatParticipantsProcessingService this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.loadParticipants();
    }

    private final void onAllParticipantsLoaded() {
        if (this.participantsFilter == GroupMembersFilter.DELETED) {
            CollectionsKt__MutableCollectionsKt.removeAll((List) this.participants, (Function1) C1606x82e66c83.INSTANCE);
        }
        processNextChatParticipantsPart();
    }

    private final void processNextChatParticipantsPart() {
        if (!this.participants.isEmpty()) {
            runWithDelay(new Runnable() { // from class: com.iMe.services.FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FilteredChatParticipantsProcessingService.processNextChatParticipantsPart$lambda$4(FilteredChatParticipantsProcessingService.this);
                }
            });
        } else {
            stopServiceWithToast(C3295R.string.processing_participants_success);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processNextChatParticipantsPart$lambda$4(FilteredChatParticipantsProcessingService this$0) {
        Function0<Unit> c1607x25afaff6;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateNotification(true, State.DELETING);
        int size = this$0.participants.size();
        List<TLRPC$User> subList = this$0.participants.subList(size - Math.min(size, 100), size);
        this$0.processingParticipants = subList;
        this$0.processedParticipantsCount += subList.size();
        int i = WhenMappings.$EnumSwitchMapping$0[this$0.participantsActionType.ordinal()];
        if (i == 1) {
            c1607x25afaff6 = new C1607x25afaff6(this$0);
        } else if (i == 2) {
            c1607x25afaff6 = new C1608x25afaff7(this$0);
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            c1607x25afaff6 = new C1609x25afaff8(this$0);
        }
        this$0.processParticipantsPartBySingleRequests(c1607x25afaff6);
        this$0.participants.removeAll(this$0.processingParticipants);
    }

    private final void processParticipantsPartBySingleRequests(Function0<Unit> function0) {
        while (!this.processingParticipants.isEmpty()) {
            if (!this.isWaitingForNetwork) {
                function0.invoke();
                CollectionsKt.removeLast(this.processingParticipants);
            }
        }
        processNextChatParticipantsPart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteParticipant() {
        MessagesController messagesController = this.messagesController;
        if (messagesController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagesController");
            messagesController = null;
        }
        messagesController.deleteParticipantFromChat(this.chatId, (TLRPC$User) CollectionsKt.last((List<? extends Object>) this.processingParticipants));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unblockParticipant() {
        MessagesController messagesController = this.messagesController;
        if (messagesController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagesController");
            messagesController = null;
        }
        messagesController.setParticipantBannedRole(this.chatId, (TLRPC$User) CollectionsKt.last((List<? extends Object>) this.processingParticipants), getChat(), new TLRPC$TL_chatBannedRights(), getChat().isChannel(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void returnParticipant() {
        MessagesController messagesController = this.messagesController;
        if (messagesController == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagesController");
            messagesController = null;
        }
        messagesController.addUserToChat(this.chatId, (TLRPC$User) CollectionsKt.last((List<? extends Object>) this.processingParticipants), 100, null, null, null);
    }

    private final void onConnectionStateChanged() {
        ConnectionsManager connectionsManager = this.connectionsManager;
        if (connectionsManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionsManager");
            connectionsManager = null;
        }
        boolean z = connectionsManager.getConnectionState() == 2;
        this.isWaitingForNetwork = z;
        if (z) {
            updateNotification(true, State.WAITING_FOR_NETWORK);
        }
    }

    private final void updateNotification(boolean z, State state) {
        String formatStringInternal;
        if (this.builder == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[state.ordinal()];
        if (i == 1) {
            formatStringInternal = LocaleController.formatStringInternal(C3295R.string.loading_participants, Integer.valueOf(this.participants.size()));
        } else if (i == 2) {
            formatStringInternal = LocaleController.formatStringInternal(C3295R.string.processing_participants, Integer.valueOf(this.processedParticipantsCount), Integer.valueOf(this.participants.size()));
        } else {
            formatStringInternal = LocaleController.getString("WaitingForNetwork", C3295R.string.WaitingForNetwork);
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

    /* compiled from: FilteredChatParticipantsProcessingService.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
