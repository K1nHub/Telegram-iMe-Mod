package com.iMe.storage.domain.interactor.crypto.level;

import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1898xd7d4d219 extends Lambda implements Function1<Result<? extends AccountLevel>, ObservableSource<? extends Result<? extends AccountLevelInformation>>> {
    final /* synthetic */ long $userId$inlined;
    final /* synthetic */ AccountLevelInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1898xd7d4d219(long j, AccountLevelInteractor accountLevelInteractor) {
        super(1);
        this.$userId$inlined = j;
        this.this$0 = accountLevelInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends AccountLevelInformation>> invoke(Result<? extends AccountLevel> result) {
        TelegramGateway telegramGateway;
        TelegramGateway telegramGateway2;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        long j = this.$userId$inlined;
        telegramGateway = this.this$0.telegramGateway;
        if (j == telegramGateway.getSelectedAccountId()) {
            ObservableSource map = this.this$0.getLevelVisibility().map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1899x37fea2f2(result, this.$userId$inlined, this.this$0)));
            Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
            return map;
        }
        AccountLevel data = result.getData();
        Intrinsics.checkNotNull(data);
        AccountLevel accountLevel = data;
        long j2 = this.$userId$inlined;
        telegramGateway2 = this.this$0.telegramGateway;
        Observable just = Observable.just(Result.Companion.success(new AccountLevelInformation(accountLevel, false, j2 == telegramGateway2.getSelectedAccountId())));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
