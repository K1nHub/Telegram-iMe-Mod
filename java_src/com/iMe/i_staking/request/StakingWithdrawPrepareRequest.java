package com.iMe.i_staking.request;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingWithdrawPrepareRequest.kt */
/* loaded from: classes3.dex */
public final class StakingWithdrawPrepareRequest {
    private final BigDecimal amount;
    private final boolean safe;
    private final long stakingId;

    public static /* synthetic */ StakingWithdrawPrepareRequest copy$default(StakingWithdrawPrepareRequest stakingWithdrawPrepareRequest, long j, BigDecimal bigDecimal, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            j = stakingWithdrawPrepareRequest.stakingId;
        }
        if ((i & 2) != 0) {
            bigDecimal = stakingWithdrawPrepareRequest.amount;
        }
        if ((i & 4) != 0) {
            z = stakingWithdrawPrepareRequest.safe;
        }
        return stakingWithdrawPrepareRequest.copy(j, bigDecimal, z);
    }

    public final long component1() {
        return this.stakingId;
    }

    public final BigDecimal component2() {
        return this.amount;
    }

    public final boolean component3() {
        return this.safe;
    }

    public final StakingWithdrawPrepareRequest copy(long j, BigDecimal amount, boolean z) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new StakingWithdrawPrepareRequest(j, amount, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingWithdrawPrepareRequest) {
            StakingWithdrawPrepareRequest stakingWithdrawPrepareRequest = (StakingWithdrawPrepareRequest) obj;
            return this.stakingId == stakingWithdrawPrepareRequest.stakingId && Intrinsics.areEqual(this.amount, stakingWithdrawPrepareRequest.amount) && this.safe == stakingWithdrawPrepareRequest.safe;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m716m = ((StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.stakingId) * 31) + this.amount.hashCode()) * 31;
        boolean z = this.safe;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m716m + i;
    }

    public String toString() {
        return "StakingWithdrawPrepareRequest(stakingId=" + this.stakingId + ", amount=" + this.amount + ", safe=" + this.safe + ')';
    }

    public StakingWithdrawPrepareRequest(long j, BigDecimal amount, boolean z) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.stakingId = j;
        this.amount = amount;
        this.safe = z;
    }

    public final long getStakingId() {
        return this.stakingId;
    }

    public final BigDecimal getAmount() {
        return this.amount;
    }

    public final boolean getSafe() {
        return this.safe;
    }
}
