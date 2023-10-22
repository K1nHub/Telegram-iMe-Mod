package com.iMe.storage.data.network.model.response.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetTokenReplenishAddressResponse.kt */
/* loaded from: classes3.dex */
public final class BinanceGetTokenReplenishAddressResponse {
    private final String address;
    private final String url;

    public static /* synthetic */ BinanceGetTokenReplenishAddressResponse copy$default(BinanceGetTokenReplenishAddressResponse binanceGetTokenReplenishAddressResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceGetTokenReplenishAddressResponse.address;
        }
        if ((i & 2) != 0) {
            str2 = binanceGetTokenReplenishAddressResponse.url;
        }
        return binanceGetTokenReplenishAddressResponse.copy(str, str2);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.url;
    }

    public final BinanceGetTokenReplenishAddressResponse copy(String address, String url) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(url, "url");
        return new BinanceGetTokenReplenishAddressResponse(address, url);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceGetTokenReplenishAddressResponse) {
            BinanceGetTokenReplenishAddressResponse binanceGetTokenReplenishAddressResponse = (BinanceGetTokenReplenishAddressResponse) obj;
            return Intrinsics.areEqual(this.address, binanceGetTokenReplenishAddressResponse.address) && Intrinsics.areEqual(this.url, binanceGetTokenReplenishAddressResponse.url);
        }
        return false;
    }

    public int hashCode() {
        return (this.address.hashCode() * 31) + this.url.hashCode();
    }

    public String toString() {
        return "BinanceGetTokenReplenishAddressResponse(address=" + this.address + ", url=" + this.url + ')';
    }

    public BinanceGetTokenReplenishAddressResponse(String address, String url) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(url, "url");
        this.address = address;
        this.url = url;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getUrl() {
        return this.url;
    }
}
