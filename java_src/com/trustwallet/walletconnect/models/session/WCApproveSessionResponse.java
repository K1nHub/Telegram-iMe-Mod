package com.trustwallet.walletconnect.models.session;

import com.trustwallet.walletconnect.models.WCPeerMeta;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCApproveSessionResponse.kt */
/* loaded from: classes3.dex */
public final class WCApproveSessionResponse {
    private final List<String> accounts;
    private final boolean approved;
    private final int chainId;
    private final String peerId;
    private final WCPeerMeta peerMeta;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCApproveSessionResponse) {
            WCApproveSessionResponse wCApproveSessionResponse = (WCApproveSessionResponse) obj;
            return this.approved == wCApproveSessionResponse.approved && this.chainId == wCApproveSessionResponse.chainId && Intrinsics.areEqual(this.accounts, wCApproveSessionResponse.accounts) && Intrinsics.areEqual(this.peerId, wCApproveSessionResponse.peerId) && Intrinsics.areEqual(this.peerMeta, wCApproveSessionResponse.peerMeta);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public int hashCode() {
        boolean z = this.approved;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int hashCode = ((((r0 * 31) + this.chainId) * 31) + this.accounts.hashCode()) * 31;
        String str = this.peerId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        WCPeerMeta wCPeerMeta = this.peerMeta;
        return hashCode2 + (wCPeerMeta != null ? wCPeerMeta.hashCode() : 0);
    }

    public String toString() {
        return "WCApproveSessionResponse(approved=" + this.approved + ", chainId=" + this.chainId + ", accounts=" + this.accounts + ", peerId=" + this.peerId + ", peerMeta=" + this.peerMeta + ')';
    }

    public WCApproveSessionResponse(boolean z, int i, List<String> accounts, String str, WCPeerMeta wCPeerMeta) {
        Intrinsics.checkNotNullParameter(accounts, "accounts");
        this.approved = z;
        this.chainId = i;
        this.accounts = accounts;
        this.peerId = str;
        this.peerMeta = wCPeerMeta;
    }

    public /* synthetic */ WCApproveSessionResponse(boolean z, int i, List list, String str, WCPeerMeta wCPeerMeta, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, i, list, str, wCPeerMeta);
    }
}
