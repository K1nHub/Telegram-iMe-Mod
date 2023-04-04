package com.iMe.storage.data.network.model.request.crypto.cancel;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendEthereumCancelOrBoostTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class SendEthereumCancelOrBoostTransactionRequest {
    private final String oldTransactionHash;
    private final String signedTransactionBody;

    public static /* synthetic */ SendEthereumCancelOrBoostTransactionRequest copy$default(SendEthereumCancelOrBoostTransactionRequest sendEthereumCancelOrBoostTransactionRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendEthereumCancelOrBoostTransactionRequest.signedTransactionBody;
        }
        if ((i & 2) != 0) {
            str2 = sendEthereumCancelOrBoostTransactionRequest.oldTransactionHash;
        }
        return sendEthereumCancelOrBoostTransactionRequest.copy(str, str2);
    }

    public final String component1() {
        return this.signedTransactionBody;
    }

    public final String component2() {
        return this.oldTransactionHash;
    }

    public final SendEthereumCancelOrBoostTransactionRequest copy(String signedTransactionBody, String oldTransactionHash) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(oldTransactionHash, "oldTransactionHash");
        return new SendEthereumCancelOrBoostTransactionRequest(signedTransactionBody, oldTransactionHash);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendEthereumCancelOrBoostTransactionRequest) {
            SendEthereumCancelOrBoostTransactionRequest sendEthereumCancelOrBoostTransactionRequest = (SendEthereumCancelOrBoostTransactionRequest) obj;
            return Intrinsics.areEqual(this.signedTransactionBody, sendEthereumCancelOrBoostTransactionRequest.signedTransactionBody) && Intrinsics.areEqual(this.oldTransactionHash, sendEthereumCancelOrBoostTransactionRequest.oldTransactionHash);
        }
        return false;
    }

    public int hashCode() {
        return (this.signedTransactionBody.hashCode() * 31) + this.oldTransactionHash.hashCode();
    }

    public String toString() {
        return "SendEthereumCancelOrBoostTransactionRequest(signedTransactionBody=" + this.signedTransactionBody + ", oldTransactionHash=" + this.oldTransactionHash + ')';
    }

    public SendEthereumCancelOrBoostTransactionRequest(String signedTransactionBody, String oldTransactionHash) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(oldTransactionHash, "oldTransactionHash");
        this.signedTransactionBody = signedTransactionBody;
        this.oldTransactionHash = oldTransactionHash;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }

    public final String getOldTransactionHash() {
        return this.oldTransactionHash;
    }
}
