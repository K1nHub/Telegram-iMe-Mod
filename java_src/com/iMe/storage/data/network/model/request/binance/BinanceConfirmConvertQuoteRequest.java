package com.iMe.storage.data.network.model.request.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceConfirmConvertQuoteRequest.kt */
/* loaded from: classes3.dex */
public final class BinanceConfirmConvertQuoteRequest {
    private final String quoteId;

    public static /* synthetic */ BinanceConfirmConvertQuoteRequest copy$default(BinanceConfirmConvertQuoteRequest binanceConfirmConvertQuoteRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceConfirmConvertQuoteRequest.quoteId;
        }
        return binanceConfirmConvertQuoteRequest.copy(str);
    }

    public final String component1() {
        return this.quoteId;
    }

    public final BinanceConfirmConvertQuoteRequest copy(String quoteId) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        return new BinanceConfirmConvertQuoteRequest(quoteId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinanceConfirmConvertQuoteRequest) && Intrinsics.areEqual(this.quoteId, ((BinanceConfirmConvertQuoteRequest) obj).quoteId);
    }

    public int hashCode() {
        return this.quoteId.hashCode();
    }

    public String toString() {
        return "BinanceConfirmConvertQuoteRequest(quoteId=" + this.quoteId + ')';
    }

    public BinanceConfirmConvertQuoteRequest(String quoteId) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        this.quoteId = quoteId;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }
}
