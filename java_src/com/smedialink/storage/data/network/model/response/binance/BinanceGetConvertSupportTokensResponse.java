package com.smedialink.storage.data.network.model.response.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetConvertSupportTokensResponse.kt */
/* loaded from: classes3.dex */
public final class BinanceGetConvertSupportTokensResponse {
    private final String assetCode;
    private final String assetName;
    private final String assetShortName;
    private final String logoUrl;

    public static /* synthetic */ BinanceGetConvertSupportTokensResponse copy$default(BinanceGetConvertSupportTokensResponse binanceGetConvertSupportTokensResponse, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceGetConvertSupportTokensResponse.assetCode;
        }
        if ((i & 2) != 0) {
            str2 = binanceGetConvertSupportTokensResponse.assetName;
        }
        if ((i & 4) != 0) {
            str3 = binanceGetConvertSupportTokensResponse.assetShortName;
        }
        if ((i & 8) != 0) {
            str4 = binanceGetConvertSupportTokensResponse.logoUrl;
        }
        return binanceGetConvertSupportTokensResponse.copy(str, str2, str3, str4);
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

    public final BinanceGetConvertSupportTokensResponse copy(String assetCode, String assetName, String assetShortName, String logoUrl) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        return new BinanceGetConvertSupportTokensResponse(assetCode, assetName, assetShortName, logoUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceGetConvertSupportTokensResponse) {
            BinanceGetConvertSupportTokensResponse binanceGetConvertSupportTokensResponse = (BinanceGetConvertSupportTokensResponse) obj;
            return Intrinsics.areEqual(this.assetCode, binanceGetConvertSupportTokensResponse.assetCode) && Intrinsics.areEqual(this.assetName, binanceGetConvertSupportTokensResponse.assetName) && Intrinsics.areEqual(this.assetShortName, binanceGetConvertSupportTokensResponse.assetShortName) && Intrinsics.areEqual(this.logoUrl, binanceGetConvertSupportTokensResponse.logoUrl);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.assetCode.hashCode() * 31) + this.assetName.hashCode()) * 31) + this.assetShortName.hashCode()) * 31) + this.logoUrl.hashCode();
    }

    public String toString() {
        return "BinanceGetConvertSupportTokensResponse(assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", assetShortName=" + this.assetShortName + ", logoUrl=" + this.logoUrl + ')';
    }

    public BinanceGetConvertSupportTokensResponse(String assetCode, String assetName, String assetShortName, String logoUrl) {
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
