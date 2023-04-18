package com.iMe.storage.domain.interactor.crypto.level;

import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.repository.crypto.level.AccountLevelRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
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
        Observable<Result<Boolean>> subscribeOn = this.accountLevelRepository.changeLevelVisibility(z).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "accountLevelRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> getLevelVisibility() {
        Observable<Result<Boolean>> subscribeOn = this.accountLevelRepository.getLevelVisibility().subscribeOn(this.schedulersProvider.mo694io());
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
        Observable<Result<AccountLevel>> subscribeOn = this.accountLevelRepository.getAccountLevelRemote(j).subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "accountLevelRepository\n …(schedulersProvider.io())");
        return subscribeOn;
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
        Observable<R> flatMap = distinctUntilChanged.flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1898xd7d4d219(j, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<AccountLevelInformation>> subscribeOn = flatMap.distinctUntilChanged().subscribeOn(this.schedulersProvider.mo694io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "accountLevelRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
