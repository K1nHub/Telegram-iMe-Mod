package com.smedialink.storage.domain.interactor.wallet;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import com.smedialink.storage.domain.model.wallet.User;
import com.smedialink.storage.domain.repository.notification.PushNotificationRepository;
import com.smedialink.storage.domain.repository.wallet.WalletRepository;
import com.smedialink.storage.domain.repository.wallet.WalletSessionRepository;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSessionInteractor.kt */
/* loaded from: classes3.dex */
public final class WalletSessionInteractor {
    private final PushNotificationRepository notificationRepository;
    private final PreferenceHelper preferenceHelper;
    private final SchedulersProvider schedulersProvider;
    private final WalletRepository walletRepository;
    private final WalletSessionRepository walletSessionRepository;

    public WalletSessionInteractor(PreferenceHelper preferenceHelper, WalletSessionRepository walletSessionRepository, WalletRepository walletRepository, PushNotificationRepository notificationRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(walletSessionRepository, "walletSessionRepository");
        Intrinsics.checkNotNullParameter(walletRepository, "walletRepository");
        Intrinsics.checkNotNullParameter(notificationRepository, "notificationRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.preferenceHelper = preferenceHelper;
        this.walletSessionRepository = walletSessionRepository;
        this.walletRepository = walletRepository;
        this.notificationRepository = notificationRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<SessionTokens>> refreshToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> flatMap = this.walletSessionRepository.refreshToken(token).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo707io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletSessionRepository\n…(schedulersProvider.io())");
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
            Completable subscribeOn = this.notificationRepository.deletePushToken().ignoreElements().andThen(this.walletSessionRepository.logout()).subscribeOn(this.schedulersProvider.mo707io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n                notifi…vider.io())\n            }");
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
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo707io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletSessionRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }
}
