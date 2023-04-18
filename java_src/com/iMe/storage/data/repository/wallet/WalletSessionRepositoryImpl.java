package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.wallet.RefreshTokenRequest;
import com.iMe.storage.data.network.model.request.wallet.SessionTokensRequest;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logout$lambda$0(WalletSessionRepositoryImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.authManager.logout();
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public Completable logout() {
        Completable fromAction = Completable.fromAction(new Action() { // from class: com.iMe.storage.data.repository.wallet.WalletSessionRepositoryImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletSessionRepositoryImpl.logout$lambda$0(WalletSessionRepositoryImpl.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(fromAction, "fromAction { authManager.logout() }");
        return fromAction;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<Result<SessionTokens>> refreshToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> map = this.walletApi.refreshToken(new RefreshTokenRequest(token, null, 2, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletSessionRepositoryImpl$refreshToken$$inlined$mapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<SessionTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletSessionRepositoryImpl$refreshToken$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.wallet.WalletSessionRepository
    public Observable<Result<SessionTokens>> login(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<R> map = this.walletApi.getAuthTokensByTelegramLoginData(new SessionTokensRequest(url, null, 2, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new WalletSessionRepositoryImpl$login$$inlined$mapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<SessionTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new WalletSessionRepositoryImpl$login$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
