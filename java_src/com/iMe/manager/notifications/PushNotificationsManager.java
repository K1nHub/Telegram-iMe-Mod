package com.iMe.manager.notifications;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.iMe.common.AppRxEvents;
import com.iMe.fork.utils.UserUtils;
import com.iMe.manager.notifications.PushNotificationsManager;
import com.iMe.model.wallet.notification.NotificationInformation;
import com.iMe.model.wallet.notification.PushNotificationModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.GsonExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.NotificationType;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.LaunchActivity;
import timber.log.Timber;
/* compiled from: PushNotificationsManager.kt */
/* loaded from: classes3.dex */
public final class PushNotificationsManager {
    public static final Companion Companion = new Companion(null);
    private final PushNotificationInteractor notificationInteractor;
    private final PreferenceHelper preferenceHelper;
    private final RxEventBus rxEventBus;
    private final CompositeDisposable subscriptions;

    /* compiled from: PushNotificationsManager.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NotificationType.values().length];
            try {
                iArr[NotificationType.CANCEL_TRANSACTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationType.OUTGOING_CRYPTO_TRANSFER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NotificationType.INCOMING_CRYPTO_TRANSFER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NotificationType.OUTGOING_DONATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[NotificationType.INCOMING_DONATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[NotificationType.SIMPLEX_PAYMENT_REQUEST_EVENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[NotificationType.REQUEST_BINANCE_PAY_TRANSACTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[NotificationType.INCOMING_BINANCE_PAY_TRANSACTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[NotificationType.APPROVE_CRYPTO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[NotificationType.STAKING_SAFE_WITHDRAWAL_STARTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[NotificationType.STAKING_SAFE_WITHDRAWAL_FINISHED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[NotificationType.STAKING_STARTED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[NotificationType.STAKING_FINISHED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean handlePushIntent(Intent intent, LaunchActivity launchActivity) {
        return Companion.handlePushIntent(intent, launchActivity);
    }

    public PushNotificationsManager(PushNotificationInteractor notificationInteractor, PreferenceHelper preferenceHelper, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(notificationInteractor, "notificationInteractor");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.notificationInteractor = notificationInteractor;
        this.preferenceHelper = preferenceHelper;
        this.rxEventBus = rxEventBus;
        this.subscriptions = new CompositeDisposable();
    }

    public final void sendPushToken(String str) {
        IntRange until;
        int collectionSizeOrDefault;
        List filterNotNull;
        int collectionSizeOrDefault2;
        boolean z = false;
        if (str == null || str.length() == 0) {
            return;
        }
        until = RangesKt___RangesKt.until(0, 5);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = until.iterator();
        while (true) {
            NotificationInformation notificationInformation = null;
            if (!it.hasNext()) {
                break;
            }
            UserConfig userConfig = UserConfig.getInstance(((IntIterator) it).nextInt());
            if (userConfig.isClientActivated()) {
                PreferenceHelper preferenceHelper = this.preferenceHelper;
                preferenceHelper.setTempOneActionUserId(String.valueOf(userConfig.clientUserId));
                String pushAllowanceToken = preferenceHelper.getPushAllowanceToken();
                preferenceHelper.setTempOneActionUserId("");
                PreferenceHelper preferenceHelper2 = this.preferenceHelper;
                preferenceHelper2.setTempOneActionUserId(String.valueOf(userConfig.clientUserId));
                boolean isPushTokenRegistered = preferenceHelper2.isPushTokenRegistered();
                preferenceHelper2.setTempOneActionUserId("");
                notificationInformation = new NotificationInformation(String.valueOf(userConfig.clientUserId), pushAllowanceToken, isPushTokenRegistered);
            }
            arrayList.add(notificationInformation);
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
        final ArrayList<NotificationInformation> arrayList2 = new ArrayList();
        for (Object obj : filterNotNull) {
            if (((NotificationInformation) obj).getPushAllowanceToken().length() > 0) {
                arrayList2.add(obj);
            }
        }
        if (!arrayList2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (!((NotificationInformation) it2.next()).isPushTokenRegistered()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (true ^ arrayList2.isEmpty()) {
            if (!Intrinsics.areEqual(this.preferenceHelper.getPushToken(), str) || z) {
                PreferenceHelper preferenceHelper3 = this.preferenceHelper;
                if (str == null) {
                    str = "";
                }
                preferenceHelper3.setPushToken(str);
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                for (NotificationInformation notificationInformation2 : arrayList2) {
                    arrayList3.add(notificationInformation2.getPushAllowanceToken());
                }
                Observable<Result<Boolean>> doFinally = this.notificationInteractor.savePushToken(arrayList3).doFinally(new Action() { // from class: com.iMe.manager.notifications.PushNotificationsManager$$ExternalSyntheticLambda0
                    @Override // io.reactivex.functions.Action
                    public final void run() {
                        PushNotificationsManager.sendPushToken$lambda$6(PushNotificationsManager.this);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(doFinally, "notificationInteractor\n …{ subscriptions.clear() }");
                Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                        m1532invoke(result);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: collision with other method in class */
                    public final void m1532invoke(Result<? extends Boolean> it3) {
                        PreferenceHelper preferenceHelper4;
                        Intrinsics.checkNotNullExpressionValue(it3, "it");
                        if (it3 instanceof Result.Success) {
                            for (NotificationInformation notificationInformation3 : arrayList2) {
                                preferenceHelper4 = this.preferenceHelper;
                                preferenceHelper4.setTempOneActionUserId(notificationInformation3.getUserId());
                                preferenceHelper4.setPushTokenRegistered(true);
                                preferenceHelper4.setTempOneActionUserId("");
                            }
                        }
                    }
                }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        invoke2(th);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable error) {
                        Timber.m6e(error);
                        BaseView baseView = BaseView.this;
                        if (baseView != null) {
                            String message = error.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            baseView.showToast(message);
                        }
                        Intrinsics.checkNotNullExpressionValue(error, "error");
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
                RxExtKt.autoDispose(subscribe, this.subscriptions);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendPushToken$lambda$6(PushNotificationsManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.subscriptions.clear();
    }

    public final void onDestroy() {
        this.subscriptions.clear();
    }

    public final boolean handlePushNotification(Map<String, ? extends Object> data) {
        PushNotificationModel convertMapParamsToModel;
        Intrinsics.checkNotNullParameter(data, "data");
        boolean z = data.get(SessionDescription.ATTR_TYPE) != null;
        if (z && (convertMapParamsToModel = convertMapParamsToModel(data)) != null) {
            showPushNotification(convertMapParamsToModel);
            notifyUpdatesIfNeed(convertMapParamsToModel);
        }
        return z;
    }

    private final void notifyUpdatesIfNeed(PushNotificationModel pushNotificationModel) {
        if (isNeedUpdateWallet(pushNotificationModel)) {
            this.rxEventBus.publish(AppRxEvents.UpdateWalletScreen.INSTANCE);
        } else if (isNeedUpdateBinanceScreen(pushNotificationModel)) {
            this.rxEventBus.publish(AppRxEvents.BinanceWalletScreenNeedUpdate.INSTANCE);
        }
    }

    private final boolean isNeedUpdateWallet(PushNotificationModel pushNotificationModel) {
        return (pushNotificationModel instanceof PushNotificationModel.Cancel) || (pushNotificationModel instanceof PushNotificationModel.CryptoTransfer) || (pushNotificationModel instanceof PushNotificationModel.Approve);
    }

    private final boolean isNeedUpdateBinanceScreen(PushNotificationModel pushNotificationModel) {
        return pushNotificationModel instanceof PushNotificationModel.BinancePayRequestStatusUpdated;
    }

    private final PushNotificationModel convertMapParamsToModel(Map<String, ? extends Object> map) {
        Object obj = map.get(SessionDescription.ATTR_TYPE);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        Object obj2 = map.get("userId");
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
        if (UserUtils.isUserActive(Long.parseLong((String) obj2))) {
            switch (WhenMappings.$EnumSwitchMapping$0[NotificationType.Companion.map(str).ordinal()]) {
                case 1:
                    Gson globalGson = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson.fromJson(globalGson.toJson(map), new TypeToken<PushNotificationModel.Cancel>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$1
                    }.getType());
                case 2:
                    Gson globalGson2 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson2.fromJson(globalGson2.toJson(map), new TypeToken<PushNotificationModel.CryptoTransfer.Out>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$2
                    }.getType());
                case 3:
                    Gson globalGson3 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson3.fromJson(globalGson3.toJson(map), new TypeToken<PushNotificationModel.CryptoTransfer.C1536In>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$3
                    }.getType());
                case 4:
                    Gson globalGson4 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson4.fromJson(globalGson4.toJson(map), new TypeToken<PushNotificationModel.Donation.Out>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$4
                    }.getType());
                case 5:
                    Gson globalGson5 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson5.fromJson(globalGson5.toJson(map), new TypeToken<PushNotificationModel.Donation.C1537In>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$5
                    }.getType());
                case 6:
                    Gson globalGson6 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson6.fromJson(globalGson6.toJson(map), new TypeToken<PushNotificationModel.Simplex>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$6
                    }.getType());
                case 7:
                    Gson globalGson7 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson7.fromJson(globalGson7.toJson(map), new TypeToken<PushNotificationModel.BinancePayRequestCreated>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$7
                    }.getType());
                case 8:
                    Gson globalGson8 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson8.fromJson(globalGson8.toJson(map), new TypeToken<PushNotificationModel.BinancePayRequestStatusUpdated>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$8
                    }.getType());
                case 9:
                    Gson globalGson9 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson9.fromJson(globalGson9.toJson(map), new TypeToken<PushNotificationModel.Approve>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$9
                    }.getType());
                case 10:
                    Gson globalGson10 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson10.fromJson(globalGson10.toJson(map), new TypeToken<PushNotificationModel.StakingSafeWithdrawalStarted>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$10
                    }.getType());
                case 11:
                    Gson globalGson11 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson11.fromJson(globalGson11.toJson(map), new TypeToken<PushNotificationModel.StakingSafeWithdrawalFinished>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$11
                    }.getType());
                case 12:
                    Gson globalGson12 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson12.fromJson(globalGson12.toJson(map), new TypeToken<PushNotificationModel.StakingStarted>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$12
                    }.getType());
                case 13:
                    Gson globalGson13 = GsonExtKt.getGlobalGson();
                    return (PushNotificationModel) globalGson13.fromJson(globalGson13.toJson(map), new TypeToken<PushNotificationModel.StakingFinished>() { // from class: com.iMe.manager.notifications.PushNotificationsManager$convertMapParamsToModel$$inlined$toDataClass$default$13
                    }.getType());
                default:
                    return null;
            }
        }
        return null;
    }

    private final void showPushNotification(PushNotificationModel pushNotificationModel) {
        NotificationManagerCompat from = NotificationManagerCompat.from(ApplicationLoader.applicationContext);
        Intrinsics.checkNotNullExpressionValue(from, "from(ApplicationLoader.applicationContext)");
        Intent intent = new Intent(ApplicationLoader.applicationContext, LaunchActivity.class);
        intent.setAction(pushNotificationModel.getAction());
        intent.setFlags(LiteMode.FLAG_CHAT_SCALE);
        intent.putExtra("userId", pushNotificationModel.getUserId());
        PendingIntent activity = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, 1107296256);
        if (Build.VERSION.SDK_INT >= 26 && from.getNotificationChannel("iMe Messenger") == null) {
            from.createNotificationChannel(new NotificationChannel("iMe Messenger", LocaleController.getString("AppName", C3632R.string.AppName), 3));
        }
        Notification build = new NotificationCompat.Builder(ApplicationLoader.applicationContext, "iMe Messenger").setContentTitle(LocaleController.getString("AppName", C3632R.string.AppName)).setContentText(pushNotificationModel.getMessage()).setSmallIcon(C3632R.C3634drawable.fork_notification).setAutoCancel(true).setGroupSummary(true).setGroup(LocaleController.getInternalString(C3632R.string.drawer_wallet_item_title)).setContentIntent(activity).setColor(ContextCompat.getColor(ApplicationLoader.applicationContext, C3632R.C3633color.fork_color)).setCategory("msg").build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(ApplicationLoade…\n                .build()");
        from.notify((int) System.currentTimeMillis(), build);
    }

    /* compiled from: PushNotificationsManager.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean handlePushIntent(Intent intent, final LaunchActivity activity) {
            boolean startsWith$default;
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(activity, "activity");
            String action = intent.getAction();
            if (action != null) {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(action, PushNotificationModel.BASE_PUSH_ACTION, false, 2, null);
                if (startsWith$default) {
                    long longExtra = intent.getLongExtra("userId", 0L);
                    String action2 = intent.getAction();
                    if (action2 != null && action2.hashCode() == -1002038047 && action2.equals(PushNotificationModel.ACTION_OPEN_WALLET)) {
                        int selectedAccountPositionByUserId = UserUtils.getSelectedAccountPositionByUserId(longExtra);
                        if (selectedAccountPositionByUserId != UserConfig.selectedAccount) {
                            activity.switchToAccount(selectedAccountPositionByUserId, true);
                        }
                        activity.runDelayed(1000L, new Runnable() { // from class: com.iMe.manager.notifications.PushNotificationsManager$Companion$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                PushNotificationsManager.Companion.handlePushIntent$lambda$1$lambda$0(LaunchActivity.this);
                            }
                        });
                    }
                }
                return startsWith$default;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void handlePushIntent$lambda$1$lambda$0(LaunchActivity this_with) {
            Intrinsics.checkNotNullParameter(this_with, "$this_with");
            this_with.openWalletScreen();
        }
    }
}
