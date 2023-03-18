package com.smedialink.storage.domain.model.crypto.simplex;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BuyingCryptoQuote.kt */
/* loaded from: classes3.dex */
public final class BuyingCryptoQuote {
    private final float cryptoMoneyAmount;
    private final float fiatMoneyAmount;
    private final String quoteId;
    public static final Companion Companion = new Companion(null);
    private static final BuyingCryptoQuote CUSTOM_QUOTE = new BuyingCryptoQuote("", -1.0f, -1.0f);

    public static /* synthetic */ BuyingCryptoQuote copy$default(BuyingCryptoQuote buyingCryptoQuote, String str, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = buyingCryptoQuote.quoteId;
        }
        if ((i & 2) != 0) {
            f = buyingCryptoQuote.cryptoMoneyAmount;
        }
        if ((i & 4) != 0) {
            f2 = buyingCryptoQuote.fiatMoneyAmount;
        }
        return buyingCryptoQuote.copy(str, f, f2);
    }

    public final String component1() {
        return this.quoteId;
    }

    public final float component2() {
        return this.cryptoMoneyAmount;
    }

    public final float component3() {
        return this.fiatMoneyAmount;
    }

    public final BuyingCryptoQuote copy(String quoteId, float f, float f2) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        return new BuyingCryptoQuote(quoteId, f, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BuyingCryptoQuote) {
            BuyingCryptoQuote buyingCryptoQuote = (BuyingCryptoQuote) obj;
            return Intrinsics.areEqual(this.quoteId, buyingCryptoQuote.quoteId) && Float.compare(this.cryptoMoneyAmount, buyingCryptoQuote.cryptoMoneyAmount) == 0 && Float.compare(this.fiatMoneyAmount, buyingCryptoQuote.fiatMoneyAmount) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((this.quoteId.hashCode() * 31) + Float.floatToIntBits(this.cryptoMoneyAmount)) * 31) + Float.floatToIntBits(this.fiatMoneyAmount);
    }

    public String toString() {
        return "BuyingCryptoQuote(quoteId=" + this.quoteId + ", cryptoMoneyAmount=" + this.cryptoMoneyAmount + ", fiatMoneyAmount=" + this.fiatMoneyAmount + ')';
    }

    public BuyingCryptoQuote(String quoteId, float f, float f2) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        this.quoteId = quoteId;
        this.cryptoMoneyAmount = f;
        this.fiatMoneyAmount = f2;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final float getCryptoMoneyAmount() {
        return this.cryptoMoneyAmount;
    }

    public final float getFiatMoneyAmount() {
        return this.fiatMoneyAmount;
    }

    /* compiled from: BuyingCryptoQuote.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BuyingCryptoQuote getCUSTOM_QUOTE() {
            return BuyingCryptoQuote.CUSTOM_QUOTE;
        }
    }
}
