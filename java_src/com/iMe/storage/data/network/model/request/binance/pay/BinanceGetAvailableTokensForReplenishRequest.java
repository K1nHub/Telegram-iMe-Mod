package com.iMe.storage.data.network.model.request.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetAvailableTokensForReplenishRequest.kt */
/* loaded from: classes3.dex */
public final class BinanceGetAvailableTokensForReplenishRequest {
    private final String network;

    public static /* synthetic */ BinanceGetAvailableTokensForReplenishRequest copy$default(BinanceGetAvailableTokensForReplenishRequest binanceGetAvailableTokensForReplenishRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceGetAvailableTokensForReplenishRequest.network;
        }
        return binanceGetAvailableTokensForReplenishRequest.copy(str);
    }

    public final String component1() {
        return this.network;
    }

    public final BinanceGetAvailableTokensForReplenishRequest copy(String network) {
        Intrinsics.checkNotNullParameter(network, "network");
        return new BinanceGetAvailableTokensForReplenishRequest(network);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinanceGetAvailableTokensForReplenishRequest) && Intrinsics.areEqual(this.network, ((BinanceGetAvailableTokensForReplenishRequest) obj).network);
    }

    public int hashCode() {
        return this.network.hashCode();
    }

    public String toString() {
        return "BinanceGetAvailableTokensForReplenishRequest(network=" + this.network + ')';
    }

    public BinanceGetAvailableTokensForReplenishRequest(String network) {
        Intrinsics.checkNotNullParameter(network, "network");
        this.network = network;
    }

    public final String getNetwork() {
        return this.network;
    }
}
