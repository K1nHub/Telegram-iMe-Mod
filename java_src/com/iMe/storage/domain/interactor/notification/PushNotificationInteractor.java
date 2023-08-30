package com.iMe.storage.domain.interactor.notification;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PushNotificationInteractor.kt */
/* loaded from: classes3.dex */
public final class PushNotificationInteractor {
    private final PushNotificationRepository pushNotificationRepository;
    private final SchedulersProvider schedulersProvider;
    private final WalletSessionInteractor walletSessionInteractor;

    public PushNotificationInteractor(WalletSessionInteractor walletSessionInteractor, PushNotificationRepository pushNotificationRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(walletSessionInteractor, "walletSessionInteractor");
        Intrinsics.checkNotNullParameter(pushNotificationRepository, "pushNotificationRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.walletSessionInteractor = walletSessionInteractor;
        this.pushNotificationRepository = pushNotificationRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<Boolean>> savePushToken(List<String> accounts) {
        Intrinsics.checkNotNullParameter(accounts, "accounts");
        if (this.walletSessionInteractor.hasActiveUser()) {
            Observable<Result<Boolean>> subscribeOn = this.pushNotificationRepository.savePushToken(accounts).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n            pushNotifi…sProvider.io())\n        }");
            return subscribeOn;
        }
        Observable<Result<Boolean>> just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel(FirebaseFunctionsErrorHandler.ErrorStatus.UNAUTHORIZED, (Throwable) null, 2, (DefaultConstructorMarker) null), null, 2, null));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    public static /* synthetic */ Observable getNotifications$default(PushNotificationInteractor pushNotificationInteractor, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return pushNotificationInteractor.getNotifications(str);
    }

    public final Observable<Result<List<Notification>>> getNotifications(String str) {
        Observable<Result<List<Notification>>> subscribeOn = this.pushNotificationRepository.getNotifications(str).startWith((Observable<Result<List<Notification>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "pushNotificationReposito…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> setNotificationsRead(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<Result<Boolean>> subscribeOn = this.pushNotificationRepository.setNotificationsRead(id).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "pushNotificationReposito…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> setAllNotificationsRead() {
        Observable<Result<Boolean>> subscribeOn = this.pushNotificationRepository.setAllNotificationsRead().startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "pushNotificationReposito…(schedulersProvider.io())");
        return subscribeOn;
    }
}
