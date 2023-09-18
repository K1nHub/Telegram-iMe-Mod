package com.iMe.i_staking.request;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTokenActionExecuteRequest.kt */
/* loaded from: classes4.dex */
public final class StakingTokenActionExecuteRequest {
    private final String signature;
    private final String wrappedAction;

    public static /* synthetic */ StakingTokenActionExecuteRequest copy$default(StakingTokenActionExecuteRequest stakingTokenActionExecuteRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingTokenActionExecuteRequest.wrappedAction;
        }
        if ((i & 2) != 0) {
            str2 = stakingTokenActionExecuteRequest.signature;
        }
        return stakingTokenActionExecuteRequest.copy(str, str2);
    }

    public final String component1() {
        return this.wrappedAction;
    }

    public final String component2() {
        return this.signature;
    }

    public final StakingTokenActionExecuteRequest copy(String wrappedAction, String signature) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(signature, "signature");
        return new StakingTokenActionExecuteRequest(wrappedAction, signature);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingTokenActionExecuteRequest) {
            StakingTokenActionExecuteRequest stakingTokenActionExecuteRequest = (StakingTokenActionExecuteRequest) obj;
            return Intrinsics.areEqual(this.wrappedAction, stakingTokenActionExecuteRequest.wrappedAction) && Intrinsics.areEqual(this.signature, stakingTokenActionExecuteRequest.signature);
        }
        return false;
    }

    public int hashCode() {
        return (this.wrappedAction.hashCode() * 31) + this.signature.hashCode();
    }

    public String toString() {
        return "StakingTokenActionExecuteRequest(wrappedAction=" + this.wrappedAction + ", signature=" + this.signature + ')';
    }

    public StakingTokenActionExecuteRequest(String wrappedAction, String signature) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(signature, "signature");
        this.wrappedAction = wrappedAction;
        this.signature = signature;
    }

    public final String getWrappedAction() {
        return this.wrappedAction;
    }

    public final String getSignature() {
        return this.signature;
    }
}
