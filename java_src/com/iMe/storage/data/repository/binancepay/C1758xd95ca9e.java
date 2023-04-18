package com.iMe.storage.data.repository.binancepay;

import com.iMe.storage.data.mapper.binancepay.BinancePayMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetAuthTokensResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceAuthTokens;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAuthTokens$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1758xd95ca9e extends Lambda implements Function1<ApiBaseResponse<BinancePayGetAuthTokensResponse>, Result<? extends BinanceAuthTokens>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ BinanceInternalRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1758xd95ca9e(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, BinanceInternalRepositoryImpl binanceInternalRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = binanceInternalRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<BinanceAuthTokens> invoke(ApiBaseResponse<BinancePayGetAuthTokensResponse> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        BinanceAuthTokens mapToDomain = BinancePayMappingKt.mapToDomain(response.getPayload());
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setBinanceAuthSession(BinancePayMappingKt.mapToPrefs(mapToDomain));
        return Result.Companion.success(mapToDomain);
    }
}
