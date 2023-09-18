package com.iMe.storage.domain.model.staking;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WithdrawnTokens.kt */
/* loaded from: classes4.dex */
public final class WithdrawnTokens {
    private final BigDecimal pending;
    private final BigDecimal ready;

    public static /* synthetic */ WithdrawnTokens copy$default(WithdrawnTokens withdrawnTokens, BigDecimal bigDecimal, BigDecimal bigDecimal2, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = withdrawnTokens.pending;
        }
        if ((i & 2) != 0) {
            bigDecimal2 = withdrawnTokens.ready;
        }
        return withdrawnTokens.copy(bigDecimal, bigDecimal2);
    }

    public final BigDecimal component1() {
        return this.pending;
    }

    public final BigDecimal component2() {
        return this.ready;
    }

    public final WithdrawnTokens copy(BigDecimal pending, BigDecimal ready) {
        Intrinsics.checkNotNullParameter(pending, "pending");
        Intrinsics.checkNotNullParameter(ready, "ready");
        return new WithdrawnTokens(pending, ready);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WithdrawnTokens) {
            WithdrawnTokens withdrawnTokens = (WithdrawnTokens) obj;
            return Intrinsics.areEqual(this.pending, withdrawnTokens.pending) && Intrinsics.areEqual(this.ready, withdrawnTokens.ready);
        }
        return false;
    }

    public int hashCode() {
        return (this.pending.hashCode() * 31) + this.ready.hashCode();
    }

    public String toString() {
        return "WithdrawnTokens(pending=" + this.pending + ", ready=" + this.ready + ')';
    }

    public WithdrawnTokens(BigDecimal pending, BigDecimal ready) {
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
