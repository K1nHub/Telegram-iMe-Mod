package com.smedialink.storage.data.repository.crypto.simplex;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.simplex.CreateBuyingCryptoPaymentRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.simplex.CreateBuyingCryptoPaymentResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.simplex.SimplexRepositoryImpl$createBuyingCryptoPayment$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1766xab3d1946 extends Lambda implements Function1<ApiBaseResponse<CreateBuyingCryptoPaymentResponse>, Result<? extends BuyingCryptoPayment>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ CreateBuyingCryptoPaymentRequest $request$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1766xab3d1946(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, CreateBuyingCryptoPaymentRequest createBuyingCryptoPaymentRequest) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.$request$inlined = createBuyingCryptoPaymentRequest;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<BuyingCryptoPayment> invoke(ApiBaseResponse<CreateBuyingCryptoPaymentResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(new BuyingCryptoPayment(this.$request$inlined.getOrderId(), response.getPayload().getHtml()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
