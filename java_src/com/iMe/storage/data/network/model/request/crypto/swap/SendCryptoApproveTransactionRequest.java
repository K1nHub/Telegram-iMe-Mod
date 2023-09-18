package com.iMe.storage.data.network.model.request.crypto.swap;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendCryptoApproveTransactionRequest.kt */
/* loaded from: classes4.dex */
public final class SendCryptoApproveTransactionRequest {
    private final String defiProtocol;
    private final String networkType;
    private final String signedTransactionBody;

    public static /* synthetic */ SendCryptoApproveTransactionRequest copy$default(SendCryptoApproveTransactionRequest sendCryptoApproveTransactionRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendCryptoApproveTransactionRequest.signedTransactionBody;
        }
        if ((i & 2) != 0) {
            str2 = sendCryptoApproveTransactionRequest.defiProtocol;
        }
        if ((i & 4) != 0) {
            str3 = sendCryptoApproveTransactionRequest.networkType;
        }
        return sendCryptoApproveTransactionRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.signedTransactionBody;
    }

    public final String component2() {
        return this.defiProtocol;
    }

    public final String component3() {
        return this.networkType;
    }

    public final SendCryptoApproveTransactionRequest copy(String signedTransactionBody, String defiProtocol, String networkType) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new SendCryptoApproveTransactionRequest(signedTransactionBody, defiProtocol, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendCryptoApproveTransactionRequest) {
            SendCryptoApproveTransactionRequest sendCryptoApproveTransactionRequest = (SendCryptoApproveTransactionRequest) obj;
            return Intrinsics.areEqual(this.signedTransactionBody, sendCryptoApproveTransactionRequest.signedTransactionBody) && Intrinsics.areEqual(this.defiProtocol, sendCryptoApproveTransactionRequest.defiProtocol) && Intrinsics.areEqual(this.networkType, sendCryptoApproveTransactionRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (((this.signedTransactionBody.hashCode() * 31) + this.defiProtocol.hashCode()) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "SendCryptoApproveTransactionRequest(signedTransactionBody=" + this.signedTransactionBody + ", defiProtocol=" + this.defiProtocol + ", networkType=" + this.networkType + ')';
    }

    public SendCryptoApproveTransactionRequest(String signedTransactionBody, String defiProtocol, String networkType) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.signedTransactionBody = signedTransactionBody;
        this.defiProtocol = defiProtocol;
        this.networkType = networkType;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
