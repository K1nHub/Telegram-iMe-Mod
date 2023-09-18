package com.iMe.i_staking.response;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationsPagedResponse.kt */
/* loaded from: classes4.dex */
public final class StakingOperationsPagedResponse {
    private final String nextCursor;
    private final List<StakingOperationResponse> operations;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StakingOperationsPagedResponse copy$default(StakingOperationsPagedResponse stakingOperationsPagedResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = stakingOperationsPagedResponse.operations;
        }
        if ((i & 2) != 0) {
            str = stakingOperationsPagedResponse.nextCursor;
        }
        return stakingOperationsPagedResponse.copy(list, str);
    }

    public final List<StakingOperationResponse> component1() {
        return this.operations;
    }

    public final String component2() {
        return this.nextCursor;
    }

    public final StakingOperationsPagedResponse copy(List<StakingOperationResponse> operations, String str) {
        Intrinsics.checkNotNullParameter(operations, "operations");
        return new StakingOperationsPagedResponse(operations, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationsPagedResponse) {
            StakingOperationsPagedResponse stakingOperationsPagedResponse = (StakingOperationsPagedResponse) obj;
            return Intrinsics.areEqual(this.operations, stakingOperationsPagedResponse.operations) && Intrinsics.areEqual(this.nextCursor, stakingOperationsPagedResponse.nextCursor);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.operations.hashCode() * 31;
        String str = this.nextCursor;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "StakingOperationsPagedResponse(operations=" + this.operations + ", nextCursor=" + this.nextCursor + ')';
    }

    public StakingOperationsPagedResponse(List<StakingOperationResponse> operations, String str) {
        Intrinsics.checkNotNullParameter(operations, "operations");
        this.operations = operations;
        this.nextCursor = str;
    }

    public final List<StakingOperationResponse> getOperations() {
        return this.operations;
    }

    public final String getNextCursor() {
        return this.nextCursor;
    }
}
