package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxValues.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxValues {
    private final BigDecimal asToken;
    private final double asUsd;

    public static /* synthetic */ CryptoBoxValues copy$default(CryptoBoxValues cryptoBoxValues, BigDecimal bigDecimal, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = cryptoBoxValues.asToken;
        }
        if ((i & 2) != 0) {
            d = cryptoBoxValues.asUsd;
        }
        return cryptoBoxValues.copy(bigDecimal, d);
    }

    public final BigDecimal component1() {
        return this.asToken;
    }

    public final double component2() {
        return this.asUsd;
    }

    public final CryptoBoxValues copy(BigDecimal asToken, double d) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        return new CryptoBoxValues(asToken, d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxValues) {
            CryptoBoxValues cryptoBoxValues = (CryptoBoxValues) obj;
            return Intrinsics.areEqual(this.asToken, cryptoBoxValues.asToken) && Double.compare(this.asUsd, cryptoBoxValues.asUsd) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (this.asToken.hashCode() * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1011m(this.asUsd);
    }

    public String toString() {
        return "CryptoBoxValues(asToken=" + this.asToken + ", asUsd=" + this.asUsd + ')';
    }

    public CryptoBoxValues(BigDecimal asToken, double d) {
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
