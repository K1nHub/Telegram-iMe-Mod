package com.iMe.i_staking.request;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.staking.StakingOperationStatus;
import com.smedialink.storage.domain.model.staking.StakingOperationType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationsRequest.kt */
/* loaded from: classes3.dex */
public final class StakingOperationsRequest {
    private final NetworkType networkType;
    private final StakingOperationsPaginationRequest paging;
    private final Long stakingId;
    private final StakingOperationStatus status;
    private final StakingOperationType type;

    public static /* synthetic */ StakingOperationsRequest copy$default(StakingOperationsRequest stakingOperationsRequest, Long l, StakingOperationType stakingOperationType, StakingOperationStatus stakingOperationStatus, NetworkType networkType, StakingOperationsPaginationRequest stakingOperationsPaginationRequest, int i, Object obj) {
        if ((i & 1) != 0) {
            l = stakingOperationsRequest.stakingId;
        }
        if ((i & 2) != 0) {
            stakingOperationType = stakingOperationsRequest.type;
        }
        StakingOperationType stakingOperationType2 = stakingOperationType;
        if ((i & 4) != 0) {
            stakingOperationStatus = stakingOperationsRequest.status;
        }
        StakingOperationStatus stakingOperationStatus2 = stakingOperationStatus;
        if ((i & 8) != 0) {
            networkType = stakingOperationsRequest.networkType;
        }
        NetworkType networkType2 = networkType;
        if ((i & 16) != 0) {
            stakingOperationsPaginationRequest = stakingOperationsRequest.paging;
        }
        return stakingOperationsRequest.copy(l, stakingOperationType2, stakingOperationStatus2, networkType2, stakingOperationsPaginationRequest);
    }

    public final Long component1() {
        return this.stakingId;
    }

    public final StakingOperationType component2() {
        return this.type;
    }

    public final StakingOperationStatus component3() {
        return this.status;
    }

    public final NetworkType component4() {
        return this.networkType;
    }

    public final StakingOperationsPaginationRequest component5() {
        return this.paging;
    }

    public final StakingOperationsRequest copy(Long l, StakingOperationType stakingOperationType, StakingOperationStatus stakingOperationStatus, NetworkType networkType, StakingOperationsPaginationRequest stakingOperationsPaginationRequest) {
        return new StakingOperationsRequest(l, stakingOperationType, stakingOperationStatus, networkType, stakingOperationsPaginationRequest);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationsRequest) {
            StakingOperationsRequest stakingOperationsRequest = (StakingOperationsRequest) obj;
            return Intrinsics.areEqual(this.stakingId, stakingOperationsRequest.stakingId) && this.type == stakingOperationsRequest.type && this.status == stakingOperationsRequest.status && this.networkType == stakingOperationsRequest.networkType && Intrinsics.areEqual(this.paging, stakingOperationsRequest.paging);
        }
        return false;
    }

    public int hashCode() {
        Long l = this.stakingId;
        int hashCode = (l == null ? 0 : l.hashCode()) * 31;
        StakingOperationType stakingOperationType = this.type;
        int hashCode2 = (hashCode + (stakingOperationType == null ? 0 : stakingOperationType.hashCode())) * 31;
        StakingOperationStatus stakingOperationStatus = this.status;
        int hashCode3 = (hashCode2 + (stakingOperationStatus == null ? 0 : stakingOperationStatus.hashCode())) * 31;
        NetworkType networkType = this.networkType;
        int hashCode4 = (hashCode3 + (networkType == null ? 0 : networkType.hashCode())) * 31;
        StakingOperationsPaginationRequest stakingOperationsPaginationRequest = this.paging;
        return hashCode4 + (stakingOperationsPaginationRequest != null ? stakingOperationsPaginationRequest.hashCode() : 0);
    }

    public String toString() {
        return "StakingOperationsRequest(stakingId=" + this.stakingId + ", type=" + this.type + ", status=" + this.status + ", networkType=" + this.networkType + ", paging=" + this.paging + ')';
    }

    public StakingOperationsRequest(Long l, StakingOperationType stakingOperationType, StakingOperationStatus stakingOperationStatus, NetworkType networkType, StakingOperationsPaginationRequest stakingOperationsPaginationRequest) {
        this.stakingId = l;
        this.type = stakingOperationType;
        this.status = stakingOperationStatus;
        this.networkType = networkType;
        this.paging = stakingOperationsPaginationRequest;
    }

    public /* synthetic */ StakingOperationsRequest(Long l, StakingOperationType stakingOperationType, StakingOperationStatus stakingOperationStatus, NetworkType networkType, StakingOperationsPaginationRequest stakingOperationsPaginationRequest, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : stakingOperationType, (i & 4) != 0 ? null : stakingOperationStatus, (i & 8) != 0 ? null : networkType, stakingOperationsPaginationRequest);
    }

    public final Long getStakingId() {
        return this.stakingId;
    }

    public final StakingOperationType getType() {
        return this.type;
    }

    public final StakingOperationStatus getStatus() {
        return this.status;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final StakingOperationsPaginationRequest getPaging() {
        return this.paging;
    }
}
