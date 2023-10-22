package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTokenApprovalStatus;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTokenApprovalResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTokenApprovalResponse {
    private final CryptoBoxTokenApprovalStatus status;
    private final TokenDetailedResponse token;

    public static /* synthetic */ CryptoBoxTokenApprovalResponse copy$default(CryptoBoxTokenApprovalResponse cryptoBoxTokenApprovalResponse, CryptoBoxTokenApprovalStatus cryptoBoxTokenApprovalStatus, TokenDetailedResponse tokenDetailedResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoBoxTokenApprovalStatus = cryptoBoxTokenApprovalResponse.status;
        }
        if ((i & 2) != 0) {
            tokenDetailedResponse = cryptoBoxTokenApprovalResponse.token;
        }
        return cryptoBoxTokenApprovalResponse.copy(cryptoBoxTokenApprovalStatus, tokenDetailedResponse);
    }

    public final CryptoBoxTokenApprovalStatus component1() {
        return this.status;
    }

    public final TokenDetailedResponse component2() {
        return this.token;
    }

    public final CryptoBoxTokenApprovalResponse copy(CryptoBoxTokenApprovalStatus status, TokenDetailedResponse token) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(token, "token");
        return new CryptoBoxTokenApprovalResponse(status, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTokenApprovalResponse) {
            CryptoBoxTokenApprovalResponse cryptoBoxTokenApprovalResponse = (CryptoBoxTokenApprovalResponse) obj;
            return this.status == cryptoBoxTokenApprovalResponse.status && Intrinsics.areEqual(this.token, cryptoBoxTokenApprovalResponse.token);
        }
        return false;
    }

    public int hashCode() {
        return (this.status.hashCode() * 31) + this.token.hashCode();
    }

    public String toString() {
        return "CryptoBoxTokenApprovalResponse(status=" + this.status + ", token=" + this.token + ')';
    }

    public CryptoBoxTokenApprovalResponse(CryptoBoxTokenApprovalStatus status, TokenDetailedResponse token) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(token, "token");
        this.status = status;
        this.token = token;
    }

    public final CryptoBoxTokenApprovalStatus getStatus() {
        return this.status;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }
}
