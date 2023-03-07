package com.iMe.i_staking.response;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingValuesResponse.kt */
/* loaded from: classes3.dex */
public final class StakingValuesResponse {
    private final BigDecimal asToken;
    private final BigDecimal asUsd;

    public static /* synthetic */ StakingValuesResponse copy$default(StakingValuesResponse stakingValuesResponse, BigDecimal bigDecimal, BigDecimal bigDecimal2, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = stakingValuesResponse.asToken;
        }
        if ((i & 2) != 0) {
            bigDecimal2 = stakingValuesResponse.asUsd;
        }
        return stakingValuesResponse.copy(bigDecimal, bigDecimal2);
    }

    public final BigDecimal component1() {
        return this.asToken;
    }

    public final BigDecimal component2() {
        return this.asUsd;
    }

    public final StakingValuesResponse copy(BigDecimal asToken, BigDecimal asUsd) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        Intrinsics.checkNotNullParameter(asUsd, "asUsd");
        return new StakingValuesResponse(asToken, asUsd);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingValuesResponse) {
            StakingValuesResponse stakingValuesResponse = (StakingValuesResponse) obj;
            return Intrinsics.areEqual(this.asToken, stakingValuesResponse.asToken) && Intrinsics.areEqual(this.asUsd, stakingValuesResponse.asUsd);
        }
        return false;
    }

    public int hashCode() {
        return (this.asToken.hashCode() * 31) + this.asUsd.hashCode();
    }

    public String toString() {
        return "StakingValuesResponse(asToken=" + this.asToken + ", asUsd=" + this.asUsd + ')';
    }

    public StakingValuesResponse(BigDecimal asToken, BigDecimal asUsd) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        Intrinsics.checkNotNullParameter(asUsd, "asUsd");
        this.asToken = asToken;
        this.asUsd = asUsd;
    }

    public final BigDecimal getAsToken() {
        return this.asToken;
    }

    public final BigDecimal getAsUsd() {
        return this.asUsd;
    }
}
