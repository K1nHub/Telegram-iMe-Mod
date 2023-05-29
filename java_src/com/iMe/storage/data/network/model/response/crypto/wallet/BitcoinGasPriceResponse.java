package com.iMe.storage.data.network.model.response.crypto.wallet;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BitcoinGasPriceResponse.kt */
/* loaded from: classes3.dex */
public final class BitcoinGasPriceResponse {
    private final BigInteger byteFee;
    private final float duration;
    private final double fee;
    private final float feeInDollars;

    public static /* synthetic */ BitcoinGasPriceResponse copy$default(BitcoinGasPriceResponse bitcoinGasPriceResponse, BigInteger bigInteger, float f, double d, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            bigInteger = bitcoinGasPriceResponse.byteFee;
        }
        if ((i & 2) != 0) {
            f = bitcoinGasPriceResponse.duration;
        }
        float f3 = f;
        if ((i & 4) != 0) {
            d = bitcoinGasPriceResponse.fee;
        }
        double d2 = d;
        if ((i & 8) != 0) {
            f2 = bitcoinGasPriceResponse.feeInDollars;
        }
        return bitcoinGasPriceResponse.copy(bigInteger, f3, d2, f2);
    }

    public final BigInteger component1() {
        return this.byteFee;
    }

    public final float component2() {
        return this.duration;
    }

    public final double component3() {
        return this.fee;
    }

    public final float component4() {
        return this.feeInDollars;
    }

    public final BitcoinGasPriceResponse copy(BigInteger byteFee, float f, double d, float f2) {
        Intrinsics.checkNotNullParameter(byteFee, "byteFee");
        return new BitcoinGasPriceResponse(byteFee, f, d, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BitcoinGasPriceResponse) {
            BitcoinGasPriceResponse bitcoinGasPriceResponse = (BitcoinGasPriceResponse) obj;
            return Intrinsics.areEqual(this.byteFee, bitcoinGasPriceResponse.byteFee) && Float.compare(this.duration, bitcoinGasPriceResponse.duration) == 0 && Double.compare(this.fee, bitcoinGasPriceResponse.fee) == 0 && Float.compare(this.feeInDollars, bitcoinGasPriceResponse.feeInDollars) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.byteFee.hashCode() * 31) + Float.floatToIntBits(this.duration)) * 31) + Double.doubleToLongBits(this.fee)) * 31) + Float.floatToIntBits(this.feeInDollars);
    }

    public String toString() {
        return "BitcoinGasPriceResponse(byteFee=" + this.byteFee + ", duration=" + this.duration + ", fee=" + this.fee + ", feeInDollars=" + this.feeInDollars + ')';
    }

    public BitcoinGasPriceResponse(BigInteger byteFee, float f, double d, float f2) {
        Intrinsics.checkNotNullParameter(byteFee, "byteFee");
        this.byteFee = byteFee;
        this.duration = f;
        this.fee = d;
        this.feeInDollars = f2;
    }

    public final BigInteger getByteFee() {
        return this.byteFee;
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
