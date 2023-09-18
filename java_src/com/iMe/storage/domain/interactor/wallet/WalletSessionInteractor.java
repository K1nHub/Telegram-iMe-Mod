package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.model.wallet.User;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSessionInteractor.kt */
/* loaded from: classes4.dex */
public final class WalletSessionInteractor {
    private final PushNotificationRepository notificationRepository;
    private final PreferenceHelper preferenceHelper;
    private final SchedulersProvider schedulersProvider;
    private final WalletSessionRepository walletSessionRepository;

    public WalletSessionInteractor(PushNotificationRepository notificationRepository, PreferenceHelper preferenceHelper, SchedulersProvider schedulersProvider, WalletSessionRepository walletSessionRepository) {
        Intrinsics.checkNotNullParameter(notificationRepository, "notificationRepository");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletSessionRepository, "walletSessionRepository");
        this.notificationRepository = notificationRepository;
        this.preferenceHelper = preferenceHelper;
        this.schedulersProvider = schedulersProvider;
        this.walletSessionRepository = walletSessionRepository;
    }

    public final Observable<Result<SessionTokens>> refreshToken() {
        Observable<R> flatMap = this.walletSessionRepository.refreshToken().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends SessionTokens>, ObservableSource<? extends Result<? extends SessionTokens>>>() { // from class: com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends SessionTokens>> invoke(final Result<? extends SessionTokens> result) {
                PreferenceHelper preferenceHelper;
                Observable updatePushToken;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    preferenceHelper = WalletSessionInteractor.this.preferenceHelper;
                    if (preferenceHelper.getPushAllowanceToken().length() == 0) {
                        updatePushToken = WalletSessionInteractor.this.updatePushToken();
                        Observable map = updatePushToken.map(new WalletSessionInteractor$sam$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor$refreshToken$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final Result<SessionTokens> invoke2(Result<Boolean> it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                return result;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Result<? extends SessionTokens> invoke(Result<? extends Boolean> result2) {
                                return invoke2((Result<Boolean>) result2);
                            }
                        }));
                        Intrinsics.checkNotNullExpressionValue(map, "tokensResult ->\n        …esult }\n                }");
                        return map;
                    }
                    Observable just = Observable.just(result);
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                } else if (result instanceof Result.Error) {
                    Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                    return Observable.just(error$default);
                } else {
                    return Observable.empty();
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo717io());
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
            Completable subscribeOn = this.notificationRepository.deletePushToken().ignoreElements().andThen(this.walletSessionRepository.logout()).subscribeOn(Schedulers.m697io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n            notificati…chedulers.io())\n        }");
            return subscribeOn;
        }
        Completable complete = Completable.complete();
        Intrinsics.checkNotNullExpressionValue(complete, "complete()");
        return complete;
    }

    public final Observable<Result<SessionTokens>> login(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<R> flatMap = this.walletSessionRepository.login(url).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends SessionTokens>, ObservableSource<? extends Result<? extends SessionTokens>>>() { // from class: com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor$login$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends SessionTokens>> invoke(final Result<? extends SessionTokens> result) {
                Observable updatePushToken;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    updatePushToken = WalletSessionInteractor.this.updatePushToken();
                    Observable map = updatePushToken.map(new WalletSessionInteractor$sam$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor$login$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final Result<SessionTokens> invoke2(Result<Boolean> it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return result;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Result<? extends SessionTokens> invoke(Result<? extends Boolean> result2) {
                            return invoke2((Result<Boolean>) result2);
                        }
                    }));
                    Intrinsics.checkNotNullExpressionValue(map, "tokensResult ->\n        …en().map { tokensResult }");
                    return map;
                } else if (result instanceof Result.Error) {
                    Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                    return Observable.just(error$default);
                } else {
                    return Observable.empty();
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(Schedulers.m697io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletSessionRepository\n…scribeOn(Schedulers.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> updatePushToken() {
        Observable<R> flatMap = this.notificationRepository.issuePushAllowanceToken().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor$updatePushToken$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
                PushNotificationRepository pushNotificationRepository;
                List<String> mutableListOf;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    pushNotificationRepository = WalletSessionInteractor.this.notificationRepository;
                    String data = result.getData();
                    Intrinsics.checkNotNull(data);
                    mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(data);
                    Observable<Result<Boolean>> savePushToken = pushNotificationRepository.savePushToken(mutableListOf);
                    schedulersProvider = WalletSessionInteractor.this.schedulersProvider;
                    Observable<Result<Boolean>> subscribeOn = savePushToken.subscribeOn(schedulersProvider.mo717io());
                    Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository\n …(schedulersProvider.io())");
                    return subscribeOn;
                } else if (result instanceof Result.Error) {
                    Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                    return Observable.just(error$default);
                } else {
                    return Observable.empty();
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo717io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
