package com.smedialink.storage.domain.model.binancepay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: OutputConvertToken.kt */
/* loaded from: classes3.dex */
public final class OutputConvertToken {
    private final double maxLimit;
    private final double minLimit;
    private final BinanceTokenInfo tokenInfo;

    public static /* synthetic */ OutputConvertToken copy$default(OutputConvertToken outputConvertToken, BinanceTokenInfo binanceTokenInfo, double d, double d2, int i, Object obj) {
        if ((i & 1) != 0) {
            binanceTokenInfo = outputConvertToken.tokenInfo;
        }
        if ((i & 2) != 0) {
            d = outputConvertToken.minLimit;
        }
        double d3 = d;
        if ((i & 4) != 0) {
            d2 = outputConvertToken.maxLimit;
        }
        return outputConvertToken.copy(binanceTokenInfo, d3, d2);
    }

    public final BinanceTokenInfo component1() {
        return this.tokenInfo;
    }

    public final double component2() {
        return this.minLimit;
    }

    public final double component3() {
        return this.maxLimit;
    }

    public final OutputConvertToken copy(BinanceTokenInfo tokenInfo, double d, double d2) {
        Intrinsics.checkNotNullParameter(tokenInfo, "tokenInfo");
        return new OutputConvertToken(tokenInfo, d, d2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OutputConvertToken) {
            OutputConvertToken outputConvertToken = (OutputConvertToken) obj;
            return Intrinsics.areEqual(this.tokenInfo, outputConvertToken.tokenInfo) && Double.compare(this.minLimit, outputConvertToken.minLimit) == 0 && Double.compare(this.maxLimit, outputConvertToken.maxLimit) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((this.tokenInfo.hashCode() * 31) + Double.doubleToLongBits(this.minLimit)) * 31) + Double.doubleToLongBits(this.maxLimit);
    }

    public String toString() {
        return "OutputConvertToken(tokenInfo=" + this.tokenInfo + ", minLimit=" + this.minLimit + ", maxLimit=" + this.maxLimit + ')';
    }

    public OutputConvertToken(BinanceTokenInfo tokenInfo, double d, double d2) {
        Intrinsics.checkNotNullParameter(tokenInfo, "tokenInfo");
        this.tokenInfo = tokenInfo;
        this.minLimit = d;
        this.maxLimit = d2;
    }

    public final BinanceTokenInfo getTokenInfo() {
        return this.tokenInfo;
    }

    public final double getMinLimit() {
        return this.minLimit;
    }

    public final double getMaxLimit() {
        return this.maxLimit;
    }
}
