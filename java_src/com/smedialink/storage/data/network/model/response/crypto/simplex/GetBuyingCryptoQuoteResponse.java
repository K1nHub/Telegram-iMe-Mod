package com.smedialink.storage.data.network.model.response.crypto.simplex;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetBuyingCryptoQuoteResponse.kt */
/* loaded from: classes3.dex */
public final class GetBuyingCryptoQuoteResponse {
    private final List<CryptoQuote> quotes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetBuyingCryptoQuoteResponse copy$default(GetBuyingCryptoQuoteResponse getBuyingCryptoQuoteResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = getBuyingCryptoQuoteResponse.quotes;
        }
        return getBuyingCryptoQuoteResponse.copy(list);
    }

    public final List<CryptoQuote> component1() {
        return this.quotes;
    }

    public final GetBuyingCryptoQuoteResponse copy(List<CryptoQuote> quotes) {
        Intrinsics.checkNotNullParameter(quotes, "quotes");
        return new GetBuyingCryptoQuoteResponse(quotes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetBuyingCryptoQuoteResponse) && Intrinsics.areEqual(this.quotes, ((GetBuyingCryptoQuoteResponse) obj).quotes);
    }

    public int hashCode() {
        return this.quotes.hashCode();
    }

    public String toString() {
        return "GetBuyingCryptoQuoteResponse(quotes=" + this.quotes + ')';
    }

    public GetBuyingCryptoQuoteResponse(List<CryptoQuote> quotes) {
        Intrinsics.checkNotNullParameter(quotes, "quotes");
        this.quotes = quotes;
    }

    public final List<CryptoQuote> getQuotes() {
        return this.quotes;
    }

    /* compiled from: GetBuyingCryptoQuoteResponse.kt */
    /* loaded from: classes3.dex */
    public static final class CryptoQuote {
        private final float digitalMoneyAmount;
        private final float fiatMoneyAmount;
        private final String quoteId;
        private final String validUntil;

        public static /* synthetic */ CryptoQuote copy$default(CryptoQuote cryptoQuote, String str, String str2, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cryptoQuote.quoteId;
            }
            if ((i & 2) != 0) {
                str2 = cryptoQuote.validUntil;
            }
            if ((i & 4) != 0) {
                f = cryptoQuote.digitalMoneyAmount;
            }
            if ((i & 8) != 0) {
                f2 = cryptoQuote.fiatMoneyAmount;
            }
            return cryptoQuote.copy(str, str2, f, f2);
        }

        public final String component1() {
            return this.quoteId;
        }

        public final String component2() {
            return this.validUntil;
        }

        public final float component3() {
            return this.digitalMoneyAmount;
        }

        public final float component4() {
            return this.fiatMoneyAmount;
        }

        public final CryptoQuote copy(String quoteId, String validUntil, float f, float f2) {
            Intrinsics.checkNotNullParameter(quoteId, "quoteId");
            Intrinsics.checkNotNullParameter(validUntil, "validUntil");
            return new CryptoQuote(quoteId, validUntil, f, f2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CryptoQuote) {
                CryptoQuote cryptoQuote = (CryptoQuote) obj;
                return Intrinsics.areEqual(this.quoteId, cryptoQuote.quoteId) && Intrinsics.areEqual(this.validUntil, cryptoQuote.validUntil) && Intrinsics.areEqual(Float.valueOf(this.digitalMoneyAmount), Float.valueOf(cryptoQuote.digitalMoneyAmount)) && Intrinsics.areEqual(Float.valueOf(this.fiatMoneyAmount), Float.valueOf(cryptoQuote.fiatMoneyAmount));
            }
            return false;
        }

        public int hashCode() {
            return (((((this.quoteId.hashCode() * 31) + this.validUntil.hashCode()) * 31) + Float.floatToIntBits(this.digitalMoneyAmount)) * 31) + Float.floatToIntBits(this.fiatMoneyAmount);
        }

        public String toString() {
            return "CryptoQuote(quoteId=" + this.quoteId + ", validUntil=" + this.validUntil + ", digitalMoneyAmount=" + this.digitalMoneyAmount + ", fiatMoneyAmount=" + this.fiatMoneyAmount + ')';
        }

        public CryptoQuote(String quoteId, String validUntil, float f, float f2) {
            Intrinsics.checkNotNullParameter(quoteId, "quoteId");
            Intrinsics.checkNotNullParameter(validUntil, "validUntil");
            this.quoteId = quoteId;
            this.validUntil = validUntil;
            this.digitalMoneyAmount = f;
            this.fiatMoneyAmount = f2;
        }

        public final String getQuoteId() {
            return this.quoteId;
        }

        public final String getValidUntil() {
            return this.validUntil;
        }

        public final float getDigitalMoneyAmount() {
            return this.digitalMoneyAmount;
        }

        public final float getFiatMoneyAmount() {
            return this.fiatMoneyAmount;
        }
    }
}
