package com.iMe.storage.domain.model.crypto.send;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GasPriceInfo.kt */
/* loaded from: classes3.dex */
public final class GasPriceInfo {
    private final int duration;
    private final double fee;
    private final float feeInDollars;
    private final BigInteger limit;
    private final BigInteger price;

    public static /* synthetic */ GasPriceInfo copy$default(GasPriceInfo gasPriceInfo, BigInteger bigInteger, BigInteger bigInteger2, int i, double d, float f, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bigInteger = gasPriceInfo.price;
        }
        if ((i2 & 2) != 0) {
            bigInteger2 = gasPriceInfo.limit;
        }
        BigInteger bigInteger3 = bigInteger2;
        if ((i2 & 4) != 0) {
            i = gasPriceInfo.duration;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            d = gasPriceInfo.fee;
        }
        double d2 = d;
        if ((i2 & 16) != 0) {
            f = gasPriceInfo.feeInDollars;
        }
        return gasPriceInfo.copy(bigInteger, bigInteger3, i3, d2, f);
    }

    public final BigInteger component1() {
        return this.price;
    }

    public final BigInteger component2() {
        return this.limit;
    }

    public final int component3() {
        return this.duration;
    }

    public final double component4() {
        return this.fee;
    }

    public final float component5() {
        return this.feeInDollars;
    }

    public final GasPriceInfo copy(BigInteger price, BigInteger limit, int i, double d, float f) {
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(limit, "limit");
        return new GasPriceInfo(price, limit, i, d, f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GasPriceInfo) {
            GasPriceInfo gasPriceInfo = (GasPriceInfo) obj;
            return Intrinsics.areEqual(this.price, gasPriceInfo.price) && Intrinsics.areEqual(this.limit, gasPriceInfo.limit) && this.duration == gasPriceInfo.duration && Double.compare(this.fee, gasPriceInfo.fee) == 0 && Float.compare(this.feeInDollars, gasPriceInfo.feeInDollars) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.price.hashCode() * 31) + this.limit.hashCode()) * 31) + this.duration) * 31) + Double.doubleToLongBits(this.fee)) * 31) + Float.floatToIntBits(this.feeInDollars);
    }

    public String toString() {
        return "GasPriceInfo(price=" + this.price + ", limit=" + this.limit + ", duration=" + this.duration + ", fee=" + this.fee + ", feeInDollars=" + this.feeInDollars + ')';
    }

    public GasPriceInfo(BigInteger price, BigInteger limit, int i, double d, float f) {
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(limit, "limit");
        this.price = price;
        this.limit = limit;
        this.duration = i;
        this.fee = d;
        this.feeInDollars = f;
    }

    public final BigInteger getPrice() {
        return this.price;
    }

    public final BigInteger getLimit() {
        return this.limit;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final double getFee() {
        return this.fee;
    }

    public final float getFeeInDollars() {
        return this.feeInDollars;
    }
}
