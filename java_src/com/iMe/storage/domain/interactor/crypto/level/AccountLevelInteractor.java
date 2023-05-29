package com.iMe.storage.domain.interactor.crypto.level;

import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
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

    public final Observable<Result<AccountLevelInformation>> getAccountLevelInformation(long j) {
        Observable<Result<AccountLevel>> distinctUntilChanged = this.accountLevelRepository.getAccountLevel(j).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "accountLevelRepository\n …  .distinctUntilChanged()");
        Observable<R> flatMap = distinctUntilChanged.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1969xd7d4d219(j, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<AccountLevelInformation>> distinctUntilChanged2 = flatMap.distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged2, "accountLevelRepository\n …  .distinctUntilChanged()");
        return distinctUntilChanged2;
    }
}
