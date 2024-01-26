package com.iMe.storage.data.network.model.response.wallet;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiatValueResponse.kt */
/* loaded from: classes3.dex */
public final class FiatValueResponse {
    private final String symbol;
    private final String ticker;
    private final double value;

    public static /* synthetic */ FiatValueResponse copy$default(FiatValueResponse fiatValueResponse, double d, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            d = fiatValueResponse.value;
        }
        if ((i & 2) != 0) {
            str = fiatValueResponse.symbol;
        }
        if ((i & 4) != 0) {
            str2 = fiatValueResponse.ticker;
        }
        return fiatValueResponse.copy(d, str, str2);
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

    public final FiatValueResponse copy(double d, String symbol, String ticker) {
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        return new FiatValueResponse(d, symbol, ticker);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FiatValueResponse) {
            FiatValueResponse fiatValueResponse = (FiatValueResponse) obj;
            return Double.compare(this.value, fiatValueResponse.value) == 0 && Intrinsics.areEqual(this.symbol, fiatValueResponse.symbol) && Intrinsics.areEqual(this.ticker, fiatValueResponse.ticker);
        }
        return false;
    }

    public int hashCode() {
        return (((StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.value) * 31) + this.symbol.hashCode()) * 31) + this.ticker.hashCode();
    }

    public String toString() {
        return "FiatValueResponse(value=" + this.value + ", symbol=" + this.symbol + ", ticker=" + this.ticker + ')';
    }

    public FiatValueResponse(double d, String symbol, String ticker) {
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
}
