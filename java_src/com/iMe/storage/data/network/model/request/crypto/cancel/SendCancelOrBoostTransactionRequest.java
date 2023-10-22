package com.iMe.storage.data.network.model.request.crypto.cancel;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendCancelOrBoostTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class SendCancelOrBoostTransactionRequest {
    private final String oldTransactionHash;
    private final String signedTransactionBody;

    public static /* synthetic */ SendCancelOrBoostTransactionRequest copy$default(SendCancelOrBoostTransactionRequest sendCancelOrBoostTransactionRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendCancelOrBoostTransactionRequest.signedTransactionBody;
        }
        if ((i & 2) != 0) {
            str2 = sendCancelOrBoostTransactionRequest.oldTransactionHash;
        }
        return sendCancelOrBoostTransactionRequest.copy(str, str2);
    }

    public final String component1() {
        return this.signedTransactionBody;
    }

    public final String component2() {
        return this.oldTransactionHash;
    }

    public final SendCancelOrBoostTransactionRequest copy(String signedTransactionBody, String oldTransactionHash) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(oldTransactionHash, "oldTransactionHash");
        return new SendCancelOrBoostTransactionRequest(signedTransactionBody, oldTransactionHash);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendCancelOrBoostTransactionRequest) {
            SendCancelOrBoostTransactionRequest sendCancelOrBoostTransactionRequest = (SendCancelOrBoostTransactionRequest) obj;
            return Intrinsics.areEqual(this.signedTransactionBody, sendCancelOrBoostTransactionRequest.signedTransactionBody) && Intrinsics.areEqual(this.oldTransactionHash, sendCancelOrBoostTransactionRequest.oldTransactionHash);
        }
        return false;
    }

    public int hashCode() {
        return (this.signedTransactionBody.hashCode() * 31) + this.oldTransactionHash.hashCode();
    }

    public String toString() {
        return "SendCancelOrBoostTransactionRequest(signedTransactionBody=" + this.signedTransactionBody + ", oldTransactionHash=" + this.oldTransactionHash + ')';
    }

    public SendCancelOrBoostTransactionRequest(String signedTransactionBody, String oldTransactionHash) {
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
