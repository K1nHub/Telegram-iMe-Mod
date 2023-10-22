package com.iMe.storage.data.network.model.request.crypto.simplex;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetBuyingCryptoQuoteRequest.kt */
/* loaded from: classes3.dex */
public final class GetBuyingCryptoQuoteRequest {
    private final String digitalCurrency;
    private final String fiatCurrency;
    private final String networkType;
    private final float requestedAmount;
    private final String requestedCurrency;

    public static /* synthetic */ GetBuyingCryptoQuoteRequest copy$default(GetBuyingCryptoQuoteRequest getBuyingCryptoQuoteRequest, String str, String str2, String str3, float f, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getBuyingCryptoQuoteRequest.digitalCurrency;
        }
        if ((i & 2) != 0) {
            str2 = getBuyingCryptoQuoteRequest.fiatCurrency;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = getBuyingCryptoQuoteRequest.requestedCurrency;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            f = getBuyingCryptoQuoteRequest.requestedAmount;
        }
        float f2 = f;
        if ((i & 16) != 0) {
            str4 = getBuyingCryptoQuoteRequest.networkType;
        }
        return getBuyingCryptoQuoteRequest.copy(str, str5, str6, f2, str4);
    }

    public final String component1() {
        return this.digitalCurrency;
    }

    public final String component2() {
        return this.fiatCurrency;
    }

    public final String component3() {
        return this.requestedCurrency;
    }

    public final float component4() {
        return this.requestedAmount;
    }

    public final String component5() {
        return this.networkType;
    }

    public final GetBuyingCryptoQuoteRequest copy(String digitalCurrency, String fiatCurrency, String requestedCurrency, float f, String networkType) {
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(requestedCurrency, "requestedCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetBuyingCryptoQuoteRequest(digitalCurrency, fiatCurrency, requestedCurrency, f, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetBuyingCryptoQuoteRequest) {
            GetBuyingCryptoQuoteRequest getBuyingCryptoQuoteRequest = (GetBuyingCryptoQuoteRequest) obj;
            return Intrinsics.areEqual(this.digitalCurrency, getBuyingCryptoQuoteRequest.digitalCurrency) && Intrinsics.areEqual(this.fiatCurrency, getBuyingCryptoQuoteRequest.fiatCurrency) && Intrinsics.areEqual(this.requestedCurrency, getBuyingCryptoQuoteRequest.requestedCurrency) && Float.compare(this.requestedAmount, getBuyingCryptoQuoteRequest.requestedAmount) == 0 && Intrinsics.areEqual(this.networkType, getBuyingCryptoQuoteRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.digitalCurrency.hashCode() * 31) + this.fiatCurrency.hashCode()) * 31) + this.requestedCurrency.hashCode()) * 31) + Float.floatToIntBits(this.requestedAmount)) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "GetBuyingCryptoQuoteRequest(digitalCurrency=" + this.digitalCurrency + ", fiatCurrency=" + this.fiatCurrency + ", requestedCurrency=" + this.requestedCurrency + ", requestedAmount=" + this.requestedAmount + ", networkType=" + this.networkType + ')';
    }

    public GetBuyingCryptoQuoteRequest(String digitalCurrency, String fiatCurrency, String requestedCurrency, float f, String networkType) {
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(requestedCurrency, "requestedCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.digitalCurrency = digitalCurrency;
        this.fiatCurrency = fiatCurrency;
        this.requestedCurrency = requestedCurrency;
        this.requestedAmount = f;
        this.networkType = networkType;
    }

    public final String getDigitalCurrency() {
        return this.digitalCurrency;
    }

    public final String getFiatCurrency() {
        return this.fiatCurrency;
    }

    public final String getRequestedCurrency() {
        return this.requestedCurrency;
    }

    public final float getRequestedAmount() {
        return this.requestedAmount;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
