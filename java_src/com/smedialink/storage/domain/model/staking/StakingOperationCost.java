package com.smedialink.storage.domain.model.staking;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationCost.kt */
/* loaded from: classes3.dex */
public final class StakingOperationCost {
    private final StakingToken token;
    private final StakingValues value;

    public static /* synthetic */ StakingOperationCost copy$default(StakingOperationCost stakingOperationCost, StakingToken stakingToken, StakingValues stakingValues, int i, Object obj) {
        if ((i & 1) != 0) {
            stakingToken = stakingOperationCost.token;
        }
        if ((i & 2) != 0) {
            stakingValues = stakingOperationCost.value;
        }
        return stakingOperationCost.copy(stakingToken, stakingValues);
    }

    public final StakingToken component1() {
        return this.token;
    }

    public final StakingValues component2() {
        return this.value;
    }

    public final StakingOperationCost copy(StakingToken token, StakingValues value) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        return new StakingOperationCost(token, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationCost) {
            StakingOperationCost stakingOperationCost = (StakingOperationCost) obj;
            return Intrinsics.areEqual(this.token, stakingOperationCost.token) && Intrinsics.areEqual(this.value, stakingOperationCost.value);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.value.hashCode();
    }

    public String toString() {
        return "StakingOperationCost(token=" + this.token + ", value=" + this.value + ')';
    }

    public StakingOperationCost(StakingToken token, StakingValues value) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        this.token = token;
        this.value = value;
    }

    public final StakingToken getToken() {
        return this.token;
    }

    public final StakingValues getValue() {
        return this.value;
    }
}
