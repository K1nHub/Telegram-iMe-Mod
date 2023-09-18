package com.iMe.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendTransferTransactionRequest.kt */
/* loaded from: classes4.dex */
public final class SendTransferTransactionRequest {
    private final String networkType;
    private final String signedTransactionBody;

    public static /* synthetic */ SendTransferTransactionRequest copy$default(SendTransferTransactionRequest sendTransferTransactionRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendTransferTransactionRequest.signedTransactionBody;
        }
        if ((i & 2) != 0) {
            str2 = sendTransferTransactionRequest.networkType;
        }
        return sendTransferTransactionRequest.copy(str, str2);
    }

    public final String component1() {
        return this.signedTransactionBody;
    }

    public final String component2() {
        return this.networkType;
    }

    public final SendTransferTransactionRequest copy(String signedTransactionBody, String networkType) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new SendTransferTransactionRequest(signedTransactionBody, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendTransferTransactionRequest) {
            SendTransferTransactionRequest sendTransferTransactionRequest = (SendTransferTransactionRequest) obj;
            return Intrinsics.areEqual(this.signedTransactionBody, sendTransferTransactionRequest.signedTransactionBody) && Intrinsics.areEqual(this.networkType, sendTransferTransactionRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (this.signedTransactionBody.hashCode() * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "SendTransferTransactionRequest(signedTransactionBody=" + this.signedTransactionBody + ", networkType=" + this.networkType + ')';
    }

    public SendTransferTransactionRequest(String signedTransactionBody, String networkType) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.signedTransactionBody = signedTransactionBody;
        this.networkType = networkType;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
