package com.iMe.i_staking.request;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDepositPrepareRequest.kt */
/* loaded from: classes3.dex */
public final class StakingDepositPrepareRequest {
    private final BigDecimal amount;
    private final long stakingId;

    public static /* synthetic */ StakingDepositPrepareRequest copy$default(StakingDepositPrepareRequest stakingDepositPrepareRequest, long j, BigDecimal bigDecimal, int i, Object obj) {
        if ((i & 1) != 0) {
            j = stakingDepositPrepareRequest.stakingId;
        }
        if ((i & 2) != 0) {
            bigDecimal = stakingDepositPrepareRequest.amount;
        }
        return stakingDepositPrepareRequest.copy(j, bigDecimal);
    }

    public final long component1() {
        return this.stakingId;
    }

    public final BigDecimal component2() {
        return this.amount;
    }

    public final StakingDepositPrepareRequest copy(long j, BigDecimal amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new StakingDepositPrepareRequest(j, amount);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingDepositPrepareRequest) {
            StakingDepositPrepareRequest stakingDepositPrepareRequest = (StakingDepositPrepareRequest) obj;
            return this.stakingId == stakingDepositPrepareRequest.stakingId && Intrinsics.areEqual(this.amount, stakingDepositPrepareRequest.amount);
        }
        return false;
    }

    public int hashCode() {
        return (BotsDbModel$$ExternalSyntheticBackport0.m724m(this.stakingId) * 31) + this.amount.hashCode();
    }

    public String toString() {
        return "StakingDepositPrepareRequest(stakingId=" + this.stakingId + ", amount=" + this.amount + ')';
    }

    public StakingDepositPrepareRequest(long j, BigDecimal amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.stakingId = j;
        this.amount = amount;
    }

    public final long getStakingId() {
        return this.stakingId;
    }

    public final BigDecimal getAmount() {
        return this.amount;
    }
}
