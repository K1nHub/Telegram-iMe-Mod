package com.smedialink.storage.data.repository.crypto.level;

import com.smedialink.storage.data.locale.prefs.model.AccountLevelMetadata;
import com.smedialink.storage.data.network.api.own.AccountLevelApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.level.ChangeRankVisibilityRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.level.GetAccountLevelResponse;
import com.smedialink.storage.data.network.model.response.crypto.level.GetAccountLevelVisibilityResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountLevelRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class AccountLevelRepositoryImpl implements AccountLevelRepository {
    private final AccountLevelApi accountLevelApi;
    private final HashMap<Long, AccountLevel> cachedUserAccountLevel;
    private final HashMap<Long, Boolean> cachedUserAccountLevelVisibility;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TelegramGateway telegramGateway;

    public AccountLevelRepositoryImpl(AccountLevelApi accountLevelApi, TelegramGateway telegramGateway, CryptoPreferenceHelper cryptoPreferenceHelper, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(accountLevelApi, "accountLevelApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.accountLevelApi = accountLevelApi;
        this.telegramGateway = telegramGateway;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
        this.cachedUserAccountLevel = new HashMap<>();
        this.cachedUserAccountLevelVisibility = new HashMap<>();
    }

    @Override // com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository
    public Observable<Result<Boolean>> changeLevelVisibility(boolean z) {
        Observable<ApiBaseResponse<GetAccountLevelVisibilityResponse>> changeLevelVisibility = this.accountLevelApi.changeLevelVisibility(new ChangeRankVisibilityRequest(z));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = changeLevelVisibility.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                HashMap hashMap;
                TelegramGateway telegramGateway;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    hashMap = this.cachedUserAccountLevelVisibility;
                    telegramGateway = this.telegramGateway;
                    hashMap.put(Long.valueOf(telegramGateway.getSelectedAccountId()), Boolean.valueOf(((GetAccountLevelVisibilityResponse) response.getPayload()).getRankVisibility()));
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository
    public Observable<Result<Boolean>> getLevelVisibility() {
        Observable empty;
        if (this.cachedUserAccountLevelVisibility.get(Long.valueOf(this.telegramGateway.getSelectedAccountId())) != null) {
            Boolean bool = this.cachedUserAccountLevelVisibility.get(Long.valueOf(this.telegramGateway.getSelectedAccountId()));
            Intrinsics.checkNotNull(bool);
            empty = Observable.just(Result.Companion.success(bool));
            Intrinsics.checkNotNullExpressionValue(empty, "just(this)");
        } else {
            empty = Observable.empty();
        }
        Observable<ApiBaseResponse<GetAccountLevelVisibilityResponse>> levelVisibility = this.accountLevelApi.getLevelVisibility();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = levelVisibility.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$getLevelVisibility$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                HashMap hashMap;
                TelegramGateway telegramGateway;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    hashMap = this.cachedUserAccountLevelVisibility;
                    telegramGateway = this.telegramGateway;
                    hashMap.put(Long.valueOf(telegramGateway.getSelectedAccountId()), Boolean.valueOf(((GetAccountLevelVisibilityResponse) response.getPayload()).getRankVisibility()));
                    return Result.Companion.success(Boolean.valueOf(((GetAccountLevelVisibilityResponse) response.getPayload()).getRankVisibility()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        Observable<Result<Boolean>> concat = Observable.concat(empty, onErrorReturn);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …rorHandler)\n            )");
        return concat;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository
    public Observable<Result<AccountLevel>> getAccountLevel(long j) {
        Observable empty;
        if (this.cachedUserAccountLevel.get(Long.valueOf(j)) != null) {
            AccountLevel accountLevel = this.cachedUserAccountLevel.get(Long.valueOf(j));
            Intrinsics.checkNotNull(accountLevel);
            empty = Observable.just(Result.Companion.success(accountLevel));
            Intrinsics.checkNotNullExpressionValue(empty, "just(this)");
        } else {
            empty = Observable.empty();
        }
        Observable<Result<AccountLevel>> concat = Observable.concat(empty, getAccountLevelRemote(j));
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n                …ote(userId)\n            )");
        return concat;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository
    public Observable<Result<AccountLevel>> getAccountLevelRemote(final long j) {
        Observable<ApiBaseResponse<GetAccountLevelResponse>> accountLevel = this.accountLevelApi.getAccountLevel(String.valueOf(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = accountLevel.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                HashMap hashMap;
                TelegramGateway telegramGateway;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                AccountLevel map2 = AccountLevel.Companion.map(((GetAccountLevelResponse) response.getPayload()).getAccountRank());
                hashMap = this.cachedUserAccountLevel;
                hashMap.put(Long.valueOf(j), map2);
                telegramGateway = this.telegramGateway;
                if (telegramGateway.getSelectedAccountId() == j) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.setAccountLevelMetadata(new AccountLevelMetadata(map2, 0));
                }
                return Result.Companion.success(map2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<AccountLevel>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
