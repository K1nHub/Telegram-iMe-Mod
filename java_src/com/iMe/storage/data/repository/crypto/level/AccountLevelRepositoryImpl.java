package com.iMe.storage.data.repository.crypto.level;

import com.iMe.storage.data.locale.prefs.model.AccountLevelMetadata;
import com.iMe.storage.data.network.api.own.AccountLevelApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.level.ChangeRankVisibilityRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.level.GetAccountLevelResponse;
import com.iMe.storage.data.network.model.response.crypto.level.GetAccountLevelVisibilityResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
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

    @Override // com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository
    public Observable<Result<Boolean>> changeLevelVisibility(boolean z) {
        Observable<ApiBaseResponse<GetAccountLevelVisibilityResponse>> changeLevelVisibility = this.accountLevelApi.changeLevelVisibility(new ChangeRankVisibilityRequest(z));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = changeLevelVisibility.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<GetAccountLevelVisibilityResponse>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<GetAccountLevelVisibilityResponse> response) {
                HashMap hashMap;
                TelegramGateway telegramGateway;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    hashMap = this.cachedUserAccountLevelVisibility;
                    telegramGateway = this.telegramGateway;
                    hashMap.put(Long.valueOf(telegramGateway.getSelectedAccountId()), Boolean.valueOf(response.getPayload().getRankVisibility()));
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository
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
        Observable<R> map = levelVisibility.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<GetAccountLevelVisibilityResponse>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$getLevelVisibility$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<GetAccountLevelVisibilityResponse> response) {
                HashMap hashMap;
                TelegramGateway telegramGateway;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    hashMap = this.cachedUserAccountLevelVisibility;
                    telegramGateway = this.telegramGateway;
                    hashMap.put(Long.valueOf(telegramGateway.getSelectedAccountId()), Boolean.valueOf(response.getPayload().getRankVisibility()));
                    return Result.Companion.success(Boolean.valueOf(response.getPayload().getRankVisibility()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$getLevelVisibility$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        Observable<Result<Boolean>> concat = Observable.concat(empty, onErrorReturn);
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            if (…r(errorHandler)\n        )");
        return concat;
    }

    @Override // com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository
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
        Intrinsics.checkNotNullExpressionValue(concat, "concat(\n            if (…lRemote(userId)\n        )");
        return concat;
    }

    @Override // com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository
    public Observable<Result<AccountLevel>> getAccountLevelRemote(final long j) {
        Observable<ApiBaseResponse<GetAccountLevelResponse>> accountLevel = this.accountLevelApi.getAccountLevel(String.valueOf(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = accountLevel.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<GetAccountLevelResponse>, Result<? extends AccountLevel>>() { // from class: com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<AccountLevel> invoke(ApiBaseResponse<GetAccountLevelResponse> response) {
                HashMap hashMap;
                TelegramGateway telegramGateway;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                AccountLevel map2 = AccountLevel.Companion.map(response.getPayload().getAccountRank());
                Long valueOf = Long.valueOf(j);
                hashMap = this.cachedUserAccountLevel;
                hashMap.put(valueOf, map2);
                telegramGateway = this.telegramGateway;
                if (telegramGateway.getSelectedAccountId() == j) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.setAccountLevelMetadata(new AccountLevelMetadata(map2, 0));
                }
                return Result.Companion.success(map2);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<AccountLevel>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends AccountLevel>>() { // from class: com.iMe.storage.data.repository.crypto.level.AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<AccountLevel> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
