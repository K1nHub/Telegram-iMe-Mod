package com.iMe.storage.data.network.model.response.crypto.wallet;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import com.iMe.storage.data.network.model.response.wallet.FiatValueResponse;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BitcoinGasPriceResponse.kt */
/* loaded from: classes3.dex */
public final class BitcoinGasPriceResponse {
    private final BigInteger byteFee;
    private final float duration;
    private final double fee;
    private final FiatValueResponse feeInFiat;

    public static /* synthetic */ BitcoinGasPriceResponse copy$default(BitcoinGasPriceResponse bitcoinGasPriceResponse, BigInteger bigInteger, float f, double d, FiatValueResponse fiatValueResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            bigInteger = bitcoinGasPriceResponse.byteFee;
        }
        if ((i & 2) != 0) {
            f = bitcoinGasPriceResponse.duration;
        }
        float f2 = f;
        if ((i & 4) != 0) {
            d = bitcoinGasPriceResponse.fee;
        }
        double d2 = d;
        if ((i & 8) != 0) {
            fiatValueResponse = bitcoinGasPriceResponse.feeInFiat;
        }
        return bitcoinGasPriceResponse.copy(bigInteger, f2, d2, fiatValueResponse);
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

    public final FiatValueResponse component4() {
        return this.feeInFiat;
    }

    public final BitcoinGasPriceResponse copy(BigInteger byteFee, float f, double d, FiatValueResponse feeInFiat) {
        Intrinsics.checkNotNullParameter(byteFee, "byteFee");
        Intrinsics.checkNotNullParameter(feeInFiat, "feeInFiat");
        return new BitcoinGasPriceResponse(byteFee, f, d, feeInFiat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BitcoinGasPriceResponse) {
            BitcoinGasPriceResponse bitcoinGasPriceResponse = (BitcoinGasPriceResponse) obj;
            return Intrinsics.areEqual(this.byteFee, bitcoinGasPriceResponse.byteFee) && Float.compare(this.duration, bitcoinGasPriceResponse.duration) == 0 && Double.compare(this.fee, bitcoinGasPriceResponse.fee) == 0 && Intrinsics.areEqual(this.feeInFiat, bitcoinGasPriceResponse.feeInFiat);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.byteFee.hashCode() * 31) + Float.floatToIntBits(this.duration)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.fee)) * 31) + this.feeInFiat.hashCode();
    }

    public String toString() {
        return "BitcoinGasPriceResponse(byteFee=" + this.byteFee + ", duration=" + this.duration + ", fee=" + this.fee + ", feeInFiat=" + this.feeInFiat + ')';
    }

    public BitcoinGasPriceResponse(BigInteger byteFee, float f, double d, FiatValueResponse feeInFiat) {
        Intrinsics.checkNotNullParameter(byteFee, "byteFee");
        Intrinsics.checkNotNullParameter(feeInFiat, "feeInFiat");
        this.byteFee = byteFee;
        this.duration = f;
        this.fee = d;
        this.feeInFiat = feeInFiat;
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

    public final FiatValueResponse getFeeInFiat() {
        return this.feeInFiat;
    }
}
