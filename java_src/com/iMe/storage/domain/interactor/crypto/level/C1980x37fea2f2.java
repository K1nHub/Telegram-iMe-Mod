package com.iMe.storage.domain.interactor.crypto.level;

import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1980x37fea2f2 extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends AccountLevelInformation>> {
    final /* synthetic */ Result $accountLevelResult$inlined;
    final /* synthetic */ long $userId$inlined;
    final /* synthetic */ AccountLevelInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1980x37fea2f2(Result result, long j, AccountLevelInteractor accountLevelInteractor) {
        super(1);
        this.$accountLevelResult$inlined = result;
        this.$userId$inlined = j;
        this.this$0 = accountLevelInteractor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends AccountLevelInformation> invoke(Result<? extends Boolean> result) {
        TelegramGateway telegramGateway;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends AccountLevelInformation> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        Object data = this.$accountLevelResult$inlined.getData();
        Intrinsics.checkNotNull(data);
        AccountLevel accountLevel = (AccountLevel) data;
        Object data2 = result.getData();
        Intrinsics.checkNotNull(data2);
        boolean booleanValue = ((Boolean) data2).booleanValue();
        long j = this.$userId$inlined;
        telegramGateway = this.this$0.telegramGateway;
        return Result.Companion.success(new AccountLevelInformation(accountLevel, booleanValue, j == telegramGateway.getSelectedAccountId()));
    }
}
