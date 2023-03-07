package com.trustwallet.walletconnect.models.session;

import com.trustwallet.walletconnect.models.WCPeerMeta;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCSessionRequest.kt */
/* loaded from: classes3.dex */
public final class WCSessionRequest {
    private final String chainId;
    private final String peerId;
    private final WCPeerMeta peerMeta;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCSessionRequest) {
            WCSessionRequest wCSessionRequest = (WCSessionRequest) obj;
            return Intrinsics.areEqual(this.peerId, wCSessionRequest.peerId) && Intrinsics.areEqual(this.peerMeta, wCSessionRequest.peerMeta) && Intrinsics.areEqual(this.chainId, wCSessionRequest.chainId);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.peerId.hashCode() * 31) + this.peerMeta.hashCode()) * 31;
        String str = this.chainId;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "WCSessionRequest(peerId=" + this.peerId + ", peerMeta=" + this.peerMeta + ", chainId=" + this.chainId + ')';
    }

    public final String getPeerId() {
        return this.peerId;
    }

    public final WCPeerMeta getPeerMeta() {
        return this.peerMeta;
    }

    public final String getChainId() {
        return this.chainId;
    }
}
