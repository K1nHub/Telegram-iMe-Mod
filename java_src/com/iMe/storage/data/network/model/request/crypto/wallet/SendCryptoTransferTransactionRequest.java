package com.iMe.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendCryptoTransferTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class SendCryptoTransferTransactionRequest {
    private final String signedTransactionBody;

    public static /* synthetic */ SendCryptoTransferTransactionRequest copy$default(SendCryptoTransferTransactionRequest sendCryptoTransferTransactionRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendCryptoTransferTransactionRequest.signedTransactionBody;
        }
        return sendCryptoTransferTransactionRequest.copy(str);
    }

    public final String component1() {
        return this.signedTransactionBody;
    }

    public final SendCryptoTransferTransactionRequest copy(String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        return new SendCryptoTransferTransactionRequest(signedTransactionBody);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SendCryptoTransferTransactionRequest) && Intrinsics.areEqual(this.signedTransactionBody, ((SendCryptoTransferTransactionRequest) obj).signedTransactionBody);
    }

    public int hashCode() {
        return this.signedTransactionBody.hashCode();
    }

    public String toString() {
        return "SendCryptoTransferTransactionRequest(signedTransactionBody=" + this.signedTransactionBody + ')';
    }

    public SendCryptoTransferTransactionRequest(String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        this.signedTransactionBody = signedTransactionBody;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }
}
