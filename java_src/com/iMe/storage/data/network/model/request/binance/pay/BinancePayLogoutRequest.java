package com.iMe.storage.data.network.model.request.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayLogoutRequest.kt */
/* loaded from: classes4.dex */
public final class BinancePayLogoutRequest {
    private final String accessToken;

    public static /* synthetic */ BinancePayLogoutRequest copy$default(BinancePayLogoutRequest binancePayLogoutRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayLogoutRequest.accessToken;
        }
        return binancePayLogoutRequest.copy(str);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final BinancePayLogoutRequest copy(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        return new BinancePayLogoutRequest(accessToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinancePayLogoutRequest) && Intrinsics.areEqual(this.accessToken, ((BinancePayLogoutRequest) obj).accessToken);
    }

    public int hashCode() {
        return this.accessToken.hashCode();
    }

    public String toString() {
        return "BinancePayLogoutRequest(accessToken=" + this.accessToken + ')';
    }

    public BinancePayLogoutRequest(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.accessToken = accessToken;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }
}
