package com.iMe.storage.data.network.model.request.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetTokenReplenishAddressRequest.kt */
/* loaded from: classes4.dex */
public final class BinanceGetTokenReplenishAddressRequest {
    private final String assetCode;
    private final String network;

    public static /* synthetic */ BinanceGetTokenReplenishAddressRequest copy$default(BinanceGetTokenReplenishAddressRequest binanceGetTokenReplenishAddressRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceGetTokenReplenishAddressRequest.assetCode;
        }
        if ((i & 2) != 0) {
            str2 = binanceGetTokenReplenishAddressRequest.network;
        }
        return binanceGetTokenReplenishAddressRequest.copy(str, str2);
    }

    public final String component1() {
        return this.assetCode;
    }

    public final String component2() {
        return this.network;
    }

    public final BinanceGetTokenReplenishAddressRequest copy(String assetCode, String network) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(network, "network");
        return new BinanceGetTokenReplenishAddressRequest(assetCode, network);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceGetTokenReplenishAddressRequest) {
            BinanceGetTokenReplenishAddressRequest binanceGetTokenReplenishAddressRequest = (BinanceGetTokenReplenishAddressRequest) obj;
            return Intrinsics.areEqual(this.assetCode, binanceGetTokenReplenishAddressRequest.assetCode) && Intrinsics.areEqual(this.network, binanceGetTokenReplenishAddressRequest.network);
        }
        return false;
    }

    public int hashCode() {
        return (this.assetCode.hashCode() * 31) + this.network.hashCode();
    }

    public String toString() {
        return "BinanceGetTokenReplenishAddressRequest(assetCode=" + this.assetCode + ", network=" + this.network + ')';
    }

    public BinanceGetTokenReplenishAddressRequest(String assetCode, String network) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(network, "network");
        this.assetCode = assetCode;
        this.network = network;
    }

    public final String getAssetCode() {
        return this.assetCode;
    }

    public final String getNetwork() {
        return this.network;
    }
}
