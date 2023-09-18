package com.iMe.storage.domain.model.binancepay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTokenInfo.kt */
/* loaded from: classes4.dex */
public final class BinanceTokenInfo {
    private final String asset;
    private final String assetLogoUrl;
    private final String assetName;
    private final String assetShortName;

    public static /* synthetic */ BinanceTokenInfo copy$default(BinanceTokenInfo binanceTokenInfo, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceTokenInfo.asset;
        }
        if ((i & 2) != 0) {
            str2 = binanceTokenInfo.assetName;
        }
        if ((i & 4) != 0) {
            str3 = binanceTokenInfo.assetShortName;
        }
        if ((i & 8) != 0) {
            str4 = binanceTokenInfo.assetLogoUrl;
        }
        return binanceTokenInfo.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.asset;
    }

    public final String component2() {
        return this.assetName;
    }

    public final String component3() {
        return this.assetShortName;
    }

    public final String component4() {
        return this.assetLogoUrl;
    }

    public final BinanceTokenInfo copy(String asset, String assetName, String assetShortName, String assetLogoUrl) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(assetLogoUrl, "assetLogoUrl");
        return new BinanceTokenInfo(asset, assetName, assetShortName, assetLogoUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceTokenInfo) {
            BinanceTokenInfo binanceTokenInfo = (BinanceTokenInfo) obj;
            return Intrinsics.areEqual(this.asset, binanceTokenInfo.asset) && Intrinsics.areEqual(this.assetName, binanceTokenInfo.assetName) && Intrinsics.areEqual(this.assetShortName, binanceTokenInfo.assetShortName) && Intrinsics.areEqual(this.assetLogoUrl, binanceTokenInfo.assetLogoUrl);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.asset.hashCode() * 31) + this.assetName.hashCode()) * 31) + this.assetShortName.hashCode()) * 31) + this.assetLogoUrl.hashCode();
    }

    public String toString() {
        return "BinanceTokenInfo(asset=" + this.asset + ", assetName=" + this.assetName + ", assetShortName=" + this.assetShortName + ", assetLogoUrl=" + this.assetLogoUrl + ')';
    }

    public BinanceTokenInfo(String asset, String assetName, String assetShortName, String assetLogoUrl) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(assetLogoUrl, "assetLogoUrl");
        this.asset = asset;
        this.assetName = assetName;
        this.assetShortName = assetShortName;
        this.assetLogoUrl = assetLogoUrl;
    }

    public final String getAsset() {
        return this.asset;
    }

    public final String getAssetName() {
        return this.assetName;
    }

    public final String getAssetShortName() {
        return this.assetShortName;
    }

    public final String getAssetLogoUrl() {
        return this.assetLogoUrl;
    }
}
