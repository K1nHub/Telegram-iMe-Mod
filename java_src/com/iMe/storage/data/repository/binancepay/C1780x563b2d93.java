package com.iMe.storage.data.repository.binancepay;

import com.iMe.storage.data.mapper.binancepay.BinancePayMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetAvailablePaymentTokensResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1780x563b2d93 extends Lambda implements Function1<ApiBaseResponse<List<? extends BinancePayGetAvailablePaymentTokensResponse>>, Result<? extends List<? extends BinanceTokenInfo>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1780x563b2d93(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends BinanceTokenInfo>> invoke(ApiBaseResponse<List<? extends BinancePayGetAvailablePaymentTokensResponse>> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(BinancePayMappingKt.mapToDomain((List<BinancePayGetAvailablePaymentTokensResponse>) response.getPayload()));
    }
}
