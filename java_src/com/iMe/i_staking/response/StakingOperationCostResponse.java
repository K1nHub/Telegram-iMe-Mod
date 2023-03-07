package com.iMe.i_staking.response;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationCostResponse.kt */
/* loaded from: classes3.dex */
public final class StakingOperationCostResponse {
    private final StakingTokenResponse token;
    private final StakingValuesResponse value;

    public static /* synthetic */ StakingOperationCostResponse copy$default(StakingOperationCostResponse stakingOperationCostResponse, StakingTokenResponse stakingTokenResponse, StakingValuesResponse stakingValuesResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            stakingTokenResponse = stakingOperationCostResponse.token;
        }
        if ((i & 2) != 0) {
            stakingValuesResponse = stakingOperationCostResponse.value;
        }
        return stakingOperationCostResponse.copy(stakingTokenResponse, stakingValuesResponse);
    }

    public final StakingTokenResponse component1() {
        return this.token;
    }

    public final StakingValuesResponse component2() {
        return this.value;
    }

    public final StakingOperationCostResponse copy(StakingTokenResponse token, StakingValuesResponse value) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        return new StakingOperationCostResponse(token, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationCostResponse) {
            StakingOperationCostResponse stakingOperationCostResponse = (StakingOperationCostResponse) obj;
            return Intrinsics.areEqual(this.token, stakingOperationCostResponse.token) && Intrinsics.areEqual(this.value, stakingOperationCostResponse.value);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.value.hashCode();
    }

    public String toString() {
        return "StakingOperationCostResponse(token=" + this.token + ", value=" + this.value + ')';
    }

    public StakingOperationCostResponse(StakingTokenResponse token, StakingValuesResponse value) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        this.token = token;
        this.value = value;
    }

    public final StakingTokenResponse getToken() {
        return this.token;
    }

    public final StakingValuesResponse getValue() {
        return this.value;
    }
}
