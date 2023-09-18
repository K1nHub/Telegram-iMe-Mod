package com.iMe.storage.data.network.model.request.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetTransactionRequest.kt */
/* loaded from: classes4.dex */
public final class BinancePayGetTransactionRequest {
    private final String transactionId;

    public static /* synthetic */ BinancePayGetTransactionRequest copy$default(BinancePayGetTransactionRequest binancePayGetTransactionRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayGetTransactionRequest.transactionId;
        }
        return binancePayGetTransactionRequest.copy(str);
    }

    public final String component1() {
        return this.transactionId;
    }

    public final BinancePayGetTransactionRequest copy(String transactionId) {
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        return new BinancePayGetTransactionRequest(transactionId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinancePayGetTransactionRequest) && Intrinsics.areEqual(this.transactionId, ((BinancePayGetTransactionRequest) obj).transactionId);
    }

    public int hashCode() {
        return this.transactionId.hashCode();
    }

    public String toString() {
        return "BinancePayGetTransactionRequest(transactionId=" + this.transactionId + ')';
    }

    public BinancePayGetTransactionRequest(String transactionId) {
        Intrinsics.checkNotNullParameter(transactionId, "transactionId");
        this.transactionId = transactionId;
    }

    public final String getTransactionId() {
        return this.transactionId;
    }
}
