package com.smedialink.storage.data.network.model.request.crypto.swap;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendCryptoSwapTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class SendCryptoSwapTransactionRequest {
    private final String defiProtocol;
    private final String networkType;
    private final String outputNetworkType;
    private final String quoteId;
    private final String signedTransactionBody;

    public static /* synthetic */ SendCryptoSwapTransactionRequest copy$default(SendCryptoSwapTransactionRequest sendCryptoSwapTransactionRequest, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendCryptoSwapTransactionRequest.signedTransactionBody;
        }
        if ((i & 2) != 0) {
            str2 = sendCryptoSwapTransactionRequest.quoteId;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = sendCryptoSwapTransactionRequest.defiProtocol;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = sendCryptoSwapTransactionRequest.networkType;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = sendCryptoSwapTransactionRequest.outputNetworkType;
        }
        return sendCryptoSwapTransactionRequest.copy(str, str6, str7, str8, str5);
    }

    public final String component1() {
        return this.signedTransactionBody;
    }

    public final String component2() {
        return this.quoteId;
    }

    public final String component3() {
        return this.defiProtocol;
    }

    public final String component4() {
        return this.networkType;
    }

    public final String component5() {
        return this.outputNetworkType;
    }

    public final SendCryptoSwapTransactionRequest copy(String signedTransactionBody, String quoteId, String defiProtocol, String networkType, String str) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new SendCryptoSwapTransactionRequest(signedTransactionBody, quoteId, defiProtocol, networkType, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendCryptoSwapTransactionRequest) {
            SendCryptoSwapTransactionRequest sendCryptoSwapTransactionRequest = (SendCryptoSwapTransactionRequest) obj;
            return Intrinsics.areEqual(this.signedTransactionBody, sendCryptoSwapTransactionRequest.signedTransactionBody) && Intrinsics.areEqual(this.quoteId, sendCryptoSwapTransactionRequest.quoteId) && Intrinsics.areEqual(this.defiProtocol, sendCryptoSwapTransactionRequest.defiProtocol) && Intrinsics.areEqual(this.networkType, sendCryptoSwapTransactionRequest.networkType) && Intrinsics.areEqual(this.outputNetworkType, sendCryptoSwapTransactionRequest.outputNetworkType);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((this.signedTransactionBody.hashCode() * 31) + this.quoteId.hashCode()) * 31) + this.defiProtocol.hashCode()) * 31) + this.networkType.hashCode()) * 31;
        String str = this.outputNetworkType;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "SendCryptoSwapTransactionRequest(signedTransactionBody=" + this.signedTransactionBody + ", quoteId=" + this.quoteId + ", defiProtocol=" + this.defiProtocol + ", networkType=" + this.networkType + ", outputNetworkType=" + this.outputNetworkType + ')';
    }

    public SendCryptoSwapTransactionRequest(String signedTransactionBody, String quoteId, String defiProtocol, String networkType, String str) {
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.signedTransactionBody = signedTransactionBody;
        this.quoteId = quoteId;
        this.defiProtocol = defiProtocol;
        this.networkType = networkType;
        this.outputNetworkType = str;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getOutputNetworkType() {
        return this.outputNetworkType;
    }
}
