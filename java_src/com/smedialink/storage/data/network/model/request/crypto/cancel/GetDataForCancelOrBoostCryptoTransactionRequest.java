package com.smedialink.storage.data.network.model.request.crypto.cancel;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDataForCancelOrBoostCryptoTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class GetDataForCancelOrBoostCryptoTransactionRequest {
    private final String transactionHash;

    public static /* synthetic */ GetDataForCancelOrBoostCryptoTransactionRequest copy$default(GetDataForCancelOrBoostCryptoTransactionRequest getDataForCancelOrBoostCryptoTransactionRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getDataForCancelOrBoostCryptoTransactionRequest.transactionHash;
        }
        return getDataForCancelOrBoostCryptoTransactionRequest.copy(str);
    }

    public final String component1() {
        return this.transactionHash;
    }

    public final GetDataForCancelOrBoostCryptoTransactionRequest copy(String transactionHash) {
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        return new GetDataForCancelOrBoostCryptoTransactionRequest(transactionHash);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetDataForCancelOrBoostCryptoTransactionRequest) && Intrinsics.areEqual(this.transactionHash, ((GetDataForCancelOrBoostCryptoTransactionRequest) obj).transactionHash);
    }

    public int hashCode() {
        return this.transactionHash.hashCode();
    }

    public String toString() {
        return "GetDataForCancelOrBoostCryptoTransactionRequest(transactionHash=" + this.transactionHash + ')';
    }

    public GetDataForCancelOrBoostCryptoTransactionRequest(String transactionHash) {
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        this.transactionHash = transactionHash;
    }

    public final String getTransactionHash() {
        return this.transactionHash;
    }
}
