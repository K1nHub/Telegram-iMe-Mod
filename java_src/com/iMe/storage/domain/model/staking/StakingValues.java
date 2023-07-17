package com.iMe.storage.domain.model.staking;

import com.iMe.storage.domain.model.wallet.token.FiatValue;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingValues.kt */
/* loaded from: classes3.dex */
public final class StakingValues {
    private final FiatValue asFiat;
    private final BigDecimal asToken;

    public static /* synthetic */ StakingValues copy$default(StakingValues stakingValues, BigDecimal bigDecimal, FiatValue fiatValue, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = stakingValues.asToken;
        }
        if ((i & 2) != 0) {
            fiatValue = stakingValues.asFiat;
        }
        return stakingValues.copy(bigDecimal, fiatValue);
    }

    public final BigDecimal component1() {
        return this.asToken;
    }

    public final FiatValue component2() {
        return this.asFiat;
    }

    public final StakingValues copy(BigDecimal asToken, FiatValue asFiat) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        Intrinsics.checkNotNullParameter(asFiat, "asFiat");
        return new StakingValues(asToken, asFiat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingValues) {
            StakingValues stakingValues = (StakingValues) obj;
            return Intrinsics.areEqual(this.asToken, stakingValues.asToken) && Intrinsics.areEqual(this.asFiat, stakingValues.asFiat);
        }
        return false;
    }

    public int hashCode() {
        return (this.asToken.hashCode() * 31) + this.asFiat.hashCode();
    }

    public String toString() {
        return "StakingValues(asToken=" + this.asToken + ", asFiat=" + this.asFiat + ')';
    }

    public StakingValues(BigDecimal asToken, FiatValue asFiat) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        Intrinsics.checkNotNullParameter(asFiat, "asFiat");
        this.asToken = asToken;
        this.asFiat = asFiat;
    }

    public final BigDecimal getAsToken() {
        return this.asToken;
    }

    public final FiatValue getAsFiat() {
        return this.asFiat;
    }
}
