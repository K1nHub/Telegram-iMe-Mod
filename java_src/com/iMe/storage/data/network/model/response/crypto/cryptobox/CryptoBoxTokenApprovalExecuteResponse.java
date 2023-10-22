package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTokenApprovalExecuteResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTokenApprovalExecuteResponse {
    private final String transactionUrl;

    public static /* synthetic */ CryptoBoxTokenApprovalExecuteResponse copy$default(CryptoBoxTokenApprovalExecuteResponse cryptoBoxTokenApprovalExecuteResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxTokenApprovalExecuteResponse.transactionUrl;
        }
        return cryptoBoxTokenApprovalExecuteResponse.copy(str);
    }

    public final String component1() {
        return this.transactionUrl;
    }

    public final CryptoBoxTokenApprovalExecuteResponse copy(String transactionUrl) {
        Intrinsics.checkNotNullParameter(transactionUrl, "transactionUrl");
        return new CryptoBoxTokenApprovalExecuteResponse(transactionUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxTokenApprovalExecuteResponse) && Intrinsics.areEqual(this.transactionUrl, ((CryptoBoxTokenApprovalExecuteResponse) obj).transactionUrl);
    }

    public int hashCode() {
        return this.transactionUrl.hashCode();
    }

    public String toString() {
        return "CryptoBoxTokenApprovalExecuteResponse(transactionUrl=" + this.transactionUrl + ')';
    }

    public CryptoBoxTokenApprovalExecuteResponse(String transactionUrl) {
        Intrinsics.checkNotNullParameter(transactionUrl, "transactionUrl");
        this.transactionUrl = transactionUrl;
    }

    public final String getTransactionUrl() {
        return this.transactionUrl;
    }
}
