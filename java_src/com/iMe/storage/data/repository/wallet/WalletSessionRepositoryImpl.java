package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.mapper.wallet.SessionTokensMappingKt;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.wallet.RefreshTokenRequest;
import com.iMe.storage.data.network.model.request.wallet.SessionTokensRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.wallet.SessionTokensResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.model.wallet.User;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.functions.Action;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSessionRepositoryImpl.kt */
/* loaded from: classes4.dex */
public final class WalletSessionRepositoryImpl implements WalletSessionRepository {
    private final AuthManager authManager;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final WalletApi walletApi;

    public WalletSessionRepositoryImpl(WalletApi walletApi, ApiErrorHandler errorHandler, AuthManager authManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(walletApi, "walletApi");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(authManager, "authManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.walletApi = walletApi;
        this.errorHandler = errorHandler;
        this.authManager = authManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public User getCurrentAccount() {
        return this.authManager.getUser();
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<String> getCurrentAccountToken(boolean z) {
        String accessToken = this.authManager.getAccessToken();
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<String> just = Observable.just(accessToken);
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public Completable logout() {
        final AuthManager authManager = this.authManager;
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.iMe.storage.data.repository.wallet.WalletSessionRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                AuthManager.this.logout();
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction(authManager::logout)");
        return fromAction;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<Result<SessionTokens>> refreshToken() {
        WalletApi walletApi = this.walletApi;
        String refreshToken = this.authManager.getRefreshToken();
        if (refreshToken == null) {
            refreshToken = "";
        }
        Observable<ApiBaseResponse<SessionTokensResponse>> refreshToken2 = walletApi.refreshToken(new RefreshTokenRequest(refreshToken, null, 2, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = refreshToken2.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<SessionTokensResponse>, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.data.repository.wallet.WalletSessionRepositoryImpl$refreshToken$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SessionTokens> invoke(ApiBaseResponse<SessionTokensResponse> response) {
                AuthManager authManager;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                SessionTokens mapToDomain = SessionTokensMappingKt.mapToDomain(response.getPayload());
                authManager = this.authManager;
                authManager.setSession(mapToDomain);
                return Result.Companion.success(mapToDomain);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<SessionTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.data.repository.wallet.WalletSessionRepositoryImpl$refreshToken$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SessionTokens> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<Result<SessionTokens>> login(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<ApiBaseResponse<SessionTokensResponse>> authTokensByTelegramLoginData = this.walletApi.getAuthTokensByTelegramLoginData(new SessionTokensRequest(url, null, 2, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = authTokensByTelegramLoginData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<SessionTokensResponse>, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.data.repository.wallet.WalletSessionRepositoryImpl$login$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SessionTokens> invoke(ApiBaseResponse<SessionTokensResponse> response) {
                AuthManager authManager;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                SessionTokens mapToDomain = SessionTokensMappingKt.mapToDomain(response.getPayload());
                authManager = this.authManager;
                authManager.setSession(mapToDomain);
                return Result.Companion.success(mapToDomain);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<SessionTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends SessionTokens>>() { // from class: com.iMe.storage.data.repository.wallet.WalletSessionRepositoryImpl$login$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<SessionTokens> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
