package com.iMe.storage.domain.model.staking;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingProgrammes.kt */
/* loaded from: classes4.dex */
public final class StakingProgrammes {
    private final List<StakingMetadata> programmes;
    private final int total;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StakingProgrammes copy$default(StakingProgrammes stakingProgrammes, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = stakingProgrammes.total;
        }
        if ((i2 & 2) != 0) {
            list = stakingProgrammes.programmes;
        }
        return stakingProgrammes.copy(i, list);
    }

    public final int component1() {
        return this.total;
    }

    public final List<StakingMetadata> component2() {
        return this.programmes;
    }

    public final StakingProgrammes copy(int i, List<StakingMetadata> programmes) {
        Intrinsics.checkNotNullParameter(programmes, "programmes");
        return new StakingProgrammes(i, programmes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingProgrammes) {
            StakingProgrammes stakingProgrammes = (StakingProgrammes) obj;
            return this.total == stakingProgrammes.total && Intrinsics.areEqual(this.programmes, stakingProgrammes.programmes);
        }
        return false;
    }

    public int hashCode() {
        return (this.total * 31) + this.programmes.hashCode();
    }

    public String toString() {
        return "StakingProgrammes(total=" + this.total + ", programmes=" + this.programmes + ')';
    }

    public StakingProgrammes(int i, List<StakingMetadata> programmes) {
        Intrinsics.checkNotNullParameter(programmes, "programmes");
        this.total = i;
        this.programmes = programmes;
    }

    public final int getTotal() {
        return this.total;
    }

    public final List<StakingMetadata> getProgrammes() {
        return this.programmes;
    }
}
