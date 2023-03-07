package com.smedialink.storage.data.network.model.response.crypto.ton;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFeesResponse.kt */
/* loaded from: classes3.dex */
public final class TonFeesResponse {
    private final float duration;
    private final double fee;
    private final float feeInDollars;

    public static /* synthetic */ TonFeesResponse copy$default(TonFeesResponse tonFeesResponse, float f, double d, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = tonFeesResponse.duration;
        }
        if ((i & 2) != 0) {
            d = tonFeesResponse.fee;
        }
        if ((i & 4) != 0) {
            f2 = tonFeesResponse.feeInDollars;
        }
        return tonFeesResponse.copy(f, d, f2);
    }

    public final float component1() {
        return this.duration;
    }

    public final double component2() {
        return this.fee;
    }

    public final float component3() {
        return this.feeInDollars;
    }

    public final TonFeesResponse copy(float f, double d, float f2) {
        return new TonFeesResponse(f, d, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFeesResponse) {
            TonFeesResponse tonFeesResponse = (TonFeesResponse) obj;
            return Intrinsics.areEqual(Float.valueOf(this.duration), Float.valueOf(tonFeesResponse.duration)) && Intrinsics.areEqual(Double.valueOf(this.fee), Double.valueOf(tonFeesResponse.fee)) && Intrinsics.areEqual(Float.valueOf(this.feeInDollars), Float.valueOf(tonFeesResponse.feeInDollars));
        }
        return false;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.duration) * 31) + Double.doubleToLongBits(this.fee)) * 31) + Float.floatToIntBits(this.feeInDollars);
    }

    public String toString() {
        return "TonFeesResponse(duration=" + this.duration + ", fee=" + this.fee + ", feeInDollars=" + this.feeInDollars + ')';
    }

    public TonFeesResponse(float f, double d, float f2) {
        this.duration = f;
        this.fee = d;
        this.feeInDollars = f2;
    }

    public final float getDuration() {
        return this.duration;
    }

    public final double getFee() {
        return this.fee;
    }

    public final float getFeeInDollars() {
        return this.feeInDollars;
    }
}
