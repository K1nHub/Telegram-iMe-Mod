package com.smedialink.storage.domain.model.staking;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingToken.kt */
/* loaded from: classes3.dex */
public final class StakingToken {
    private final String address;
    private final String name;
    private final String ticker;

    public static /* synthetic */ StakingToken copy$default(StakingToken stakingToken, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingToken.address;
        }
        if ((i & 2) != 0) {
            str2 = stakingToken.name;
        }
        if ((i & 4) != 0) {
            str3 = stakingToken.ticker;
        }
        return stakingToken.copy(str, str2, str3);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.ticker;
    }

    public final StakingToken copy(String str, String name, String ticker) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        return new StakingToken(str, name, ticker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingToken) {
            StakingToken stakingToken = (StakingToken) obj;
            return Intrinsics.areEqual(this.address, stakingToken.address) && Intrinsics.areEqual(this.name, stakingToken.name) && Intrinsics.areEqual(this.ticker, stakingToken.ticker);
        }
        return false;
    }

    public int hashCode() {
        String str = this.address;
        return ((((str == null ? 0 : str.hashCode()) * 31) + this.name.hashCode()) * 31) + this.ticker.hashCode();
    }

    public String toString() {
        return "StakingToken(address=" + ((Object) this.address) + ", name=" + this.name + ", ticker=" + this.ticker + ')';
    }

    public StakingToken(String str, String name, String ticker) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        this.address = str;
        this.name = name;
        this.ticker = ticker;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getName() {
        return this.name;
    }

    public final String getTicker() {
        return this.ticker;
    }
}
