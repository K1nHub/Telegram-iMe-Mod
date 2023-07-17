package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenDetailedResponse.kt */
/* loaded from: classes3.dex */
public final class TokenDetailedResponse {
    private final String address;
    private final String avatar;
    private final int decimals;
    private final boolean isCoin;
    private final String name;
    private final String networkType;
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

    public final TokenDetailedResponse copy(String str, String networkType, String avatar, int i, String ticker, boolean z, String name, String str2) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        return new TokenDetailedResponse(str, networkType, avatar, i, ticker, z, name, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenDetailedResponse) {
            TokenDetailedResponse tokenDetailedResponse = (TokenDetailedResponse) obj;
            return Intrinsics.areEqual(this.address, tokenDetailedResponse.address) && Intrinsics.areEqual(this.networkType, tokenDetailedResponse.networkType) && Intrinsics.areEqual(this.avatar, tokenDetailedResponse.avatar) && this.decimals == tokenDetailedResponse.decimals && Intrinsics.areEqual(this.ticker, tokenDetailedResponse.ticker) && this.isCoin == tokenDetailedResponse.isCoin && Intrinsics.areEqual(this.name, tokenDetailedResponse.name) && Intrinsics.areEqual(this.website, tokenDetailedResponse.website);
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
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "TokenDetailedResponse(address=" + this.address + ", networkType=" + this.networkType + ", avatar=" + this.avatar + ", decimals=" + this.decimals + ", ticker=" + this.ticker + ", isCoin=" + this.isCoin + ", name=" + this.name + ", website=" + this.website + ')';
    }

    public TokenDetailedResponse(String str, String networkType, String avatar, int i, String ticker, boolean z, String name, String str2) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        this.address = str;
        this.networkType = networkType;
        this.avatar = avatar;
        this.decimals = i;
        this.ticker = ticker;
        this.isCoin = z;
        this.name = name;
        this.website = str2;
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
}
