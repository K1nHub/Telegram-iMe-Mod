package com.iMe.storage.domain.model.binancepay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTokenReplenishInfo.kt */
/* loaded from: classes3.dex */
public final class BinanceTokenReplenishInfo {
    private final String address;
    private final String networkId;

    public static /* synthetic */ BinanceTokenReplenishInfo copy$default(BinanceTokenReplenishInfo binanceTokenReplenishInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceTokenReplenishInfo.networkId;
        }
        if ((i & 2) != 0) {
            str2 = binanceTokenReplenishInfo.address;
        }
        return binanceTokenReplenishInfo.copy(str, str2);
    }

    public final String component1() {
        return this.networkId;
    }

    public final String component2() {
        return this.address;
    }

    public final BinanceTokenReplenishInfo copy(String networkId, String address) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(address, "address");
        return new BinanceTokenReplenishInfo(networkId, address);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceTokenReplenishInfo) {
            BinanceTokenReplenishInfo binanceTokenReplenishInfo = (BinanceTokenReplenishInfo) obj;
            return Intrinsics.areEqual(this.networkId, binanceTokenReplenishInfo.networkId) && Intrinsics.areEqual(this.address, binanceTokenReplenishInfo.address);
        }
        return false;
    }

    public int hashCode() {
        return (this.networkId.hashCode() * 31) + this.address.hashCode();
    }

    public String toString() {
        return "BinanceTokenReplenishInfo(networkId=" + this.networkId + ", address=" + this.address + ')';
    }

    public BinanceTokenReplenishInfo(String networkId, String address) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(address, "address");
        this.networkId = networkId;
        this.address = address;
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final String getAddress() {
        return this.address;
    }
}
