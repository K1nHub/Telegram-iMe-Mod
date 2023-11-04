package com.iMe.storage.domain.model.crypto.ton;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PremiumPlan.kt */
/* loaded from: classes3.dex */
public final class PremiumPlan {
    private final String discount;
    private final String fiatPrice;
    private final int months;
    private final double price;

    public static /* synthetic */ PremiumPlan copy$default(PremiumPlan premiumPlan, int i, double d, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = premiumPlan.months;
        }
        if ((i2 & 2) != 0) {
            d = premiumPlan.price;
        }
        double d2 = d;
        if ((i2 & 4) != 0) {
            str = premiumPlan.discount;
        }
        String str3 = str;
        if ((i2 & 8) != 0) {
            str2 = premiumPlan.fiatPrice;
        }
        return premiumPlan.copy(i, d2, str3, str2);
    }

    public final int component1() {
        return this.months;
    }

    public final double component2() {
        return this.price;
    }

    public final String component3() {
        return this.discount;
    }

    public final String component4() {
        return this.fiatPrice;
    }

    public final PremiumPlan copy(int i, double d, String discount, String fiatPrice) {
        Intrinsics.checkNotNullParameter(discount, "discount");
        Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
        return new PremiumPlan(i, d, discount, fiatPrice);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PremiumPlan) {
            PremiumPlan premiumPlan = (PremiumPlan) obj;
            return this.months == premiumPlan.months && Double.compare(this.price, premiumPlan.price) == 0 && Intrinsics.areEqual(this.discount, premiumPlan.discount) && Intrinsics.areEqual(this.fiatPrice, premiumPlan.fiatPrice);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.months * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.price)) * 31) + this.discount.hashCode()) * 31) + this.fiatPrice.hashCode();
    }

    public String toString() {
        return "PremiumPlan(months=" + this.months + ", price=" + this.price + ", discount=" + this.discount + ", fiatPrice=" + this.fiatPrice + ')';
    }

    public PremiumPlan(int i, double d, String discount, String fiatPrice) {
        Intrinsics.checkNotNullParameter(discount, "discount");
        Intrinsics.checkNotNullParameter(fiatPrice, "fiatPrice");
        this.months = i;
        this.price = d;
        this.discount = discount;
        this.fiatPrice = fiatPrice;
    }

    public final int getMonths() {
        return this.months;
    }

    public final double getPrice() {
        return this.price;
    }

    public final String getDiscount() {
        return this.discount;
    }

    public final String getFiatPrice() {
        return this.fiatPrice;
    }
}
