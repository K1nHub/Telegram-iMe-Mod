package com.iMe.i_staking.request;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationsPaginationRequest.kt */
/* loaded from: classes3.dex */
public final class StakingOperationsPaginationRequest {
    private final String cursor;
    private final Integer size;

    public static /* synthetic */ StakingOperationsPaginationRequest copy$default(StakingOperationsPaginationRequest stakingOperationsPaginationRequest, String str, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingOperationsPaginationRequest.cursor;
        }
        if ((i & 2) != 0) {
            num = stakingOperationsPaginationRequest.size;
        }
        return stakingOperationsPaginationRequest.copy(str, num);
    }

    public final String component1() {
        return this.cursor;
    }

    public final Integer component2() {
        return this.size;
    }

    public final StakingOperationsPaginationRequest copy(String str, Integer num) {
        return new StakingOperationsPaginationRequest(str, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationsPaginationRequest) {
            StakingOperationsPaginationRequest stakingOperationsPaginationRequest = (StakingOperationsPaginationRequest) obj;
            return Intrinsics.areEqual(this.cursor, stakingOperationsPaginationRequest.cursor) && Intrinsics.areEqual(this.size, stakingOperationsPaginationRequest.size);
        }
        return false;
    }

    public int hashCode() {
        String str = this.cursor;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.size;
        return hashCode + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "StakingOperationsPaginationRequest(cursor=" + this.cursor + ", size=" + this.size + ')';
    }

    public StakingOperationsPaginationRequest(String str, Integer num) {
        this.cursor = str;
        this.size = num;
    }

    public /* synthetic */ StakingOperationsPaginationRequest(String str, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : num);
    }

    public final String getCursor() {
        return this.cursor;
    }

    public final Integer getSize() {
        return this.size;
    }
}
