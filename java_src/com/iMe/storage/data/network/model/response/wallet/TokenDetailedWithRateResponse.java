package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenDetailedWithRateResponse.kt */
/* loaded from: classes3.dex */
public final class TokenDetailedWithRateResponse {
    private final String address;
    private final String avatar;
    private final int decimals;
    private final boolean isCoin;
    private final String name;
    private final String networkType;
    private final FiatValueResponse rateToFiat;
    private final String ticker;
    private final String website;

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.networkType;
    }

    public final String component3() {
        return this.avatar;
    }

    public final int component4() {
        return this.decimals;
    }

    public final String component5() {
        return this.ticker;
    }

    public final boolean component6() {
        return this.isCoin;
    }

    public final String component7() {
        return this.name;
    }

    public final String component8() {
        return this.website;
    }

    public final FiatValueResponse component9() {
        return this.rateToFiat;
    }

    public final TokenDetailedWithRateResponse copy(String str, String networkType, String avatar, int i, String ticker, boolean z, String name, String str2, FiatValueResponse rateToFiat) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(rateToFiat, "rateToFiat");
        return new TokenDetailedWithRateResponse(str, networkType, avatar, i, ticker, z, name, str2, rateToFiat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenDetailedWithRateResponse) {
            TokenDetailedWithRateResponse tokenDetailedWithRateResponse = (TokenDetailedWithRateResponse) obj;
            return Intrinsics.areEqual(this.address, tokenDetailedWithRateResponse.address) && Intrinsics.areEqual(this.networkType, tokenDetailedWithRateResponse.networkType) && Intrinsics.areEqual(this.avatar, tokenDetailedWithRateResponse.avatar) && this.decimals == tokenDetailedWithRateResponse.decimals && Intrinsics.areEqual(this.ticker, tokenDetailedWithRateResponse.ticker) && this.isCoin == tokenDetailedWithRateResponse.isCoin && Intrinsics.areEqual(this.name, tokenDetailedWithRateResponse.name) && Intrinsics.areEqual(this.website, tokenDetailedWithRateResponse.website) && Intrinsics.areEqual(this.rateToFiat, tokenDetailedWithRateResponse.rateToFiat);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.address;
        int hashCode = (((((((((str == null ? 0 : str.hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.avatar.hashCode()) * 31) + this.decimals) * 31) + this.ticker.hashCode()) * 31;
        boolean z = this.isCoin;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int hashCode2 = (((hashCode + i) * 31) + this.name.hashCode()) * 31;
        String str2 = this.website;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.rateToFiat.hashCode();
    }

    public String toString() {
        return "TokenDetailedWithRateResponse(address=" + this.address + ", networkType=" + this.networkType + ", avatar=" + this.avatar + ", decimals=" + this.decimals + ", ticker=" + this.ticker + ", isCoin=" + this.isCoin + ", name=" + this.name + ", website=" + this.website + ", rateToFiat=" + this.rateToFiat + ')';
    }

    public TokenDetailedWithRateResponse(String str, String networkType, String avatar, int i, String ticker, boolean z, String name, String str2, FiatValueResponse rateToFiat) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(rateToFiat, "rateToFiat");
        this.address = str;
        this.networkType = networkType;
        this.avatar = avatar;
        this.decimals = i;
        this.ticker = ticker;
        this.isCoin = z;
        this.name = name;
        this.website = str2;
        this.rateToFiat = rateToFiat;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final int getDecimals() {
        return this.decimals;
    }

    public final String getTicker() {
        return this.ticker;
    }

    public final boolean isCoin() {
        return this.isCoin;
    }

    public final String getName() {
        return this.name;
    }

    public final String getWebsite() {
        return this.website;
    }

    public final FiatValueResponse getRateToFiat() {
        return this.rateToFiat;
    }
}
