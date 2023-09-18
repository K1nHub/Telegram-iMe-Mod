package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxParticipationStatus;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxParticipationDataResponse.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxParticipationDataResponse {
    private final CryptoBoxParticipationStatus status;
    private final String transactionUrl;

    public static /* synthetic */ CryptoBoxParticipationDataResponse copy$default(CryptoBoxParticipationDataResponse cryptoBoxParticipationDataResponse, CryptoBoxParticipationStatus cryptoBoxParticipationStatus, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoBoxParticipationStatus = cryptoBoxParticipationDataResponse.status;
        }
        if ((i & 2) != 0) {
            str = cryptoBoxParticipationDataResponse.transactionUrl;
        }
        return cryptoBoxParticipationDataResponse.copy(cryptoBoxParticipationStatus, str);
    }

    public final CryptoBoxParticipationStatus component1() {
        return this.status;
    }

    public final String component2() {
        return this.transactionUrl;
    }

    public final CryptoBoxParticipationDataResponse copy(CryptoBoxParticipationStatus status, String transactionUrl) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(transactionUrl, "transactionUrl");
        return new CryptoBoxParticipationDataResponse(status, transactionUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxParticipationDataResponse) {
            CryptoBoxParticipationDataResponse cryptoBoxParticipationDataResponse = (CryptoBoxParticipationDataResponse) obj;
            return this.status == cryptoBoxParticipationDataResponse.status && Intrinsics.areEqual(this.transactionUrl, cryptoBoxParticipationDataResponse.transactionUrl);
        }
        return false;
    }

    public int hashCode() {
        return (this.status.hashCode() * 31) + this.transactionUrl.hashCode();
    }

    public String toString() {
        return "CryptoBoxParticipationDataResponse(status=" + this.status + ", transactionUrl=" + this.transactionUrl + ')';
    }

    public CryptoBoxParticipationDataResponse(CryptoBoxParticipationStatus status, String transactionUrl) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(transactionUrl, "transactionUrl");
        this.status = status;
        this.transactionUrl = transactionUrl;
    }

    public final CryptoBoxParticipationStatus getStatus() {
        return this.status;
    }

    public final String getTransactionUrl() {
        return this.transactionUrl;
    }
}
