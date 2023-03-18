package com.smedialink.storage.data.repository.binancepay;

import com.smedialink.storage.data.mapper.binancepay.BinancePayMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinancePayGetUserInfoResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<BinancePayGetUserInfoResponse>, Result<? extends BinanceUserInfo>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ BinanceInternalRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, BinanceInternalRepositoryImpl binanceInternalRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = binanceInternalRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<BinanceUserInfo> invoke(ApiBaseResponse<BinancePayGetUserInfoResponse> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        BinanceUserInfo mapToDomain = BinancePayMappingKt.mapToDomain(response.getPayload());
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setBinanceUserInfo(BinancePayMappingKt.mapToPrefs(mapToDomain));
        return Result.Companion.success(mapToDomain);
    }
}
