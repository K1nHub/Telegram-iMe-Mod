package com.iMe.storage.data.locale.prefs.model.binancepay;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.binancepay.BinanceAuthTokens;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceAuthTokensMetadata.kt */
/* loaded from: classes3.dex */
public final class BinanceAuthTokensMetadata {
    private final BinanceAuthTokens authTokens;
    private final long updateTimestamp;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceAuthTokensMetadata) {
            BinanceAuthTokensMetadata binanceAuthTokensMetadata = (BinanceAuthTokensMetadata) obj;
            return Intrinsics.areEqual(this.authTokens, binanceAuthTokensMetadata.authTokens) && this.updateTimestamp == binanceAuthTokensMetadata.updateTimestamp;
        }
        return false;
    }

    public int hashCode() {
        BinanceAuthTokens binanceAuthTokens = this.authTokens;
        return ((binanceAuthTokens == null ? 0 : binanceAuthTokens.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.updateTimestamp);
    }

    public String toString() {
        return "BinanceAuthTokensMetadata(authTokens=" + this.authTokens + ", updateTimestamp=" + this.updateTimestamp + ')';
    }

    public BinanceAuthTokensMetadata(BinanceAuthTokens binanceAuthTokens, long j) {
        this.authTokens = binanceAuthTokens;
        this.updateTimestamp = j;
    }

    public final BinanceAuthTokens getAuthTokens() {
        return this.authTokens;
    }

    public final long getUpdateTimestamp() {
        return this.updateTimestamp;
    }
}
