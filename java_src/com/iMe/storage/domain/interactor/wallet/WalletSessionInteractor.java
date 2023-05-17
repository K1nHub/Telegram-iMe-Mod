package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.model.wallet.User;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSessionInteractor.kt */
/* loaded from: classes3.dex */
public final class WalletSessionInteractor {
    private final PushNotificationRepository notificationRepository;
    private final PreferenceHelper preferenceHelper;
    private final WalletRepository walletRepository;
    private final WalletSessionRepository walletSessionRepository;

    public WalletSessionInteractor(PreferenceHelper preferenceHelper, WalletSessionRepository walletSessionRepository, WalletRepository walletRepository, PushNotificationRepository notificationRepository) {
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(walletSessionRepository, "walletSessionRepository");
        Intrinsics.checkNotNullParameter(walletRepository, "walletRepository");
        Intrinsics.checkNotNullParameter(notificationRepository, "notificationRepository");
        this.preferenceHelper = preferenceHelper;
        this.walletSessionRepository = walletSessionRepository;
        this.walletRepository = walletRepository;
        this.notificationRepository = notificationRepository;
    }

    public final Observable<Result<SessionTokens>> refreshToken() {
        Observable<R> flatMap = this.walletSessionRepository.refreshToken().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(Schedulers.m679io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletSessionRepository\n…scribeOn(Schedulers.io())");
        return subscribeOn;
    }

    public final User getCurrentAccount() {
        return this.walletSessionRepository.getCurrentAccount();
    }

    public final boolean hasActiveUser() {
        return getCurrentAccount() != null;
    }

    public final Completable tgAccountLogout() {
        if (hasActiveUser()) {
            Completable subscribeOn = this.notificationRepository.deletePushToken().ignoreElements().andThen(this.walletSessionRepository.logout()).subscribeOn(Schedulers.m679io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                notifi…ulers.io())\n            }");
            return subscribeOn;
        }
        Completable complete = Completable.complete();
        Intrinsics.checkNotNullExpressionValue(complete, "complete()");
        return complete;
    }

    public final Observable<Result<SessionTokens>> login(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<R> flatMap = this.walletSessionRepository.login(url).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new WalletSessionInteractor$login$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(Schedulers.m679io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletSessionRepository\n…scribeOn(Schedulers.io())");
        return subscribeOn;
    }
}
