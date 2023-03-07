package com.smedialink.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionResponse.kt */
/* loaded from: classes3.dex */
public final class TransactionResponse {
    private final String transactionHash;

    public static /* synthetic */ TransactionResponse copy$default(TransactionResponse transactionResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = transactionResponse.transactionHash;
        }
        return transactionResponse.copy(str);
    }

    public final String component1() {
        return this.transactionHash;
    }

    public final TransactionResponse copy(String transactionHash) {
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        return new TransactionResponse(transactionHash);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TransactionResponse) && Intrinsics.areEqual(this.transactionHash, ((TransactionResponse) obj).transactionHash);
    }

    public int hashCode() {
        return this.transactionHash.hashCode();
    }

    public String toString() {
        return "TransactionResponse(transactionHash=" + this.transactionHash + ')';
    }

    public TransactionResponse(String transactionHash) {
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        this.transactionHash = transactionHash;
    }

    public final String getTransactionHash() {
        return this.transactionHash;
    }
}
