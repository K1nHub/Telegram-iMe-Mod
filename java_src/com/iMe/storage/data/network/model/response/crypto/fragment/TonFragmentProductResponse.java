package com.iMe.storage.data.network.model.response.crypto.fragment;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentProductResponse {
    private final String fiatPrice;
    private final String price;
    private final String timestamp;
    private final String username;

    public static /* synthetic */ TonFragmentProductResponse copy$default(TonFragmentProductResponse tonFragmentProductResponse, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tonFragmentProductResponse.username;
        }
        if ((i & 2) != 0) {
            str2 = tonFragmentProductResponse.price;
        }
        if ((i & 4) != 0) {
            str3 = tonFragmentProductResponse.timestamp;
        }
        if ((i & 8) != 0) {
            str4 = tonFragmentProductResponse.fiatPrice;
        }
        return tonFragmentProductResponse.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.username;
    }

    public final String component2() {
        return this.price;
    }

    public final String component3() {
        return this.timestamp;
    }

    public final String component4() {
        return this.fiatPrice;
    }

    public final TonFragmentProductResponse copy(String username, String price, String timestamp, String fiatPrice) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
        return new TonFragmentProductResponse(username, price, timestamp, fiatPrice);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentProductResponse) {
            TonFragmentProductResponse tonFragmentProductResponse = (TonFragmentProductResponse) obj;
            return Intrinsics.areEqual(this.username, tonFragmentProductResponse.username) && Intrinsics.areEqual(this.price, tonFragmentProductResponse.price) && Intrinsics.areEqual(this.timestamp, tonFragmentProductResponse.timestamp) && Intrinsics.areEqual(this.fiatPrice, tonFragmentProductResponse.fiatPrice);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.username.hashCode() * 31) + this.price.hashCode()) * 31) + this.timestamp.hashCode()) * 31) + this.fiatPrice.hashCode();
    }

    public String toString() {
        return "TonFragmentProductResponse(username=" + this.username + ", price=" + this.price + ", timestamp=" + this.timestamp + ", fiatPrice=" + this.fiatPrice + ')';
    }

    public TonFragmentProductResponse(String username, String price, String timestamp, String fiatPrice) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
        this.username = username;
        this.price = price;
        this.timestamp = timestamp;
        this.fiatPrice = fiatPrice;
    }

    public final String getUsername() {
        return this.username;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getTimestamp() {
        return this.timestamp;
    }

    public final String getFiatPrice() {
        return this.fiatPrice;
    }
}
