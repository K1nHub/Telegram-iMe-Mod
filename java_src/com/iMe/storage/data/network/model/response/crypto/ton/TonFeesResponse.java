package com.iMe.storage.data.network.model.response.crypto.ton;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
/* compiled from: TonFeesResponse.kt */
/* loaded from: classes4.dex */
public final class TonFeesResponse {
    private final float duration;
    private final double fee;
    private final double feeInDollars;

    public static /* synthetic */ TonFeesResponse copy$default(TonFeesResponse tonFeesResponse, float f, double d, double d2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = tonFeesResponse.duration;
        }
        if ((i & 2) != 0) {
            d = tonFeesResponse.fee;
        }
        double d3 = d;
        if ((i & 4) != 0) {
            d2 = tonFeesResponse.feeInDollars;
        }
        return tonFeesResponse.copy(f, d3, d2);
    }

    public final float component1() {
        return this.duration;
    }

    public final double component2() {
        return this.fee;
    }

    public final double component3() {
        return this.feeInDollars;
    }

    public final TonFeesResponse copy(float f, double d, double d2) {
        return new TonFeesResponse(f, d, d2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFeesResponse) {
            TonFeesResponse tonFeesResponse = (TonFeesResponse) obj;
            return Float.compare(this.duration, tonFeesResponse.duration) == 0 && Double.compare(this.fee, tonFeesResponse.fee) == 0 && Double.compare(this.feeInDollars, tonFeesResponse.feeInDollars) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.duration) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.fee)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.feeInDollars);
    }

    public String toString() {
        return "TonFeesResponse(duration=" + this.duration + ", fee=" + this.fee + ", feeInDollars=" + this.feeInDollars + ')';
    }

    public TonFeesResponse(float f, double d, double d2) {
        this.duration = f;
        this.fee = d;
        this.feeInDollars = d2;
    }

    public final float getDuration() {
        return this.duration;
    }

    public final double getFee() {
        return this.fee;
    }

    public final double getFeeInDollars() {
        return this.feeInDollars;
    }
}
