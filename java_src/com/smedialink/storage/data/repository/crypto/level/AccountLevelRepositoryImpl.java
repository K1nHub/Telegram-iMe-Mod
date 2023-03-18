package com.smedialink.storage.data.repository.crypto.level;

import com.smedialink.storage.data.network.api.own.AccountLevelApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.level.ChangeRankVisibilityRequest;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
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
        Observable<R> map = this.accountLevelApi.changeLevelVisibility(new ChangeRankVisibilityRequest(z)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1748xafaa2290(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1747x28a1e811(this.errorHandler)));
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
        Observable<R> map = this.accountLevelApi.getLevelVisibility().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1752x717ec450(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1751xa1617e51(this.errorHandler)));
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
    public Observable<Result<AccountLevel>> getAccountLevelRemote(long j) {
        Observable<R> map = this.accountLevelApi.getAccountLevel(String.valueOf(j)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1750xd866155d(this.firebaseErrorHandler, this, j)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<AccountLevel>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1749x17644ee4(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
