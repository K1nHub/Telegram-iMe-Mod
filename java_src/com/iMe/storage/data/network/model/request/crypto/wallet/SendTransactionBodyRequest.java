package com.iMe.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendTransactionBodyRequest.kt */
/* loaded from: classes4.dex */
public final class SendTransactionBodyRequest {
    private final String signedTransactionBody;

    public static /* synthetic */ SendTransactionBodyRequest copy$default(SendTransactionBodyRequest sendTransactionBodyRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendTransactionBodyRequest.signedTransactionBody;
        }
        return sendTransactionBodyRequest.copy(str);
    }

    public final String component1() {
        return this.signedTransactionBody;
    }

    public final SendTransactionBodyRequest copy(String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        return new SendTransactionBodyRequest(signedTransactionBody);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SendTransactionBodyRequest) && Intrinsics.areEqual(this.signedTransactionBody, ((SendTransactionBodyRequest) obj).signedTransactionBody);
    }

    public int hashCode() {
        return this.signedTransactionBody.hashCode();
    }

    public String toString() {
        return "SendTransactionBodyRequest(signedTransactionBody=" + this.signedTransactionBody + ')';
    }

    public SendTransactionBodyRequest(String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        this.signedTransactionBody = signedTransactionBody;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }
}
