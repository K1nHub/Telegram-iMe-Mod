package com.iMe.storage.data.network.model.response.crypto.wallet;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import com.iMe.storage.data.network.model.response.wallet.FiatValueResponse;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GasPriceResponse.kt */
/* loaded from: classes3.dex */
public final class GasPriceResponse {
    private final float duration;
    private final double fee;
    private final FiatValueResponse feeInFiat;
    private final BigInteger limit;
    private final BigInteger price;

    public static /* synthetic */ GasPriceResponse copy$default(GasPriceResponse gasPriceResponse, BigInteger bigInteger, BigInteger bigInteger2, float f, double d, FiatValueResponse fiatValueResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            bigInteger = gasPriceResponse.price;
        }
        if ((i & 2) != 0) {
            bigInteger2 = gasPriceResponse.limit;
        }
        BigInteger bigInteger3 = bigInteger2;
        if ((i & 4) != 0) {
            f = gasPriceResponse.duration;
        }
        float f2 = f;
        if ((i & 8) != 0) {
            d = gasPriceResponse.fee;
        }
        double d2 = d;
        if ((i & 16) != 0) {
            fiatValueResponse = gasPriceResponse.feeInFiat;
        }
        return gasPriceResponse.copy(bigInteger, bigInteger3, f2, d2, fiatValueResponse);
    }

    public final BigInteger component1() {
        return this.price;
    }

    public final BigInteger component2() {
        return this.limit;
    }

    public final float component3() {
        return this.duration;
    }

    public final double component4() {
        return this.fee;
    }

    public final FiatValueResponse component5() {
        return this.feeInFiat;
    }

    public final GasPriceResponse copy(BigInteger bigInteger, BigInteger bigInteger2, float f, double d, FiatValueResponse feeInFiat) {
        Intrinsics.checkNotNullParameter(feeInFiat, "feeInFiat");
        return new GasPriceResponse(bigInteger, bigInteger2, f, d, feeInFiat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GasPriceResponse) {
            GasPriceResponse gasPriceResponse = (GasPriceResponse) obj;
            return Intrinsics.areEqual(this.price, gasPriceResponse.price) && Intrinsics.areEqual(this.limit, gasPriceResponse.limit) && Float.compare(this.duration, gasPriceResponse.duration) == 0 && Double.compare(this.fee, gasPriceResponse.fee) == 0 && Intrinsics.areEqual(this.feeInFiat, gasPriceResponse.feeInFiat);
        }
        return false;
    }

    public int hashCode() {
        BigInteger bigInteger = this.price;
        int hashCode = (bigInteger == null ? 0 : bigInteger.hashCode()) * 31;
        BigInteger bigInteger2 = this.limit;
        return ((((((hashCode + (bigInteger2 != null ? bigInteger2.hashCode() : 0)) * 31) + Float.floatToIntBits(this.duration)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.fee)) * 31) + this.feeInFiat.hashCode();
    }

    public String toString() {
        return "GasPriceResponse(price=" + this.price + ", limit=" + this.limit + ", duration=" + this.duration + ", fee=" + this.fee + ", feeInFiat=" + this.feeInFiat + ')';
    }

    public GasPriceResponse(BigInteger bigInteger, BigInteger bigInteger2, float f, double d, FiatValueResponse feeInFiat) {
        Intrinsics.checkNotNullParameter(feeInFiat, "feeInFiat");
        this.price = bigInteger;
        this.limit = bigInteger2;
        this.duration = f;
        this.fee = d;
        this.feeInFiat = feeInFiat;
    }

    public final BigInteger getPrice() {
        return this.price;
    }

    public final BigInteger getLimit() {
        return this.limit;
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
