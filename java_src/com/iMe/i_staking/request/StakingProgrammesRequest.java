package com.iMe.i_staking.request;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingProgrammesRequest.kt */
/* loaded from: classes4.dex */
public final class StakingProgrammesRequest {
    private final boolean includeProgrammesV3;
    private final Long lastItemId;
    private final Integer limit;
    private final String networkType;
    private final StakingOrderStrategyRequest order;

    public StakingProgrammesRequest() {
        this(null, null, null, null, false, 31, null);
    }

    public static /* synthetic */ StakingProgrammesRequest copy$default(StakingProgrammesRequest stakingProgrammesRequest, String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingProgrammesRequest.networkType;
        }
        if ((i & 2) != 0) {
            l = stakingProgrammesRequest.lastItemId;
        }
        Long l2 = l;
        if ((i & 4) != 0) {
            num = stakingProgrammesRequest.limit;
        }
        Integer num2 = num;
        if ((i & 8) != 0) {
            stakingOrderStrategyRequest = stakingProgrammesRequest.order;
        }
        StakingOrderStrategyRequest stakingOrderStrategyRequest2 = stakingOrderStrategyRequest;
        if ((i & 16) != 0) {
            z = stakingProgrammesRequest.includeProgrammesV3;
        }
        return stakingProgrammesRequest.copy(str, l2, num2, stakingOrderStrategyRequest2, z);
    }

    public final String component1() {
        return this.networkType;
    }

    public final Long component2() {
        return this.lastItemId;
    }

    public final Integer component3() {
        return this.limit;
    }

    public final StakingOrderStrategyRequest component4() {
        return this.order;
    }

    public final boolean component5() {
        return this.includeProgrammesV3;
    }

    public final StakingProgrammesRequest copy(String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, boolean z) {
        return new StakingProgrammesRequest(str, l, num, stakingOrderStrategyRequest, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingProgrammesRequest) {
            StakingProgrammesRequest stakingProgrammesRequest = (StakingProgrammesRequest) obj;
            return Intrinsics.areEqual(this.networkType, stakingProgrammesRequest.networkType) && Intrinsics.areEqual(this.lastItemId, stakingProgrammesRequest.lastItemId) && Intrinsics.areEqual(this.limit, stakingProgrammesRequest.limit) && Intrinsics.areEqual(this.order, stakingProgrammesRequest.order) && this.includeProgrammesV3 == stakingProgrammesRequest.includeProgrammesV3;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.networkType;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.lastItemId;
        int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
        Integer num = this.limit;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        StakingOrderStrategyRequest stakingOrderStrategyRequest = this.order;
        int hashCode4 = (hashCode3 + (stakingOrderStrategyRequest != null ? stakingOrderStrategyRequest.hashCode() : 0)) * 31;
        boolean z = this.includeProgrammesV3;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode4 + i;
    }

    public String toString() {
        return "StakingProgrammesRequest(networkType=" + this.networkType + ", lastItemId=" + this.lastItemId + ", limit=" + this.limit + ", order=" + this.order + ", includeProgrammesV3=" + this.includeProgrammesV3 + ')';
    }

    public StakingProgrammesRequest(String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, boolean z) {
        this.networkType = str;
        this.lastItemId = l;
        this.limit = num;
        this.order = stakingOrderStrategyRequest;
        this.includeProgrammesV3 = z;
    }

    public /* synthetic */ StakingProgrammesRequest(String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : num, (i & 8) == 0 ? stakingOrderStrategyRequest : null, (i & 16) != 0 ? true : z);
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final Long getLastItemId() {
        return this.lastItemId;
    }

    public final Integer getLimit() {
        return this.limit;
    }

    public final StakingOrderStrategyRequest getOrder() {
        return this.order;
    }

    public final boolean getIncludeProgrammesV3() {
        return this.includeProgrammesV3;
    }
}
