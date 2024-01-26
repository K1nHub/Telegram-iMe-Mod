package com.iMe.storage.domain.interactor.crypto.level;

import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountLevelInteractor.kt */
/* loaded from: classes3.dex */
public final class AccountLevelInteractor {
    private final AccountLevelRepository accountLevelRepository;
    private final TelegramGateway telegramGateway;

    public AccountLevelInteractor(AccountLevelRepository accountLevelRepository, TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(accountLevelRepository, "accountLevelRepository");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.accountLevelRepository = accountLevelRepository;
        this.telegramGateway = telegramGateway;
    }

    public final Observable<Result<Boolean>> changeLevelVisibility(boolean z) {
        return this.accountLevelRepository.changeLevelVisibility(z);
    }

    public final Observable<Result<Boolean>> getLevelVisibility() {
        return this.accountLevelRepository.getLevelVisibility();
    }

    public static /* synthetic */ Observable getAccountLevelRemote$default(AccountLevelInteractor accountLevelInteractor, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = accountLevelInteractor.telegramGateway.getSelectedAccountId();
        }
        return accountLevelInteractor.getAccountLevelRemote(j);
    }

    public final Observable<Result<AccountLevel>> getAccountLevelRemote(long j) {
        return this.accountLevelRepository.getAccountLevelRemote(j);
    }

    public static /* synthetic */ Observable getAccountLevelInformation$default(AccountLevelInteractor accountLevelInteractor, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = accountLevelInteractor.telegramGateway.getSelectedAccountId();
        }
        return accountLevelInteractor.getAccountLevelInformation(j);
    }

    public final Observable<Result<AccountLevelInformation>> getAccountLevelInformation(final long j) {
        Observable<Result<AccountLevel>> distinctUntilChanged = this.accountLevelRepository.getAccountLevel(j).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "accountLevelRepository\n …  .distinctUntilChanged()");
        Observable<R> flatMap = distinctUntilChanged.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends AccountLevel>, ObservableSource<? extends Result<? extends AccountLevelInformation>>>() { // from class: com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends AccountLevelInformation>> invoke(final Result<? extends AccountLevel> result) {
                TelegramGateway telegramGateway;
                TelegramGateway telegramGateway2;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                long j2 = j;
                telegramGateway = this.telegramGateway;
                if (j2 == telegramGateway.getSelectedAccountId()) {
                    Observable<Result<Boolean>> levelVisibility = this.getLevelVisibility();
                    final long j3 = j;
                    final AccountLevelInteractor accountLevelInteractor = this;
                    ObservableSource map = levelVisibility.map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends AccountLevelInformation>>() { // from class: com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // kotlin.jvm.functions.Function1
                        public final Result<? extends AccountLevelInformation> invoke(Result<? extends Boolean> result2) {
                            TelegramGateway telegramGateway3;
                            Intrinsics.checkNotNullParameter(result2, "result");
                            if (!(result2 instanceof Result.Success)) {
                                if (result2 instanceof Result.Error) {
                                    Result<? extends AccountLevelInformation> error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                    Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                                    return error$default2;
                                } else if (result2 instanceof Object) {
                                    return result2;
                                } else {
                                    return null;
                                }
                            }
                            Object data = Result.this.getData();
                            Intrinsics.checkNotNull(data);
                            AccountLevel accountLevel = (AccountLevel) data;
                            Object data2 = result2.getData();
                            Intrinsics.checkNotNull(data2);
                            boolean booleanValue = ((Boolean) data2).booleanValue();
                            long j4 = j3;
                            telegramGateway3 = accountLevelInteractor.telegramGateway;
                            return Result.Companion.success(new AccountLevelInformation(accountLevel, booleanValue, j4 == telegramGateway3.getSelectedAccountId()));
                        }
                    }));
                    Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                    return map;
                }
                AccountLevel data = result.getData();
                Intrinsics.checkNotNull(data);
                AccountLevel accountLevel = data;
                long j4 = j;
                telegramGateway2 = this.telegramGateway;
                Observable just = Observable.just(Result.Companion.success(new AccountLevelInformation(accountLevel, false, j4 == telegramGateway2.getSelectedAccountId())));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<AccountLevelInformation>> distinctUntilChanged2 = flatMap.distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged2, "accountLevelRepository\n …  .distinctUntilChanged()");
        return distinctUntilChanged2;
    }
}
