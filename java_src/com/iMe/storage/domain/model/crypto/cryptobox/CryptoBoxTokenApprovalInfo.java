package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTokenApprovalInfo.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTokenApprovalInfo {
    private final CryptoBoxTokenApprovalStatus status;
    private final TokenDetailed token;

    public static /* synthetic */ CryptoBoxTokenApprovalInfo copy$default(CryptoBoxTokenApprovalInfo cryptoBoxTokenApprovalInfo, CryptoBoxTokenApprovalStatus cryptoBoxTokenApprovalStatus, TokenDetailed tokenDetailed, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoBoxTokenApprovalStatus = cryptoBoxTokenApprovalInfo.status;
        }
        if ((i & 2) != 0) {
            tokenDetailed = cryptoBoxTokenApprovalInfo.token;
        }
        return cryptoBoxTokenApprovalInfo.copy(cryptoBoxTokenApprovalStatus, tokenDetailed);
    }

    public final CryptoBoxTokenApprovalStatus component1() {
        return this.status;
    }

    public final TokenDetailed component2() {
        return this.token;
    }

    public final CryptoBoxTokenApprovalInfo copy(CryptoBoxTokenApprovalStatus status, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(token, "token");
        return new CryptoBoxTokenApprovalInfo(status, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTokenApprovalInfo) {
            CryptoBoxTokenApprovalInfo cryptoBoxTokenApprovalInfo = (CryptoBoxTokenApprovalInfo) obj;
            return this.status == cryptoBoxTokenApprovalInfo.status && Intrinsics.areEqual(this.token, cryptoBoxTokenApprovalInfo.token);
        }
        return false;
    }

    public int hashCode() {
        return (this.status.hashCode() * 31) + this.token.hashCode();
    }

    public String toString() {
        return "CryptoBoxTokenApprovalInfo(status=" + this.status + ", token=" + this.token + ')';
    }

    public CryptoBoxTokenApprovalInfo(CryptoBoxTokenApprovalStatus status, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(token, "token");
        this.status = status;
        this.token = token;
    }

    public final CryptoBoxTokenApprovalStatus getStatus() {
        return this.status;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }
}
