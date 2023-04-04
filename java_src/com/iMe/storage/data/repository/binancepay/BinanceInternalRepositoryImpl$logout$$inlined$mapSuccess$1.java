package com.iMe.storage.data.repository.binancepay;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class BinanceInternalRepositoryImpl$logout$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<Object>, Result<? extends Boolean>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ BinanceInternalRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinanceInternalRepositoryImpl$logout$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, BinanceInternalRepositoryImpl binanceInternalRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = binanceInternalRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            cryptoPreferenceHelper.resetBinanceAccount();
            return Result.Companion.success(Boolean.TRUE);
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
