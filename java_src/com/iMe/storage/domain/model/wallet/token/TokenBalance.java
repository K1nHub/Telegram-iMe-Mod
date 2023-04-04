package com.iMe.storage.domain.model.wallet.token;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.PriceRate;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBalance.kt */
/* loaded from: classes3.dex */
public final class TokenBalance {
    public static final Companion Companion = new Companion(null);
    private final TokenCode code;
    private final TokenInfo info;
    private final NetworkType networkType;
    private final PriceRate priceRate;
    private final double total;
    private final float totalInDollars;

    public static /* synthetic */ TokenBalance copy$default(TokenBalance tokenBalance, TokenCode tokenCode, double d, float f, TokenInfo tokenInfo, PriceRate priceRate, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenCode = tokenBalance.code;
        }
        if ((i & 2) != 0) {
            d = tokenBalance.total;
        }
        double d2 = d;
        if ((i & 4) != 0) {
            f = tokenBalance.totalInDollars;
        }
        float f2 = f;
        if ((i & 8) != 0) {
            tokenInfo = tokenBalance.info;
        }
        TokenInfo tokenInfo2 = tokenInfo;
        if ((i & 16) != 0) {
            priceRate = tokenBalance.priceRate;
        }
        PriceRate priceRate2 = priceRate;
        if ((i & 32) != 0) {
            networkType = tokenBalance.networkType;
        }
        return tokenBalance.copy(tokenCode, d2, f2, tokenInfo2, priceRate2, networkType);
    }

    public final TokenCode component1() {
        return this.code;
    }

    public final double component2() {
        return this.total;
    }

    public final float component3() {
        return this.totalInDollars;
    }

    public final TokenInfo component4() {
        return this.info;
    }

    public final PriceRate component5() {
        return this.priceRate;
    }

    public final NetworkType component6() {
        return this.networkType;
    }

    public final TokenBalance copy(TokenCode code, double d, float f, TokenInfo info, PriceRate priceRate, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(priceRate, "priceRate");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new TokenBalance(code, d, f, info, priceRate, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenBalance) {
            TokenBalance tokenBalance = (TokenBalance) obj;
            return this.code == tokenBalance.code && Double.compare(this.total, tokenBalance.total) == 0 && Float.compare(this.totalInDollars, tokenBalance.totalInDollars) == 0 && Intrinsics.areEqual(this.info, tokenBalance.info) && Intrinsics.areEqual(this.priceRate, tokenBalance.priceRate) && this.networkType == tokenBalance.networkType;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.code.hashCode() * 31) + Double.doubleToLongBits(this.total)) * 31) + Float.floatToIntBits(this.totalInDollars)) * 31) + this.info.hashCode()) * 31) + this.priceRate.hashCode()) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "TokenBalance(code=" + this.code + ", total=" + this.total + ", totalInDollars=" + this.totalInDollars + ", info=" + this.info + ", priceRate=" + this.priceRate + ", networkType=" + this.networkType + ')';
    }

    public TokenBalance(TokenCode code, double d, float f, TokenInfo info, PriceRate priceRate, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(priceRate, "priceRate");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.code = code;
        this.total = d;
        this.totalInDollars = f;
        this.info = info;
        this.priceRate = priceRate;
        this.networkType = networkType;
    }

    public final TokenCode getCode() {
        return this.code;
    }

    public final double getTotal() {
        return this.total;
    }

    public final float getTotalInDollars() {
        return this.totalInDollars;
    }

    public final TokenInfo getInfo() {
        return this.info;
    }

    public final PriceRate getPriceRate() {
        return this.priceRate;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    /* compiled from: TokenBalance.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TokenBalance createEmptyBalanceFor(TokenInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            return new TokenBalance(info.getCode(), 0.0d, BitmapDescriptorFactory.HUE_RED, info, new PriceRate(0.0d, BitmapDescriptorFactory.HUE_RED), NetworkType.ETHEREUM);
        }
    }
}
