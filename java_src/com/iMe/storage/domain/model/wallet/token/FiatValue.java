package com.iMe.storage.domain.model.wallet.token;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiatValue.kt */
/* loaded from: classes3.dex */
public final class FiatValue {
    public static final Companion Companion = new Companion(null);
    private final String symbol;
    private final String ticker;
    private final double value;

    public static /* synthetic */ FiatValue copy$default(FiatValue fiatValue, double d, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            d = fiatValue.value;
        }
        if ((i & 2) != 0) {
            str = fiatValue.symbol;
        }
        if ((i & 4) != 0) {
            str2 = fiatValue.ticker;
        }
        return fiatValue.copy(d, str, str2);
    }

    public final double component1() {
        return this.value;
    }

    public final String component2() {
        return this.symbol;
    }

    public final String component3() {
        return this.ticker;
    }

    public final FiatValue copy(double d, String symbol, String ticker) {
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        return new FiatValue(d, symbol, ticker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FiatValue) {
            FiatValue fiatValue = (FiatValue) obj;
            return Double.compare(this.value, fiatValue.value) == 0 && Intrinsics.areEqual(this.symbol, fiatValue.symbol) && Intrinsics.areEqual(this.ticker, fiatValue.ticker);
        }
        return false;
    }

    public int hashCode() {
        return (((StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.value) * 31) + this.symbol.hashCode()) * 31) + this.ticker.hashCode();
    }

    public String toString() {
        return "FiatValue(value=" + this.value + ", symbol=" + this.symbol + ", ticker=" + this.ticker + ')';
    }

    public FiatValue(double d, String symbol, String ticker) {
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        this.value = d;
        this.symbol = symbol;
        this.ticker = ticker;
    }

    public final double getValue() {
        return this.value;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final String getTicker() {
        return this.ticker;
    }

    /* compiled from: FiatValue.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ FiatValue createUSDValue$default(Companion companion, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = 0.0d;
            }
            return companion.createUSDValue(d);
        }

        public final FiatValue createUSDValue(double d) {
            TokenDetailed.Companion companion = TokenDetailed.Companion;
            return new FiatValue(d, companion.getUSD().getTicker(), companion.getUSD().getName());
        }
    }
}
