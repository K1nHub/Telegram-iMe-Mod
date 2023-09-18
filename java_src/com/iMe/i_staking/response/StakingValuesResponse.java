package com.iMe.i_staking.response;

import com.iMe.storage.data.network.model.response.wallet.FiatValueResponse;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingValuesResponse.kt */
/* loaded from: classes4.dex */
public final class StakingValuesResponse {
    private final FiatValueResponse asFiat;
    private final BigDecimal asToken;

    public static /* synthetic */ StakingValuesResponse copy$default(StakingValuesResponse stakingValuesResponse, BigDecimal bigDecimal, FiatValueResponse fiatValueResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            bigDecimal = stakingValuesResponse.asToken;
        }
        if ((i & 2) != 0) {
            fiatValueResponse = stakingValuesResponse.asFiat;
        }
        return stakingValuesResponse.copy(bigDecimal, fiatValueResponse);
    }

    public final BigDecimal component1() {
        return this.asToken;
    }

    public final FiatValueResponse component2() {
        return this.asFiat;
    }

    public final StakingValuesResponse copy(BigDecimal asToken, FiatValueResponse asFiat) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        Intrinsics.checkNotNullParameter(asFiat, "asFiat");
        return new StakingValuesResponse(asToken, asFiat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingValuesResponse) {
            StakingValuesResponse stakingValuesResponse = (StakingValuesResponse) obj;
            return Intrinsics.areEqual(this.asToken, stakingValuesResponse.asToken) && Intrinsics.areEqual(this.asFiat, stakingValuesResponse.asFiat);
        }
        return false;
    }

    public int hashCode() {
        return (this.asToken.hashCode() * 31) + this.asFiat.hashCode();
    }

    public String toString() {
        return "StakingValuesResponse(asToken=" + this.asToken + ", asFiat=" + this.asFiat + ')';
    }

    public StakingValuesResponse(BigDecimal asToken, FiatValueResponse asFiat) {
        Intrinsics.checkNotNullParameter(asToken, "asToken");
        Intrinsics.checkNotNullParameter(asFiat, "asFiat");
        this.asToken = asToken;
        this.asFiat = asFiat;
    }

    public final BigDecimal getAsToken() {
        return this.asToken;
    }

    public final FiatValueResponse getAsFiat() {
        return this.asFiat;
    }
}
