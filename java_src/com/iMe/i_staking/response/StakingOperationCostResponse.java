package com.iMe.i_staking.response;

import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationCostResponse.kt */
/* loaded from: classes3.dex */
public final class StakingOperationCostResponse {
    private final TokenDetailedResponse token;
    private final StakingValuesResponse value;

    public static /* synthetic */ StakingOperationCostResponse copy$default(StakingOperationCostResponse stakingOperationCostResponse, TokenDetailedResponse tokenDetailedResponse, StakingValuesResponse stakingValuesResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenDetailedResponse = stakingOperationCostResponse.token;
        }
        if ((i & 2) != 0) {
            stakingValuesResponse = stakingOperationCostResponse.value;
        }
        return stakingOperationCostResponse.copy(tokenDetailedResponse, stakingValuesResponse);
    }

    public final TokenDetailedResponse component1() {
        return this.token;
    }

    public final StakingValuesResponse component2() {
        return this.value;
    }

    public final StakingOperationCostResponse copy(TokenDetailedResponse token, StakingValuesResponse value) {
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

    public StakingOperationCostResponse(TokenDetailedResponse token, StakingValuesResponse value) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        this.token = token;
        this.value = value;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }

    public final StakingValuesResponse getValue() {
        return this.value;
    }
}
