package com.iMe.services;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.iMe.common.IdFabric$ServiceNotifications;
import com.iMe.fork.enums.ContactsActionType;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.model.contacts.ContactsFilter;
import com.iMe.services.receivers.StopFilteredChatParticipantsProcessingReceiver;
import com.iMe.services.utils.ServiceNotificationsUtils;
import com.iMe.utils.extentions.common.ContextExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: FilteredContactsProcessingService.kt */
/* loaded from: classes3.dex */
public final class FilteredContactsProcessingService extends Service implements NotificationCenter.NotificationCenterDelegate {
    private AccountInstance accountInstance;
    private NotificationCompat.Builder builder;
    private boolean isWaitingForNetwork;
    private int processedContactsCount;
    private final List<Long> contactsIds = new ArrayList();
    private final int notificationChannelId = IdFabric$ServiceNotifications.CONTACTS_PROCESSING;
    private final int[] notifications = {NotificationCenter.didUpdateConnectionState};
    private ContactsFilter contactsFilter = ContactsFilter.BLOCKED;
    private ContactsActionType contactsActionType = ContactsActionType.defaultValue;
    private List<Long> processingContactsIds = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FilteredContactsProcessingService.kt */
    /* loaded from: classes3.dex */
    public enum State {
        DELETING,
        WAITING_FOR_NETWORK
    }

    /* compiled from: FilteredContactsProcessingService.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ContactsActionType.values().length];
            try {
                iArr[ContactsActionType.DELETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContactsActionType.UNBLOCK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[State.values().length];
            try {
                iArr2[State.DELETING.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
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

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ConnectionsManager.generateClassGuid();
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
        if (i == NotificationCenter.didUpdateConnectionState) {
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
        processNextContactsPart();
        int i3 = this.notificationChannelId;
        NotificationCompat.Builder builder = this.builder;
        Intrinsics.checkNotNull(builder);
        startForeground(i3, builder.build());
        return 2;
    }

    private final void resolveIntentExtras(Intent intent) {
        ContactsActionType valueOf;
        List<Long> list = this.contactsIds;
        long[] longArrayExtra = intent.getLongArrayExtra("contacts_ids");
        List<Long> mutableList = longArrayExtra != null ? ArraysKt___ArraysKt.toMutableList(longArrayExtra) : null;
        if (mutableList == null) {
            mutableList = CollectionsKt__CollectionsKt.emptyList();
        }
        list.addAll(mutableList);
        ContactsFilter.Companion companion = ContactsFilter.Companion;
        String stringExtra = intent.getStringExtra("selected_filter_name");
        if (stringExtra == null) {
            stringExtra = ContactsFilter.BLOCKED.name();
        }
        ContactsFilter mapNameToEnum = companion.mapNameToEnum(stringExtra);
        this.contactsFilter = mapNameToEnum;
        if (mapNameToEnum == ContactsFilter.NOT_MUTUAL) {
            valueOf = ContactsActionType.DELETE;
        } else {
            String stringExtra2 = intent.getStringExtra("selected_contacts_action_name");
            if (stringExtra2 == null) {
                stringExtra2 = ContactsActionType.defaultValue.name();
            }
            Intrinsics.checkNotNullExpressionValue(stringExtra2, "intent.getStringExtra(EX…ionType.defaultValue.name");
            valueOf = ContactsActionType.valueOf(stringExtra2);
        }
        this.contactsActionType = valueOf;
    }

    private final void buildNotification() {
        if (this.builder == null) {
            this.builder = ServiceNotificationsUtils.INSTANCE.createCancellableNotification("iMe_ContactsProcessingChannel", C3632R.C3634drawable.fork_ic_contacts_24, StopFilteredChatParticipantsProcessingReceiver.class);
        }
    }

    private final void processNextContactsPart() {
        if (!this.contactsIds.isEmpty()) {
            runWithDelay(new Runnable() { // from class: com.iMe.services.FilteredContactsProcessingService$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FilteredContactsProcessingService.processNextContactsPart$lambda$0(FilteredContactsProcessingService.this);
                }
            });
        } else {
            stopServiceWithToast(C3632R.string.contacts_processing_success);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processNextContactsPart$lambda$0(FilteredContactsProcessingService this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateNotification(true, State.DELETING);
        int size = this$0.contactsIds.size();
        List<Long> subList = this$0.contactsIds.subList(size - Math.min(size, 100), size);
        this$0.processingContactsIds = subList;
        this$0.processedContactsCount += subList.size();
        int i = WhenMappings.$EnumSwitchMapping$0[this$0.contactsActionType.ordinal()];
        if (i == 1) {
            this$0.deleteContactsPart();
        } else if (i == 2) {
            this$0.unblockContactsPart();
        }
        this$0.contactsIds.removeAll(this$0.processingContactsIds);
    }

    private final void unblockContactsPart() {
        while (!this.processingContactsIds.isEmpty()) {
            if (!this.isWaitingForNetwork) {
                AccountInstance accountInstance = this.accountInstance;
                if (accountInstance == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
                    accountInstance = null;
                }
                accountInstance.getMessagesController().unblockPeer(((Number) CollectionsKt.last((List<? extends Object>) this.processingContactsIds)).longValue());
                CollectionsKt.removeLast(this.processingContactsIds);
            }
        }
        processNextContactsPart();
    }

    private final void deleteContactsPart() {
        int collectionSizeOrDefault;
        AccountInstance accountInstance = this.accountInstance;
        if (accountInstance == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
            accountInstance = null;
        }
        ContactsController contactsController = accountInstance.getContactsController();
        List<Long> list = this.processingContactsIds;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : list) {
            long longValue = number.longValue();
            AccountInstance accountInstance2 = this.accountInstance;
            if (accountInstance2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
                accountInstance2 = null;
            }
            arrayList.add(accountInstance2.getMessagesController().getUser(Long.valueOf(longValue)));
        }
        contactsController.deleteContact(CollectionsUtilsKt.toArrayList(arrayList), false, new Callbacks$Callback1() { // from class: com.iMe.services.FilteredContactsProcessingService$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                FilteredContactsProcessingService.deleteContactsPart$lambda$2(FilteredContactsProcessingService.this, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteContactsPart$lambda$2(FilteredContactsProcessingService this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (th == null) {
            this$0.processNextContactsPart();
        } else {
            this$0.stopServiceWithToast(C3632R.string.contacts_processing_error);
        }
    }

    private final void onConnectionStateChanged() {
        AccountInstance accountInstance = this.accountInstance;
        if (accountInstance == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountInstance");
            accountInstance = null;
        }
        boolean z = accountInstance.getConnectionsManager().getConnectionState() == 2;
        this.isWaitingForNetwork = z;
        if (z) {
            updateNotification(true, State.WAITING_FOR_NETWORK);
        }
    }

    private final void updateNotification(boolean z, State state) {
        String string;
        if (this.builder == null) {
            return;
        }
        if (WhenMappings.$EnumSwitchMapping$1[state.ordinal()] == 1) {
            string = LocaleController.formatStringInternal(C3632R.string.contacts_processing, Integer.valueOf(this.processedContactsCount), Integer.valueOf(this.contactsIds.size()));
        } else {
            string = LocaleController.getString("WaitingForNetwork", C3632R.string.WaitingForNetwork);
        }
        NotificationCompat.Builder builder = this.builder;
        if (builder != null) {
            builder.setTicker(string);
            builder.setContentText(string);
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

    /* compiled from: FilteredContactsProcessingService.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
