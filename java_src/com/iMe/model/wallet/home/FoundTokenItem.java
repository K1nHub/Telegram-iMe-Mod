package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FoundTokenItem.kt */
/* loaded from: classes4.dex */
public final class FoundTokenItem extends NoChildNode {
    private final String address;
    private final boolean isCustom;
    private final boolean isEnabled;
    private final boolean isSwitchable;
    private final String name;
    private final String networkId;
    private final String networkLogoUrl;
    private final String ticker;
    private final String tokenLogoUrl;

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.ticker;
    }

    public final String component3() {
        return this.address;
    }

    public final String component4() {
        return this.tokenLogoUrl;
    }

    public final String component5() {
        return this.networkId;
    }

    public final String component6() {
        return this.networkLogoUrl;
    }

    public final boolean component7() {
        return this.isEnabled;
    }

    public final boolean component8() {
        return this.isCustom;
    }

    public final boolean component9() {
        return this.isSwitchable;
    }

    public final FoundTokenItem copy(String name, String ticker, String address, String tokenLogoUrl, String networkId, String networkLogoUrl, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(networkLogoUrl, "networkLogoUrl");
        return new FoundTokenItem(name, ticker, address, tokenLogoUrl, networkId, networkLogoUrl, z, z2, z3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FoundTokenItem) {
            FoundTokenItem foundTokenItem = (FoundTokenItem) obj;
            return Intrinsics.areEqual(this.name, foundTokenItem.name) && Intrinsics.areEqual(this.ticker, foundTokenItem.ticker) && Intrinsics.areEqual(this.address, foundTokenItem.address) && Intrinsics.areEqual(this.tokenLogoUrl, foundTokenItem.tokenLogoUrl) && Intrinsics.areEqual(this.networkId, foundTokenItem.networkId) && Intrinsics.areEqual(this.networkLogoUrl, foundTokenItem.networkLogoUrl) && this.isEnabled == foundTokenItem.isEnabled && this.isCustom == foundTokenItem.isCustom && this.isSwitchable == foundTokenItem.isSwitchable;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((this.name.hashCode() * 31) + this.ticker.hashCode()) * 31) + this.address.hashCode()) * 31) + this.tokenLogoUrl.hashCode()) * 31) + this.networkId.hashCode()) * 31) + this.networkLogoUrl.hashCode()) * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isCustom;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.isSwitchable;
        return i4 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public String toString() {
        return "FoundTokenItem(name=" + this.name + ", ticker=" + this.ticker + ", address=" + this.address + ", tokenLogoUrl=" + this.tokenLogoUrl + ", networkId=" + this.networkId + ", networkLogoUrl=" + this.networkLogoUrl + ", isEnabled=" + this.isEnabled + ", isCustom=" + this.isCustom + ", isSwitchable=" + this.isSwitchable + ')';
    }

    public final String getName() {
        return this.name;
    }

    public final String getTicker() {
        return this.ticker;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getTokenLogoUrl() {
        return this.tokenLogoUrl;
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final String getNetworkLogoUrl() {
        return this.networkLogoUrl;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean isCustom() {
        return this.isCustom;
    }

    public final boolean isSwitchable() {
        return this.isSwitchable;
    }

    public FoundTokenItem(String name, String ticker, String address, String tokenLogoUrl, String networkId, String networkLogoUrl, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(networkLogoUrl, "networkLogoUrl");
        this.name = name;
        this.ticker = ticker;
        this.address = address;
        this.tokenLogoUrl = tokenLogoUrl;
        this.networkId = networkId;
        this.networkLogoUrl = networkLogoUrl;
        this.isEnabled = z;
        this.isCustom = z2;
        this.isSwitchable = z3;
    }
}
