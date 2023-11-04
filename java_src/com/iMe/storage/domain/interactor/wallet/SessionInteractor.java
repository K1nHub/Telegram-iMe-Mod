package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.model.wallet.User;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.repository.wallet.SessionRepository;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SessionInteractor.kt */
/* loaded from: classes3.dex */
public final class SessionInteractor {
    private final PushNotificationRepository notificationRepository;
    private final PreferenceHelper preferenceHelper;
    private final SchedulersProvider schedulersProvider;
    private final SessionRepository sessionRepository;

    public SessionInteractor(PushNotificationRepository notificationRepository, PreferenceHelper preferenceHelper, SchedulersProvider schedulersProvider, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(notificationRepository, "notificationRepository");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.notificationRepository = notificationRepository;
        this.preferenceHelper = preferenceHelper;
        this.schedulersProvider = schedulersProvider;
        this.sessionRepository = sessionRepository;
    }

    public final Observable<Result<SessionTokens>> refreshToken() {
        Observable<R> flatMap = this.sessionRepository.refreshToken().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends SessionTokens>, ObservableSource<? extends Result<? extends SessionTokens>>>() { // from class: com.iMe.storage.domain.interactor.wallet.SessionInteractor$refreshToken$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends SessionTokens>> invoke(final Result<? extends SessionTokens> result) {
                PreferenceHelper preferenceHelper;
                Observable updatePushToken;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    preferenceHelper = SessionInteractor.this.preferenceHelper;
                    if (preferenceHelper.getPushAllowanceToken().length() == 0) {
                        updatePushToken = SessionInteractor.this.updatePushToken();
                        Observable map = updatePushToken.map(new SessionInteractor$sam$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.domain.interactor.wallet.SessionInteractor$refreshToken$1$1
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
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                    return Observable.just(error$default);
                } else {
                    return Observable.empty();
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "sessionRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final User getCurrentAccount() {
        return this.sessionRepository.getCurrentAccount();
    }

    public final boolean hasActiveUser() {
        return getCurrentAccount() != null;
    }

    public final Completable tgAccountLogout() {
        if (hasActiveUser()) {
            Completable subscribeOn = this.notificationRepository.deletePushToken().ignoreElements().andThen(this.sessionRepository.logout()).subscribeOn(this.schedulersProvider.mo1011io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "{\n            notificati…sProvider.io())\n        }");
            return subscribeOn;
        }
        Completable complete = Completable.complete();
        Intrinsics.checkNotNullExpressionValue(complete, "complete()");
        return complete;
    }

    public final Observable<Result<SessionTokens>> login(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<R> flatMap = this.sessionRepository.login(url).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends SessionTokens>, ObservableSource<? extends Result<? extends SessionTokens>>>() { // from class: com.iMe.storage.domain.interactor.wallet.SessionInteractor$login$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends SessionTokens>> invoke(final Result<? extends SessionTokens> result) {
                Observable updatePushToken;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    updatePushToken = SessionInteractor.this.updatePushToken();
                    Observable map = updatePushToken.map(new SessionInteractor$sam$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.domain.interactor.wallet.SessionInteractor$login$1$1
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
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                    return Observable.just(error$default);
                } else {
                    return Observable.empty();
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<SessionTokens>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "sessionRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> updatePushToken() {
        Observable<R> flatMap = this.notificationRepository.issuePushAllowanceToken().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.domain.interactor.wallet.SessionInteractor$updatePushToken$$inlined$flatMapSuccess$1
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
                    pushNotificationRepository = SessionInteractor.this.notificationRepository;
                    String data = result.getData();
                    Intrinsics.checkNotNull(data);
                    mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(data);
                    Observable<Result<Boolean>> savePushToken = pushNotificationRepository.savePushToken(mutableListOf);
                    schedulersProvider = SessionInteractor.this.schedulersProvider;
                    Observable<Result<Boolean>> subscribeOn = savePushToken.subscribeOn(schedulersProvider.mo1011io());
                    Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository\n …(schedulersProvider.io())");
                    return subscribeOn;
                } else if (result instanceof Result.Error) {
                    Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                    return Observable.just(error$default);
                } else {
                    return Observable.empty();
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<Boolean>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
