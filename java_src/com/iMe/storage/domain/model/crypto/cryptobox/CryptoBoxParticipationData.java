package com.iMe.storage.domain.model.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxParticipationData.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxParticipationData {
    private final CryptoBoxParticipationStatus status;
    private final String transactionUrl;

    public static /* synthetic */ CryptoBoxParticipationData copy$default(CryptoBoxParticipationData cryptoBoxParticipationData, CryptoBoxParticipationStatus cryptoBoxParticipationStatus, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoBoxParticipationStatus = cryptoBoxParticipationData.status;
        }
        if ((i & 2) != 0) {
            str = cryptoBoxParticipationData.transactionUrl;
        }
        return cryptoBoxParticipationData.copy(cryptoBoxParticipationStatus, str);
    }

    public final CryptoBoxParticipationStatus component1() {
        return this.status;
    }

    public final String component2() {
        return this.transactionUrl;
    }

    public final CryptoBoxParticipationData copy(CryptoBoxParticipationStatus status, String transactionUrl) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(transactionUrl, "transactionUrl");
        return new CryptoBoxParticipationData(status, transactionUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxParticipationData) {
            CryptoBoxParticipationData cryptoBoxParticipationData = (CryptoBoxParticipationData) obj;
            return this.status == cryptoBoxParticipationData.status && Intrinsics.areEqual(this.transactionUrl, cryptoBoxParticipationData.transactionUrl);
        }
        return false;
    }

    public int hashCode() {
        return (this.status.hashCode() * 31) + this.transactionUrl.hashCode();
    }

    public String toString() {
        return "CryptoBoxParticipationData(status=" + this.status + ", transactionUrl=" + this.transactionUrl + ')';
    }

    public CryptoBoxParticipationData(CryptoBoxParticipationStatus status, String transactionUrl) {
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
