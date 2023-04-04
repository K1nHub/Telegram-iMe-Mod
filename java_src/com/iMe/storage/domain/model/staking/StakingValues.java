package com.iMe.storage.domain.model.staking;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingValues.kt */
/* loaded from: classes3.dex */
public final class StakingValues {
    private final BigDecimal asToken;
    private final BigDecimal asUsd;

    public static /* synthetic */ StakingValues copy$default(StakingValues stakingValues, BigDecimal bigDecimal, BigDecimal bigDecimal2, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = stakingValues.asToken;
        }
        if ((i & 2) != 0) {
            bigDecimal2 = stakingValues.asUsd;
        }
        return stakingValues.copy(bigDecimal, bigDecimal2);
    }

    public final BigDecimal component1() {
        return this.asToken;
    }

    public final BigDecimal component2() {
        return this.asUsd;
    }

    public final StakingValues copy(BigDecimal asToken, BigDecimal asUsd) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        Intrinsics.checkNotNullParameter(asUsd, "asUsd");
        return new StakingValues(asToken, asUsd);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingValues) {
            StakingValues stakingValues = (StakingValues) obj;
            return Intrinsics.areEqual(this.asToken, stakingValues.asToken) && Intrinsics.areEqual(this.asUsd, stakingValues.asUsd);
        }
        return false;
    }

    public int hashCode() {
        return (this.asToken.hashCode() * 31) + this.asUsd.hashCode();
    }

    public String toString() {
        return "StakingValues(asToken=" + this.asToken + ", asUsd=" + this.asUsd + ')';
    }

    public StakingValues(BigDecimal asToken, BigDecimal asUsd) {
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
