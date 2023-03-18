package com.smedialink.storage.data.repository.binancepay;

import com.smedialink.storage.data.mapper.binancepay.BinancePayMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinancePayCreateCollectionResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceCollectionOrder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$createCollection$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1700x1747962e extends Lambda implements Function1<ApiBaseResponse<BinancePayCreateCollectionResponse>, Result<? extends BinanceCollectionOrder>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1700x1747962e(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<BinanceCollectionOrder> invoke(ApiBaseResponse<BinancePayCreateCollectionResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(BinancePayMappingKt.mapToDomain(response.getPayload()));
    }
}
