package com.iMe.storage.data.network.model.request.crypto.cancel;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDataForCancelOrBoostCryptoTransactionRequest.kt */
/* loaded from: classes4.dex */
public final class PrepareSpeedUpOrCancelTransactionRequest {
    private final String transactionHash;

    public static /* synthetic */ PrepareSpeedUpOrCancelTransactionRequest copy$default(PrepareSpeedUpOrCancelTransactionRequest prepareSpeedUpOrCancelTransactionRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = prepareSpeedUpOrCancelTransactionRequest.transactionHash;
        }
        return prepareSpeedUpOrCancelTransactionRequest.copy(str);
    }

    public final String component1() {
        return this.transactionHash;
    }

    public final PrepareSpeedUpOrCancelTransactionRequest copy(String transactionHash) {
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        return new PrepareSpeedUpOrCancelTransactionRequest(transactionHash);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PrepareSpeedUpOrCancelTransactionRequest) && Intrinsics.areEqual(this.transactionHash, ((PrepareSpeedUpOrCancelTransactionRequest) obj).transactionHash);
    }

    public int hashCode() {
        return this.transactionHash.hashCode();
    }

    public String toString() {
        return "PrepareSpeedUpOrCancelTransactionRequest(transactionHash=" + this.transactionHash + ')';
    }

    public PrepareSpeedUpOrCancelTransactionRequest(String transactionHash) {
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        this.transactionHash = transactionHash;
    }

    public final String getTransactionHash() {
        return this.transactionHash;
    }
}
