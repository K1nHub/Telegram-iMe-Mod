package com.smedialink.storage.domain.model.binancepay;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTokenReplenishInfo.kt */
/* loaded from: classes3.dex */
public final class BinanceTokenReplenishInfo {
    private final String address;
    private final NetworkType networkType;

    public static /* synthetic */ BinanceTokenReplenishInfo copy$default(BinanceTokenReplenishInfo binanceTokenReplenishInfo, NetworkType networkType, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            networkType = binanceTokenReplenishInfo.networkType;
        }
        if ((i & 2) != 0) {
            str = binanceTokenReplenishInfo.address;
        }
        return binanceTokenReplenishInfo.copy(networkType, str);
    }

    public final NetworkType component1() {
        return this.networkType;
    }

    public final String component2() {
        return this.address;
    }

    public final BinanceTokenReplenishInfo copy(NetworkType networkType, String address) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(address, "address");
        return new BinanceTokenReplenishInfo(networkType, address);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceTokenReplenishInfo) {
            BinanceTokenReplenishInfo binanceTokenReplenishInfo = (BinanceTokenReplenishInfo) obj;
            return this.networkType == binanceTokenReplenishInfo.networkType && Intrinsics.areEqual(this.address, binanceTokenReplenishInfo.address);
        }
        return false;
    }

    public int hashCode() {
        return (this.networkType.hashCode() * 31) + this.address.hashCode();
    }

    public String toString() {
        return "BinanceTokenReplenishInfo(networkType=" + this.networkType + ", address=" + this.address + ')';
    }

    public BinanceTokenReplenishInfo(NetworkType networkType, String address) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(address, "address");
        this.networkType = networkType;
        this.address = address;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final String getAddress() {
        return this.address;
    }
}
