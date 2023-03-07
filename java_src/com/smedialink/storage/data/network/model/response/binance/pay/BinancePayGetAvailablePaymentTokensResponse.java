package com.smedialink.storage.data.network.model.response.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetAvailablePaymentTokensResponse.kt */
/* loaded from: classes3.dex */
public final class BinancePayGetAvailablePaymentTokensResponse {
    private final String assetCode;
    private final String assetName;
    private final String assetShortName;
    private final String logoUrl;

    public static /* synthetic */ BinancePayGetAvailablePaymentTokensResponse copy$default(BinancePayGetAvailablePaymentTokensResponse binancePayGetAvailablePaymentTokensResponse, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayGetAvailablePaymentTokensResponse.assetCode;
        }
        if ((i & 2) != 0) {
            str2 = binancePayGetAvailablePaymentTokensResponse.assetName;
        }
        if ((i & 4) != 0) {
            str3 = binancePayGetAvailablePaymentTokensResponse.assetShortName;
        }
        if ((i & 8) != 0) {
            str4 = binancePayGetAvailablePaymentTokensResponse.logoUrl;
        }
        return binancePayGetAvailablePaymentTokensResponse.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.assetCode;
    }

    public final String component2() {
        return this.assetName;
    }

    public final String component3() {
        return this.assetShortName;
    }

    public final String component4() {
        return this.logoUrl;
    }

    public final BinancePayGetAvailablePaymentTokensResponse copy(String assetCode, String assetName, String assetShortName, String logoUrl) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        return new BinancePayGetAvailablePaymentTokensResponse(assetCode, assetName, assetShortName, logoUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinancePayGetAvailablePaymentTokensResponse) {
            BinancePayGetAvailablePaymentTokensResponse binancePayGetAvailablePaymentTokensResponse = (BinancePayGetAvailablePaymentTokensResponse) obj;
            return Intrinsics.areEqual(this.assetCode, binancePayGetAvailablePaymentTokensResponse.assetCode) && Intrinsics.areEqual(this.assetName, binancePayGetAvailablePaymentTokensResponse.assetName) && Intrinsics.areEqual(this.assetShortName, binancePayGetAvailablePaymentTokensResponse.assetShortName) && Intrinsics.areEqual(this.logoUrl, binancePayGetAvailablePaymentTokensResponse.logoUrl);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.assetCode.hashCode() * 31) + this.assetName.hashCode()) * 31) + this.assetShortName.hashCode()) * 31) + this.logoUrl.hashCode();
    }

    public String toString() {
        return "BinancePayGetAvailablePaymentTokensResponse(assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", assetShortName=" + this.assetShortName + ", logoUrl=" + this.logoUrl + ')';
    }

    public BinancePayGetAvailablePaymentTokensResponse(String assetCode, String assetName, String assetShortName, String logoUrl) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        this.assetCode = assetCode;
        this.assetName = assetName;
        this.assetShortName = assetShortName;
        this.logoUrl = logoUrl;
    }

    public final String getAssetCode() {
        return this.assetCode;
    }

    public final String getAssetName() {
        return this.assetName;
    }

    public final String getAssetShortName() {
        return this.assetShortName;
    }

    public final String getLogoUrl() {
        return this.logoUrl;
    }
}
