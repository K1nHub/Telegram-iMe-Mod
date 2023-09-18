package com.iMe.storage.domain.model.crypto.simplex;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BuyingCryptoQuoteArgs.kt */
/* loaded from: classes4.dex */
public final class BuyingCryptoQuoteArgs {
    private final float amount;
    private final Currency digitalCurrency;
    private final Currency fiatCurrency;
    private final String networkId;
    private final Currency requestedCurrency;

    public static /* synthetic */ BuyingCryptoQuoteArgs copy$default(BuyingCryptoQuoteArgs buyingCryptoQuoteArgs, Currency currency, Currency currency2, Currency currency3, float f, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            currency = buyingCryptoQuoteArgs.digitalCurrency;
        }
        if ((i & 2) != 0) {
            currency2 = buyingCryptoQuoteArgs.fiatCurrency;
        }
        Currency currency4 = currency2;
        if ((i & 4) != 0) {
            currency3 = buyingCryptoQuoteArgs.requestedCurrency;
        }
        Currency currency5 = currency3;
        if ((i & 8) != 0) {
            f = buyingCryptoQuoteArgs.amount;
        }
        float f2 = f;
        if ((i & 16) != 0) {
            str = buyingCryptoQuoteArgs.networkId;
        }
        return buyingCryptoQuoteArgs.copy(currency, currency4, currency5, f2, str);
    }

    public final Currency component1() {
        return this.digitalCurrency;
    }

    public final Currency component2() {
        return this.fiatCurrency;
    }

    public final Currency component3() {
        return this.requestedCurrency;
    }

    public final float component4() {
        return this.amount;
    }

    public final String component5() {
        return this.networkId;
    }

    public final BuyingCryptoQuoteArgs copy(Currency digitalCurrency, Currency fiatCurrency, Currency requestedCurrency, float f, String networkId) {
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(requestedCurrency, "requestedCurrency");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        return new BuyingCryptoQuoteArgs(digitalCurrency, fiatCurrency, requestedCurrency, f, networkId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BuyingCryptoQuoteArgs) {
            BuyingCryptoQuoteArgs buyingCryptoQuoteArgs = (BuyingCryptoQuoteArgs) obj;
            return Intrinsics.areEqual(this.digitalCurrency, buyingCryptoQuoteArgs.digitalCurrency) && Intrinsics.areEqual(this.fiatCurrency, buyingCryptoQuoteArgs.fiatCurrency) && Intrinsics.areEqual(this.requestedCurrency, buyingCryptoQuoteArgs.requestedCurrency) && Float.compare(this.amount, buyingCryptoQuoteArgs.amount) == 0 && Intrinsics.areEqual(this.networkId, buyingCryptoQuoteArgs.networkId);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.digitalCurrency.hashCode() * 31) + this.fiatCurrency.hashCode()) * 31) + this.requestedCurrency.hashCode()) * 31) + Float.floatToIntBits(this.amount)) * 31) + this.networkId.hashCode();
    }

    public String toString() {
        return "BuyingCryptoQuoteArgs(digitalCurrency=" + this.digitalCurrency + ", fiatCurrency=" + this.fiatCurrency + ", requestedCurrency=" + this.requestedCurrency + ", amount=" + this.amount + ", networkId=" + this.networkId + ')';
    }

    public BuyingCryptoQuoteArgs(Currency digitalCurrency, Currency fiatCurrency, Currency requestedCurrency, float f, String networkId) {
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(requestedCurrency, "requestedCurrency");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        this.digitalCurrency = digitalCurrency;
        this.fiatCurrency = fiatCurrency;
        this.requestedCurrency = requestedCurrency;
        this.amount = f;
        this.networkId = networkId;
    }

    public final Currency getDigitalCurrency() {
        return this.digitalCurrency;
    }

    public final Currency getFiatCurrency() {
        return this.fiatCurrency;
    }

    public final Currency getRequestedCurrency() {
        return this.requestedCurrency;
    }

    public final float getAmount() {
        return this.amount;
    }

    public final String getNetworkId() {
        return this.networkId;
    }
}
