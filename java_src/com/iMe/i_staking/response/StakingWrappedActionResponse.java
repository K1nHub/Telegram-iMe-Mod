package com.iMe.i_staking.response;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingWrappedActionResponse.kt */
/* loaded from: classes4.dex */
public final class StakingWrappedActionResponse {
    private final String wrappedAction;

    public static /* synthetic */ StakingWrappedActionResponse copy$default(StakingWrappedActionResponse stakingWrappedActionResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingWrappedActionResponse.wrappedAction;
        }
        return stakingWrappedActionResponse.copy(str);
    }

    public final String component1() {
        return this.wrappedAction;
    }

    public final StakingWrappedActionResponse copy(String wrappedAction) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        return new StakingWrappedActionResponse(wrappedAction);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StakingWrappedActionResponse) && Intrinsics.areEqual(this.wrappedAction, ((StakingWrappedActionResponse) obj).wrappedAction);
    }

    public int hashCode() {
        return this.wrappedAction.hashCode();
    }

    public String toString() {
        return "StakingWrappedActionResponse(wrappedAction=" + this.wrappedAction + ')';
    }

    public StakingWrappedActionResponse(String wrappedAction) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        this.wrappedAction = wrappedAction;
    }

    public final String getWrappedAction() {
        return this.wrappedAction;
    }
}
