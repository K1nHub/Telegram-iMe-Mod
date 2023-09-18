package com.iMe.i_staking.response;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WithdrawnTokensResponse.kt */
/* loaded from: classes4.dex */
public final class WithdrawnTokensResponse {
    private final BigDecimal pending;
    private final BigDecimal ready;

    public static /* synthetic */ WithdrawnTokensResponse copy$default(WithdrawnTokensResponse withdrawnTokensResponse, BigDecimal bigDecimal, BigDecimal bigDecimal2, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = withdrawnTokensResponse.pending;
        }
        if ((i & 2) != 0) {
            bigDecimal2 = withdrawnTokensResponse.ready;
        }
        return withdrawnTokensResponse.copy(bigDecimal, bigDecimal2);
    }

    public final BigDecimal component1() {
        return this.pending;
    }

    public final BigDecimal component2() {
        return this.ready;
    }

    public final WithdrawnTokensResponse copy(BigDecimal pending, BigDecimal ready) {
        Intrinsics.checkNotNullParameter(pending, "pending");
        Intrinsics.checkNotNullParameter(ready, "ready");
        return new WithdrawnTokensResponse(pending, ready);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WithdrawnTokensResponse) {
            WithdrawnTokensResponse withdrawnTokensResponse = (WithdrawnTokensResponse) obj;
            return Intrinsics.areEqual(this.pending, withdrawnTokensResponse.pending) && Intrinsics.areEqual(this.ready, withdrawnTokensResponse.ready);
        }
        return false;
    }

    public int hashCode() {
        return (this.pending.hashCode() * 31) + this.ready.hashCode();
    }

    public String toString() {
        return "WithdrawnTokensResponse(pending=" + this.pending + ", ready=" + this.ready + ')';
    }

    public WithdrawnTokensResponse(BigDecimal pending, BigDecimal ready) {
        Intrinsics.checkNotNullParameter(pending, "pending");
        Intrinsics.checkNotNullParameter(ready, "ready");
        this.pending = pending;
        this.ready = ready;
    }

    public final BigDecimal getPending() {
        return this.pending;
    }

    public final BigDecimal getReady() {
        return this.ready;
    }
}
