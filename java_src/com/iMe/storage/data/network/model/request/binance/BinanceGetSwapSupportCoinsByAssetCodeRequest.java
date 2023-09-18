package com.iMe.storage.data.network.model.request.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetSwapSupportCoinsByAssetCodeRequest.kt */
/* loaded from: classes4.dex */
public final class BinanceGetSwapSupportCoinsByAssetCodeRequest {
    private final String assetCode;

    public static /* synthetic */ BinanceGetSwapSupportCoinsByAssetCodeRequest copy$default(BinanceGetSwapSupportCoinsByAssetCodeRequest binanceGetSwapSupportCoinsByAssetCodeRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceGetSwapSupportCoinsByAssetCodeRequest.assetCode;
        }
        return binanceGetSwapSupportCoinsByAssetCodeRequest.copy(str);
    }

    public final String component1() {
        return this.assetCode;
    }

    public final BinanceGetSwapSupportCoinsByAssetCodeRequest copy(String assetCode) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        return new BinanceGetSwapSupportCoinsByAssetCodeRequest(assetCode);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinanceGetSwapSupportCoinsByAssetCodeRequest) && Intrinsics.areEqual(this.assetCode, ((BinanceGetSwapSupportCoinsByAssetCodeRequest) obj).assetCode);
    }

    public int hashCode() {
        return this.assetCode.hashCode();
    }

    public String toString() {
        return "BinanceGetSwapSupportCoinsByAssetCodeRequest(assetCode=" + this.assetCode + ')';
    }

    public BinanceGetSwapSupportCoinsByAssetCodeRequest(String assetCode) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        this.assetCode = assetCode;
    }

    public final String getAssetCode() {
        return this.assetCode;
    }
}
