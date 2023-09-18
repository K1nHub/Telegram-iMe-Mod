package com.iMe.i_staking.response;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingProgrammesResponse.kt */
/* loaded from: classes4.dex */
public final class StakingProgrammesResponse {
    private final List<StakingMetadataResponse> programmes;
    private final int total;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StakingProgrammesResponse copy$default(StakingProgrammesResponse stakingProgrammesResponse, List list, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = stakingProgrammesResponse.programmes;
        }
        if ((i2 & 2) != 0) {
            i = stakingProgrammesResponse.total;
        }
        return stakingProgrammesResponse.copy(list, i);
    }

    public final List<StakingMetadataResponse> component1() {
        return this.programmes;
    }

    public final int component2() {
        return this.total;
    }

    public final StakingProgrammesResponse copy(List<StakingMetadataResponse> programmes, int i) {
        Intrinsics.checkNotNullParameter(programmes, "programmes");
        return new StakingProgrammesResponse(programmes, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingProgrammesResponse) {
            StakingProgrammesResponse stakingProgrammesResponse = (StakingProgrammesResponse) obj;
            return Intrinsics.areEqual(this.programmes, stakingProgrammesResponse.programmes) && this.total == stakingProgrammesResponse.total;
        }
        return false;
    }

    public int hashCode() {
        return (this.programmes.hashCode() * 31) + this.total;
    }

    public String toString() {
        return "StakingProgrammesResponse(programmes=" + this.programmes + ", total=" + this.total + ')';
    }

    public StakingProgrammesResponse(List<StakingMetadataResponse> programmes, int i) {
        Intrinsics.checkNotNullParameter(programmes, "programmes");
        this.programmes = programmes;
        this.total = i;
    }

    public final List<StakingMetadataResponse> getProgrammes() {
        return this.programmes;
    }

    public final int getTotal() {
        return this.total;
    }
}
