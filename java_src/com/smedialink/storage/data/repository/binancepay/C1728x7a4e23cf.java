package com.smedialink.storage.data.repository.binancepay;

import com.smedialink.storage.data.mapper.binancepay.BinancePayMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinanceTokenBalanceResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getUserBalance$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1728x7a4e23cf extends Lambda implements Function1<ApiBaseResponse<List<? extends BinanceTokenBalanceResponse>>, Result<? extends List<? extends BinanceTokenBalanceInfo>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1728x7a4e23cf(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends BinanceTokenBalanceInfo>> invoke(ApiBaseResponse<List<? extends BinanceTokenBalanceResponse>> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(BinancePayMappingKt.mapToDomainBinanceTokenBalanceResponse(response.getPayload()));
    }
}
