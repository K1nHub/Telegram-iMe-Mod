package com.iMe.storage.domain.model.staking;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationsPaged.kt */
/* loaded from: classes4.dex */
public final class StakingOperationsPaged {
    private final String nextCursor;
    private final List<StakingOperation> operations;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StakingOperationsPaged copy$default(StakingOperationsPaged stakingOperationsPaged, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = stakingOperationsPaged.operations;
        }
        if ((i & 2) != 0) {
            str = stakingOperationsPaged.nextCursor;
        }
        return stakingOperationsPaged.copy(list, str);
    }

    public final List<StakingOperation> component1() {
        return this.operations;
    }

    public final String component2() {
        return this.nextCursor;
    }

    public final StakingOperationsPaged copy(List<StakingOperation> operations, String str) {
        Intrinsics.checkNotNullParameter(operations, "operations");
        return new StakingOperationsPaged(operations, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationsPaged) {
            StakingOperationsPaged stakingOperationsPaged = (StakingOperationsPaged) obj;
            return Intrinsics.areEqual(this.operations, stakingOperationsPaged.operations) && Intrinsics.areEqual(this.nextCursor, stakingOperationsPaged.nextCursor);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.operations.hashCode() * 31;
        String str = this.nextCursor;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "StakingOperationsPaged(operations=" + this.operations + ", nextCursor=" + this.nextCursor + ')';
    }

    public StakingOperationsPaged(List<StakingOperation> operations, String str) {
        Intrinsics.checkNotNullParameter(operations, "operations");
        this.operations = operations;
        this.nextCursor = str;
    }

    public final List<StakingOperation> getOperations() {
        return this.operations;
    }

    public final String getNextCursor() {
        return this.nextCursor;
    }
}
