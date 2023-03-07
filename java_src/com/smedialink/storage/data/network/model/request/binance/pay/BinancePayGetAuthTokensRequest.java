package com.smedialink.storage.data.network.model.request.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetAuthTokensRequest.kt */
/* loaded from: classes3.dex */
public final class BinancePayGetAuthTokensRequest {
    private final String grantType;
    private final String value;

    public static /* synthetic */ BinancePayGetAuthTokensRequest copy$default(BinancePayGetAuthTokensRequest binancePayGetAuthTokensRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayGetAuthTokensRequest.grantType;
        }
        if ((i & 2) != 0) {
            str2 = binancePayGetAuthTokensRequest.value;
        }
        return binancePayGetAuthTokensRequest.copy(str, str2);
    }

    public final String component1() {
        return this.grantType;
    }

    public final String component2() {
        return this.value;
    }

    public final BinancePayGetAuthTokensRequest copy(String grantType, String value) {
        Intrinsics.checkNotNullParameter(grantType, "grantType");
        Intrinsics.checkNotNullParameter(value, "value");
        return new BinancePayGetAuthTokensRequest(grantType, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinancePayGetAuthTokensRequest) {
            BinancePayGetAuthTokensRequest binancePayGetAuthTokensRequest = (BinancePayGetAuthTokensRequest) obj;
            return Intrinsics.areEqual(this.grantType, binancePayGetAuthTokensRequest.grantType) && Intrinsics.areEqual(this.value, binancePayGetAuthTokensRequest.value);
        }
        return false;
    }

    public int hashCode() {
        return (this.grantType.hashCode() * 31) + this.value.hashCode();
    }

    public String toString() {
        return "BinancePayGetAuthTokensRequest(grantType=" + this.grantType + ", value=" + this.value + ')';
    }

    public BinancePayGetAuthTokensRequest(String grantType, String value) {
        Intrinsics.checkNotNullParameter(grantType, "grantType");
        Intrinsics.checkNotNullParameter(value, "value");
        this.grantType = grantType;
        this.value = value;
    }

    public final String getGrantType() {
        return this.grantType;
    }

    public final String getValue() {
        return this.value;
    }
}
