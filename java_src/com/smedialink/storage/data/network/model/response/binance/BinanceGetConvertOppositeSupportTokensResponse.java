package com.smedialink.storage.data.network.model.response.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetConvertOppositeSupportTokensResponse.kt */
/* loaded from: classes3.dex */
public final class BinanceGetConvertOppositeSupportTokensResponse {
    private final String assetCode;
    private final String assetName;
    private final String assetShortName;
    private final String logoUrl;
    private final String maximumLimit;
    private final String minimumLimit;

    public static /* synthetic */ BinanceGetConvertOppositeSupportTokensResponse copy$default(BinanceGetConvertOppositeSupportTokensResponse binanceGetConvertOppositeSupportTokensResponse, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceGetConvertOppositeSupportTokensResponse.assetCode;
        }
        if ((i & 2) != 0) {
            str2 = binanceGetConvertOppositeSupportTokensResponse.assetName;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = binanceGetConvertOppositeSupportTokensResponse.assetShortName;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = binanceGetConvertOppositeSupportTokensResponse.logoUrl;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            str5 = binanceGetConvertOppositeSupportTokensResponse.minimumLimit;
        }
        String str10 = str5;
        if ((i & 32) != 0) {
            str6 = binanceGetConvertOppositeSupportTokensResponse.maximumLimit;
        }
        return binanceGetConvertOppositeSupportTokensResponse.copy(str, str7, str8, str9, str10, str6);
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

    public final String component5() {
        return this.minimumLimit;
    }

    public final String component6() {
        return this.maximumLimit;
    }

    public final BinanceGetConvertOppositeSupportTokensResponse copy(String assetCode, String assetName, String assetShortName, String logoUrl, String minimumLimit, String maximumLimit) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(minimumLimit, "minimumLimit");
        Intrinsics.checkNotNullParameter(maximumLimit, "maximumLimit");
        return new BinanceGetConvertOppositeSupportTokensResponse(assetCode, assetName, assetShortName, logoUrl, minimumLimit, maximumLimit);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceGetConvertOppositeSupportTokensResponse) {
            BinanceGetConvertOppositeSupportTokensResponse binanceGetConvertOppositeSupportTokensResponse = (BinanceGetConvertOppositeSupportTokensResponse) obj;
            return Intrinsics.areEqual(this.assetCode, binanceGetConvertOppositeSupportTokensResponse.assetCode) && Intrinsics.areEqual(this.assetName, binanceGetConvertOppositeSupportTokensResponse.assetName) && Intrinsics.areEqual(this.assetShortName, binanceGetConvertOppositeSupportTokensResponse.assetShortName) && Intrinsics.areEqual(this.logoUrl, binanceGetConvertOppositeSupportTokensResponse.logoUrl) && Intrinsics.areEqual(this.minimumLimit, binanceGetConvertOppositeSupportTokensResponse.minimumLimit) && Intrinsics.areEqual(this.maximumLimit, binanceGetConvertOppositeSupportTokensResponse.maximumLimit);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.assetCode.hashCode() * 31) + this.assetName.hashCode()) * 31) + this.assetShortName.hashCode()) * 31) + this.logoUrl.hashCode()) * 31) + this.minimumLimit.hashCode()) * 31) + this.maximumLimit.hashCode();
    }

    public String toString() {
        return "BinanceGetConvertOppositeSupportTokensResponse(assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", assetShortName=" + this.assetShortName + ", logoUrl=" + this.logoUrl + ", minimumLimit=" + this.minimumLimit + ", maximumLimit=" + this.maximumLimit + ')';
    }

    public BinanceGetConvertOppositeSupportTokensResponse(String assetCode, String assetName, String assetShortName, String logoUrl, String minimumLimit, String maximumLimit) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(minimumLimit, "minimumLimit");
        Intrinsics.checkNotNullParameter(maximumLimit, "maximumLimit");
        this.assetCode = assetCode;
        this.assetName = assetName;
        this.assetShortName = assetShortName;
        this.logoUrl = logoUrl;
        this.minimumLimit = minimumLimit;
        this.maximumLimit = maximumLimit;
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

    public final String getMinimumLimit() {
        return this.minimumLimit;
    }

    public final String getMaximumLimit() {
        return this.maximumLimit;
    }
}
