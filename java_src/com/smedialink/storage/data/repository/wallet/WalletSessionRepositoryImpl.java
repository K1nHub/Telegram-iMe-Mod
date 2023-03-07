package com.smedialink.storage.data.repository.wallet;

import com.smedialink.storage.data.mapper.wallet.SessionTokensMappingKt;
import com.smedialink.storage.data.network.api.own.WalletApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.wallet.RefreshTokenRequest;
import com.smedialink.storage.data.network.model.request.wallet.SessionTokensRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.wallet.SessionTokensResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.manager.auth.AuthManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import com.smedialink.storage.domain.model.wallet.User;
import com.smedialink.storage.domain.repository.wallet.WalletSessionRepository;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSessionRepositoryImpl.kt */
/* loaded from: classes3.dex */
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

    @Override // com.smedialink.storage.domain.repository.wallet.WalletSessionRepository
    public User getCurrentAccount() {
        return this.authManager.getUser();
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<String> getCurrentAccountToken(boolean z) {
        String accessToken = this.authManager.getAccessToken();
        if (accessToken == null) {
            accessToken = "";
        }
        Observable<String> just = Observable.just(accessToken);
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: logout$lambda-0  reason: not valid java name */
    public static final void m1384logout$lambda0(WalletSessionRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.authManager.logout();
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletSessionRepository
    public Completable logout() {
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.smedialink.storage.data.repository.wallet.WalletSessionRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletSessionRepositoryImpl.m1384logout$lambda0(WalletSessionRepositoryImpl.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction { authManager.logout() }");
        return fromAction;
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<Result<SessionTokens>> refreshToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<SessionTokensResponse>> refreshToken = this.walletApi.refreshToken(new RefreshTokenRequest(token));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = refreshToken.map(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletSessionRepositoryImpl$refreshToken$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                AuthManager authManager;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                SessionTokens mapToDomain = SessionTokensMappingKt.mapToDomain((SessionTokensResponse) response.getPayload());
                authManager = this.authManager;
                authManager.setSession(mapToDomain);
                return Result.Companion.success(mapToDomain);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<SessionTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<Result<SessionTokens>> login(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<ApiBaseResponse<SessionTokensResponse>> authTokensByTelegramLoginData = this.walletApi.getAuthTokensByTelegramLoginData(new SessionTokensRequest(url));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = authTokensByTelegramLoginData.map(new Function() { // from class: com.smedialink.storage.data.repository.wallet.WalletSessionRepositoryImpl$login$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                AuthManager authManager;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                SessionTokens mapToDomain = SessionTokensMappingKt.mapToDomain((SessionTokensResponse) response.getPayload());
                authManager = this.authManager;
                authManager.setSession(mapToDomain);
                return Result.Companion.success(mapToDomain);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<SessionTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
