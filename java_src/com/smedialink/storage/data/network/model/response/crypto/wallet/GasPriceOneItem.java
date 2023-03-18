package com.smedialink.storage.data.network.model.response.crypto.wallet;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GasPriceOneItem.kt */
/* loaded from: classes3.dex */
public final class GasPriceOneItem {
    private final float duration;
    private final double fee;
    private final float feeInDollars;
    private final BigInteger limit;
    private final BigInteger price;

    public static /* synthetic */ GasPriceOneItem copy$default(GasPriceOneItem gasPriceOneItem, BigInteger bigInteger, BigInteger bigInteger2, float f, double d, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            bigInteger = gasPriceOneItem.price;
        }
        if ((i & 2) != 0) {
            bigInteger2 = gasPriceOneItem.limit;
        }
        BigInteger bigInteger3 = bigInteger2;
        if ((i & 4) != 0) {
            f = gasPriceOneItem.duration;
        }
        float f3 = f;
        if ((i & 8) != 0) {
            d = gasPriceOneItem.fee;
        }
        double d2 = d;
        if ((i & 16) != 0) {
            f2 = gasPriceOneItem.feeInDollars;
        }
        return gasPriceOneItem.copy(bigInteger, bigInteger3, f3, d2, f2);
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

    public final float component5() {
        return this.feeInDollars;
    }

    public final GasPriceOneItem copy(BigInteger price, BigInteger limit, float f, double d, float f2) {
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(limit, "limit");
        return new GasPriceOneItem(price, limit, f, d, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GasPriceOneItem) {
            GasPriceOneItem gasPriceOneItem = (GasPriceOneItem) obj;
            return Intrinsics.areEqual(this.price, gasPriceOneItem.price) && Intrinsics.areEqual(this.limit, gasPriceOneItem.limit) && Float.compare(this.duration, gasPriceOneItem.duration) == 0 && Double.compare(this.fee, gasPriceOneItem.fee) == 0 && Float.compare(this.feeInDollars, gasPriceOneItem.feeInDollars) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.price.hashCode() * 31) + this.limit.hashCode()) * 31) + Float.floatToIntBits(this.duration)) * 31) + Double.doubleToLongBits(this.fee)) * 31) + Float.floatToIntBits(this.feeInDollars);
    }

    public String toString() {
        return "GasPriceOneItem(price=" + this.price + ", limit=" + this.limit + ", duration=" + this.duration + ", fee=" + this.fee + ", feeInDollars=" + this.feeInDollars + ')';
    }

    public GasPriceOneItem(BigInteger price, BigInteger limit, float f, double d, float f2) {
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(limit, "limit");
        this.price = price;
        this.limit = limit;
        this.duration = f;
        this.fee = d;
        this.feeInDollars = f2;
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

    public final float getFeeInDollars() {
        return this.feeInDollars;
    }
}
