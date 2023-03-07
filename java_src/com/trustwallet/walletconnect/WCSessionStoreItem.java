package com.trustwallet.walletconnect;

import com.trustwallet.walletconnect.models.WCPeerMeta;
import com.trustwallet.walletconnect.models.session.WCSession;
import java.util.Date;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCSessionStore.kt */
/* loaded from: classes3.dex */
public final class WCSessionStoreItem {
    private final int chainId;
    private final Date date;
    private final boolean isAutoSign;
    private final String peerId;
    private final String remotePeerId;
    private final WCPeerMeta remotePeerMeta;
    private final WCSession session;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCSessionStoreItem) {
            WCSessionStoreItem wCSessionStoreItem = (WCSessionStoreItem) obj;
            return Intrinsics.areEqual(this.session, wCSessionStoreItem.session) && this.chainId == wCSessionStoreItem.chainId && Intrinsics.areEqual(this.peerId, wCSessionStoreItem.peerId) && Intrinsics.areEqual(this.remotePeerId, wCSessionStoreItem.remotePeerId) && Intrinsics.areEqual(this.remotePeerMeta, wCSessionStoreItem.remotePeerMeta) && this.isAutoSign == wCSessionStoreItem.isAutoSign && Intrinsics.areEqual(this.date, wCSessionStoreItem.date);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.session.hashCode() * 31) + this.chainId) * 31) + this.peerId.hashCode()) * 31) + this.remotePeerId.hashCode()) * 31) + this.remotePeerMeta.hashCode()) * 31;
        boolean z = this.isAutoSign;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.date.hashCode();
    }

    public String toString() {
        return "WCSessionStoreItem(session=" + this.session + ", chainId=" + this.chainId + ", peerId=" + this.peerId + ", remotePeerId=" + this.remotePeerId + ", remotePeerMeta=" + this.remotePeerMeta + ", isAutoSign=" + this.isAutoSign + ", date=" + this.date + ')';
    }

    public WCSessionStoreItem(WCSession session, int i, String peerId, String remotePeerId, WCPeerMeta remotePeerMeta, boolean z, Date date) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(peerId, "peerId");
        Intrinsics.checkNotNullParameter(remotePeerId, "remotePeerId");
        Intrinsics.checkNotNullParameter(remotePeerMeta, "remotePeerMeta");
        Intrinsics.checkNotNullParameter(date, "date");
        this.session = session;
        this.chainId = i;
        this.peerId = peerId;
        this.remotePeerId = remotePeerId;
        this.remotePeerMeta = remotePeerMeta;
        this.isAutoSign = z;
        this.date = date;
    }

    public final WCSession getSession() {
        return this.session;
    }

    public final int getChainId() {
        return this.chainId;
    }

    public final String getPeerId() {
        return this.peerId;
    }

    public final String getRemotePeerId() {
        return this.remotePeerId;
    }

    public final WCPeerMeta getRemotePeerMeta() {
        return this.remotePeerMeta;
    }

    public final boolean isAutoSign() {
        return this.isAutoSign;
    }

    public /* synthetic */ WCSessionStoreItem(WCSession wCSession, int i, String str, String str2, WCPeerMeta wCPeerMeta, boolean z, Date date, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(wCSession, i, str, str2, wCPeerMeta, (i2 & 32) != 0 ? false : z, (i2 & 64) != 0 ? new Date() : date);
    }

    public final Date getDate() {
        return this.date;
    }
}
