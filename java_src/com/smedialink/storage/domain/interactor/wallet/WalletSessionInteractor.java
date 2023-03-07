package com.smedialink.storage.domain.interactor.wallet;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import com.smedialink.storage.domain.model.wallet.User;
import com.smedialink.storage.domain.repository.notification.PushNotificationRepository;
import com.smedialink.storage.domain.repository.wallet.WalletRepository;
import com.smedialink.storage.domain.repository.wallet.WalletSessionRepository;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
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
        Observable<R> flatMap = this.walletSessionRepository.refreshToken(token).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(final Result result) {
                PreferenceHelper preferenceHelper;
                PushNotificationRepository pushNotificationRepository;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                preferenceHelper = WalletSessionInteractor.this.preferenceHelper;
                if (preferenceHelper.getPushAllowanceToken().length() == 0) {
                    pushNotificationRepository = WalletSessionInteractor.this.notificationRepository;
                    Observable<Result<String>> issuePushAllowanceToken = pushNotificationRepository.issuePushAllowanceToken();
                    final WalletSessionInteractor walletSessionInteractor = WalletSessionInteractor.this;
                    Observable<R> flatMap2 = issuePushAllowanceToken.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor$refreshToken$lambda-1$$inlined$flatMapSuccess$1
                        /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                        @Override // io.reactivex.functions.Function
                        public final ObservableSource apply(Result result2) {
                            PushNotificationRepository pushNotificationRepository2;
                            List<String> mutableListOf;
                            SchedulersProvider schedulersProvider2;
                            Intrinsics.checkNotNullParameter(result2, "result");
                            if (!(result2 instanceof Result.Success)) {
                                return result2 instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null)) : Observable.empty();
                            }
                            pushNotificationRepository2 = WalletSessionInteractor.this.notificationRepository;
                            Object data = result2.getData();
                            Intrinsics.checkNotNull(data);
                            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf((String) data);
                            Observable<Result<Boolean>> savePushToken = pushNotificationRepository2.savePushToken(mutableListOf);
                            schedulersProvider2 = WalletSessionInteractor.this.schedulersProvider;
                            Observable<Result<Boolean>> subscribeOn = savePushToken.subscribeOn(schedulersProvider2.mo708io());
                            Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository.s…(schedulersProvider.io())");
                            return subscribeOn;
                        }
                    });
                    Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                    Observable<R> map = flatMap2.map(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor$refreshToken$1$2
                        @Override // io.reactivex.functions.Function
                        public final Result<SessionTokens> apply(Result<Boolean> it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return result;
                        }
                    });
                    schedulersProvider = WalletSessionInteractor.this.schedulersProvider;
                    Observable<R> subscribeOn = map.subscribeOn(schedulersProvider.mo708io());
                    Intrinsics.checkNotNullExpressionValue(subscribeOn, "result ->\n              …())\n                    }");
                    return subscribeOn;
                }
                Observable just = Observable.just(result);
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletSessionRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final User getCurrentAccount() {
        return this.walletSessionRepository.getCurrentAccount();
    }

    public final boolean isHasActiveUser() {
        return getCurrentAccount() != null;
    }

    public final Completable tgAccountLogout() {
        if (isHasActiveUser()) {
            Completable subscribeOn = this.notificationRepository.deletePushToken().ignoreElements().andThen(this.walletSessionRepository.logout()).subscribeOn(this.schedulersProvider.mo708io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n            notificati…sProvider.io())\n        }");
            return subscribeOn;
        }
        Completable complete = Completable.complete();
        Intrinsics.checkNotNullExpressionValue(complete, "complete()");
        return complete;
    }

    public final Observable<Result<SessionTokens>> login(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<R> flatMap = this.walletSessionRepository.login(url).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor$login$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(final Result result) {
                WalletRepository walletRepository;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                walletRepository = WalletSessionInteractor.this.walletRepository;
                Observable<Result<Boolean>> activateWallet = walletRepository.activateWallet();
                final WalletSessionInteractor walletSessionInteractor = WalletSessionInteractor.this;
                Observable<R> flatMap2 = activateWallet.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor$login$lambda-4$$inlined$flatMapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final ObservableSource apply(Result result2) {
                        PushNotificationRepository pushNotificationRepository;
                        SchedulersProvider schedulersProvider2;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            return result2 instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null)) : Observable.empty();
                        }
                        pushNotificationRepository = WalletSessionInteractor.this.notificationRepository;
                        Observable<Result<String>> issuePushAllowanceToken = pushNotificationRepository.issuePushAllowanceToken();
                        schedulersProvider2 = WalletSessionInteractor.this.schedulersProvider;
                        Observable<Result<String>> subscribeOn = issuePushAllowanceToken.subscribeOn(schedulersProvider2.mo708io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository.i…(schedulersProvider.io())");
                        return subscribeOn;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                final WalletSessionInteractor walletSessionInteractor2 = WalletSessionInteractor.this;
                Observable<R> flatMap3 = flatMap2.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor$login$lambda-4$$inlined$flatMapSuccess$2
                    /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                    @Override // io.reactivex.functions.Function
                    public final ObservableSource apply(Result result2) {
                        PushNotificationRepository pushNotificationRepository;
                        List<String> mutableListOf;
                        SchedulersProvider schedulersProvider2;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            return result2 instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null)) : Observable.empty();
                        }
                        pushNotificationRepository = WalletSessionInteractor.this.notificationRepository;
                        Object data = result2.getData();
                        Intrinsics.checkNotNull(data);
                        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf((String) data);
                        Observable<Result<Boolean>> savePushToken = pushNotificationRepository.savePushToken(mutableListOf);
                        schedulersProvider2 = WalletSessionInteractor.this.schedulersProvider;
                        Observable<Result<Boolean>> subscribeOn = savePushToken.subscribeOn(schedulersProvider2.mo708io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository.s…(schedulersProvider.io())");
                        return subscribeOn;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(flatMap3, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                Observable<R> map = flatMap3.map(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletSessionInteractor$login$1$3
                    @Override // io.reactivex.functions.Function
                    public final Result<SessionTokens> apply(Result<Boolean> it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return result;
                    }
                });
                schedulersProvider = WalletSessionInteractor.this.schedulersProvider;
                Observable<R> subscribeOn = map.subscribeOn(schedulersProvider.mo708io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "result ->\n              …(schedulersProvider.io())");
                return subscribeOn;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletSessionRepository\n…(schedulersProvider.io())");
        return subscribeOn;
    }
}
