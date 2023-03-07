package com.smedialink.storage.domain.model.staking;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTransactionGas.kt */
/* loaded from: classes3.dex */
public final class StakingTransactionGas {
    private final BigDecimal asNativeToken;
    private final BigDecimal asUsd;
    private final int duration;
    private final StakingToken token;

    public static /* synthetic */ StakingTransactionGas copy$default(StakingTransactionGas stakingTransactionGas, BigDecimal bigDecimal, BigDecimal bigDecimal2, int i, StakingToken stakingToken, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bigDecimal = stakingTransactionGas.asNativeToken;
        }
        if ((i2 & 2) != 0) {
            bigDecimal2 = stakingTransactionGas.asUsd;
        }
        if ((i2 & 4) != 0) {
            i = stakingTransactionGas.duration;
        }
        if ((i2 & 8) != 0) {
            stakingToken = stakingTransactionGas.token;
        }
        return stakingTransactionGas.copy(bigDecimal, bigDecimal2, i, stakingToken);
    }

    public final BigDecimal component1() {
        return this.asNativeToken;
    }

    public final BigDecimal component2() {
        return this.asUsd;
    }

    public final int component3() {
        return this.duration;
    }

    public final StakingToken component4() {
        return this.token;
    }

    public final StakingTransactionGas copy(BigDecimal asNativeToken, BigDecimal asUsd, int i, StakingToken token) {
        Intrinsics.checkNotNullParameter(asNativeToken, "asNativeToken");
        Intrinsics.checkNotNullParameter(asUsd, "asUsd");
        Intrinsics.checkNotNullParameter(token, "token");
        return new StakingTransactionGas(asNativeToken, asUsd, i, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingTransactionGas) {
            StakingTransactionGas stakingTransactionGas = (StakingTransactionGas) obj;
            return Intrinsics.areEqual(this.asNativeToken, stakingTransactionGas.asNativeToken) && Intrinsics.areEqual(this.asUsd, stakingTransactionGas.asUsd) && this.duration == stakingTransactionGas.duration && Intrinsics.areEqual(this.token, stakingTransactionGas.token);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.asNativeToken.hashCode() * 31) + this.asUsd.hashCode()) * 31) + this.duration) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "StakingTransactionGas(asNativeToken=" + this.asNativeToken + ", asUsd=" + this.asUsd + ", duration=" + this.duration + ", token=" + this.token + ')';
    }

    public StakingTransactionGas(BigDecimal asNativeToken, BigDecimal asUsd, int i, StakingToken token) {
        Intrinsics.checkNotNullParameter(asNativeToken, "asNativeToken");
        Intrinsics.checkNotNullParameter(asUsd, "asUsd");
        Intrinsics.checkNotNullParameter(token, "token");
        this.asNativeToken = asNativeToken;
        this.asUsd = asUsd;
        this.duration = i;
        this.token = token;
    }

    public final BigDecimal getAsNativeToken() {
        return this.asNativeToken;
    }

    public final BigDecimal getAsUsd() {
        return this.asUsd;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final StakingToken getToken() {
        return this.token;
    }
}
