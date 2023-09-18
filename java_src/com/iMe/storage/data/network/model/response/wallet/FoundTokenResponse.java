package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensSearchResponse.kt */
/* loaded from: classes4.dex */
public final class FoundTokenResponse {
    private final String address;
    private final String avatar;
    private final int decimals;
    private final boolean isCoin;
    private final boolean isCustom;
    private final boolean isSwitchOn;
    private final String name;
    private final String networkType;
    private final String ticker;
    private final String website;

    public final String component1() {
        return this.address;
    }

    public final boolean component10() {
        return this.isCustom;
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

    public final boolean component9() {
        return this.isSwitchOn;
    }

    public final FoundTokenResponse copy(String str, String networkType, String avatar, int i, String ticker, boolean z, String name, String str2, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        return new FoundTokenResponse(str, networkType, avatar, i, ticker, z, name, str2, z2, z3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FoundTokenResponse) {
            FoundTokenResponse foundTokenResponse = (FoundTokenResponse) obj;
            return Intrinsics.areEqual(this.address, foundTokenResponse.address) && Intrinsics.areEqual(this.networkType, foundTokenResponse.networkType) && Intrinsics.areEqual(this.avatar, foundTokenResponse.avatar) && this.decimals == foundTokenResponse.decimals && Intrinsics.areEqual(this.ticker, foundTokenResponse.ticker) && this.isCoin == foundTokenResponse.isCoin && Intrinsics.areEqual(this.name, foundTokenResponse.name) && Intrinsics.areEqual(this.website, foundTokenResponse.website) && this.isSwitchOn == foundTokenResponse.isSwitchOn && this.isCustom == foundTokenResponse.isCustom;
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
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z2 = this.isSwitchOn;
        int i2 = z2;
        if (z2 != 0) {
            i2 = 1;
        }
        int i3 = (hashCode3 + i2) * 31;
        boolean z3 = this.isCustom;
        return i3 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public String toString() {
        return "FoundTokenResponse(address=" + this.address + ", networkType=" + this.networkType + ", avatar=" + this.avatar + ", decimals=" + this.decimals + ", ticker=" + this.ticker + ", isCoin=" + this.isCoin + ", name=" + this.name + ", website=" + this.website + ", isSwitchOn=" + this.isSwitchOn + ", isCustom=" + this.isCustom + ')';
    }

    public FoundTokenResponse(String str, String networkType, String avatar, int i, String ticker, boolean z, String name, String str2, boolean z2, boolean z3) {
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
        this.isSwitchOn = z2;
        this.isCustom = z3;
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

    public final boolean isSwitchOn() {
        return this.isSwitchOn;
    }

    public final boolean isCustom() {
        return this.isCustom;
    }
}
