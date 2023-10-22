package com.iMe.i_staking.request;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOwnProgrammesRequest.kt */
/* loaded from: classes3.dex */
public final class StakingOwnProgrammesRequest {
    private final Long lastItemId;
    private final Integer limit;
    private final String networkType;
    private final StakingOrderStrategyRequest order;
    private final String status;

    public static /* synthetic */ StakingOwnProgrammesRequest copy$default(StakingOwnProgrammesRequest stakingOwnProgrammesRequest, String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingOwnProgrammesRequest.networkType;
        }
        if ((i & 2) != 0) {
            l = stakingOwnProgrammesRequest.lastItemId;
        }
        Long l2 = l;
        if ((i & 4) != 0) {
            num = stakingOwnProgrammesRequest.limit;
        }
        Integer num2 = num;
        if ((i & 8) != 0) {
            stakingOrderStrategyRequest = stakingOwnProgrammesRequest.order;
        }
        StakingOrderStrategyRequest stakingOrderStrategyRequest2 = stakingOrderStrategyRequest;
        if ((i & 16) != 0) {
            str2 = stakingOwnProgrammesRequest.status;
        }
        return stakingOwnProgrammesRequest.copy(str, l2, num2, stakingOrderStrategyRequest2, str2);
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

    public final String component5() {
        return this.status;
    }

    public final StakingOwnProgrammesRequest copy(String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, String status) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new StakingOwnProgrammesRequest(str, l, num, stakingOrderStrategyRequest, status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOwnProgrammesRequest) {
            StakingOwnProgrammesRequest stakingOwnProgrammesRequest = (StakingOwnProgrammesRequest) obj;
            return Intrinsics.areEqual(this.networkType, stakingOwnProgrammesRequest.networkType) && Intrinsics.areEqual(this.lastItemId, stakingOwnProgrammesRequest.lastItemId) && Intrinsics.areEqual(this.limit, stakingOwnProgrammesRequest.limit) && Intrinsics.areEqual(this.order, stakingOwnProgrammesRequest.order) && Intrinsics.areEqual(this.status, stakingOwnProgrammesRequest.status);
        }
        return false;
    }

    public int hashCode() {
        String str = this.networkType;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.lastItemId;
        int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
        Integer num = this.limit;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        StakingOrderStrategyRequest stakingOrderStrategyRequest = this.order;
        return ((hashCode3 + (stakingOrderStrategyRequest != null ? stakingOrderStrategyRequest.hashCode() : 0)) * 31) + this.status.hashCode();
    }

    public String toString() {
        return "StakingOwnProgrammesRequest(networkType=" + this.networkType + ", lastItemId=" + this.lastItemId + ", limit=" + this.limit + ", order=" + this.order + ", status=" + this.status + ')';
    }

    public StakingOwnProgrammesRequest(String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, String status) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.networkType = str;
        this.lastItemId = l;
        this.limit = num;
        this.order = stakingOrderStrategyRequest;
        this.status = status;
    }

    public /* synthetic */ StakingOwnProgrammesRequest(String str, Long l, Integer num, StakingOrderStrategyRequest stakingOrderStrategyRequest, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : stakingOrderStrategyRequest, str2);
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

    public final String getStatus() {
        return this.status;
    }
}
