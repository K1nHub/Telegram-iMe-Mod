package com.smedialink.storage.domain.model.crypto.simplex;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: CustomPriceLimits.kt */
/* loaded from: classes3.dex */
public final class CustomPriceLimits {
    private final float maxCryptoAmount;
    private final float maxFiatAmount;
    private final float minCryptoAmount;
    private final float minFiatAmount;

    public CustomPriceLimits() {
        this(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 15, null);
    }

    public static /* synthetic */ CustomPriceLimits copy$default(CustomPriceLimits customPriceLimits, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = customPriceLimits.minFiatAmount;
        }
        if ((i & 2) != 0) {
            f2 = customPriceLimits.minCryptoAmount;
        }
        if ((i & 4) != 0) {
            f3 = customPriceLimits.maxFiatAmount;
        }
        if ((i & 8) != 0) {
            f4 = customPriceLimits.maxCryptoAmount;
        }
        return customPriceLimits.copy(f, f2, f3, f4);
    }

    public final float component1() {
        return this.minFiatAmount;
    }

    public final float component2() {
        return this.minCryptoAmount;
    }

    public final float component3() {
        return this.maxFiatAmount;
    }

    public final float component4() {
        return this.maxCryptoAmount;
    }

    public final CustomPriceLimits copy(float f, float f2, float f3, float f4) {
        return new CustomPriceLimits(f, f2, f3, f4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CustomPriceLimits) {
            CustomPriceLimits customPriceLimits = (CustomPriceLimits) obj;
            return Float.compare(this.minFiatAmount, customPriceLimits.minFiatAmount) == 0 && Float.compare(this.minCryptoAmount, customPriceLimits.minCryptoAmount) == 0 && Float.compare(this.maxFiatAmount, customPriceLimits.maxFiatAmount) == 0 && Float.compare(this.maxCryptoAmount, customPriceLimits.maxCryptoAmount) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.minFiatAmount) * 31) + Float.floatToIntBits(this.minCryptoAmount)) * 31) + Float.floatToIntBits(this.maxFiatAmount)) * 31) + Float.floatToIntBits(this.maxCryptoAmount);
    }

    public String toString() {
        return "CustomPriceLimits(minFiatAmount=" + this.minFiatAmount + ", minCryptoAmount=" + this.minCryptoAmount + ", maxFiatAmount=" + this.maxFiatAmount + ", maxCryptoAmount=" + this.maxCryptoAmount + ')';
    }

    public CustomPriceLimits(float f, float f2, float f3, float f4) {
        this.minFiatAmount = f;
        this.minCryptoAmount = f2;
        this.maxFiatAmount = f3;
        this.maxCryptoAmount = f4;
    }

    public /* synthetic */ CustomPriceLimits(float f, float f2, float f3, float f4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3, (i & 8) != 0 ? 0.0f : f4);
    }

    public final float getMinFiatAmount() {
        return this.minFiatAmount;
    }

    public final float getMinCryptoAmount() {
        return this.minCryptoAmount;
    }

    public final float getMaxFiatAmount() {
        return this.maxFiatAmount;
    }

    public final float getMaxCryptoAmount() {
        return this.maxCryptoAmount;
    }
}
