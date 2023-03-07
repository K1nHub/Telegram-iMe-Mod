package com.smedialink.storage.domain.interactor.crypto.level;

import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import com.smedialink.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountLevelInteractor.kt */
/* loaded from: classes3.dex */
public final class AccountLevelInteractor {
    private final AccountLevelRepository accountLevelRepository;
    private final SchedulersProvider schedulersProvider;
    private final TelegramGateway telegramGateway;

    public AccountLevelInteractor(AccountLevelRepository accountLevelRepository, TelegramGateway telegramGateway, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(accountLevelRepository, "accountLevelRepository");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.accountLevelRepository = accountLevelRepository;
        this.telegramGateway = telegramGateway;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<Boolean>> changeLevelVisibility(boolean z) {
        Observable<Result<Boolean>> subscribeOn = this.accountLevelRepository.changeLevelVisibility(z).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "accountLevelRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> getLevelVisibility() {
        Observable<Result<Boolean>> subscribeOn = this.accountLevelRepository.getLevelVisibility().subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "accountLevelRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getAccountLevelRemote$default(AccountLevelInteractor accountLevelInteractor, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = accountLevelInteractor.telegramGateway.getSelectedAccountId();
        }
        return accountLevelInteractor.getAccountLevelRemote(j);
    }

    public final Observable<Result<AccountLevel>> getAccountLevelRemote(long j) {
        Observable<Result<AccountLevel>> subscribeOn = this.accountLevelRepository.getAccountLevelRemote(j).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "accountLevelRepository\n …(schedulersProvider.io())");
        return subscribeOn;
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
        Observable<R> flatMap = distinctUntilChanged.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(final Result result) {
                TelegramGateway telegramGateway;
                TelegramGateway telegramGateway2;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                long j2 = j;
                telegramGateway = this.telegramGateway;
                if (j2 == telegramGateway.getSelectedAccountId()) {
                    Observable<Result<Boolean>> levelVisibility = this.getLevelVisibility();
                    final long j3 = j;
                    final AccountLevelInteractor accountLevelInteractor = this;
                    Observable<R> map = levelVisibility.map(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1
                        /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
                        @Override // io.reactivex.functions.Function
                        public final Object apply(Result result2) {
                            TelegramGateway telegramGateway3;
                            Intrinsics.checkNotNullParameter(result2, "result");
                            if (!(result2 instanceof Result.Success)) {
                                if (result2 instanceof Result.Error) {
                                    return Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                }
                                if (result2 instanceof Object) {
                                    return result2;
                                }
                                return null;
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
                    });
                    Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                    return map;
                }
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                AccountLevel accountLevel = (AccountLevel) data;
                long j4 = j;
                telegramGateway2 = this.telegramGateway;
                Observable just = Observable.just(Result.Companion.success(new AccountLevelInformation(accountLevel, false, j4 == telegramGateway2.getSelectedAccountId())));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<AccountLevelInformation>> subscribeOn = flatMap.distinctUntilChanged().subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "accountLevelRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
