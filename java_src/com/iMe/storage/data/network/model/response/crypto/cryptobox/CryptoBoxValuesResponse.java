package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxValuesResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxValuesResponse {
    private final BigDecimal asToken;
    private final double asUsd;

    public static /* synthetic */ CryptoBoxValuesResponse copy$default(CryptoBoxValuesResponse cryptoBoxValuesResponse, BigDecimal bigDecimal, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = cryptoBoxValuesResponse.asToken;
        }
        if ((i & 2) != 0) {
            d = cryptoBoxValuesResponse.asUsd;
        }
        return cryptoBoxValuesResponse.copy(bigDecimal, d);
    }

    public final BigDecimal component1() {
        return this.asToken;
    }

    public final double component2() {
        return this.asUsd;
    }

    public final CryptoBoxValuesResponse copy(BigDecimal asToken, double d) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        return new CryptoBoxValuesResponse(asToken, d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxValuesResponse) {
            CryptoBoxValuesResponse cryptoBoxValuesResponse = (CryptoBoxValuesResponse) obj;
            return Intrinsics.areEqual(this.asToken, cryptoBoxValuesResponse.asToken) && Double.compare(this.asUsd, cryptoBoxValuesResponse.asUsd) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (this.asToken.hashCode() * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.asUsd);
    }

    public String toString() {
        return "CryptoBoxValuesResponse(asToken=" + this.asToken + ", asUsd=" + this.asUsd + ')';
    }

    public CryptoBoxValuesResponse(BigDecimal asToken, double d) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        this.asToken = asToken;
        this.asUsd = d;
    }

    public final BigDecimal getAsToken() {
        return this.asToken;
    }

    public final double getAsUsd() {
        return this.asUsd;
    }
}
