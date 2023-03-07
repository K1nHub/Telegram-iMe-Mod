package com.smedialink.storage.data.locale.p027db.model.wallet;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import java.util.Date;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectSessionDb.kt */
/* renamed from: com.smedialink.storage.data.locale.db.model.wallet.WalletConnectSessionDb */
/* loaded from: classes3.dex */
public final class WalletConnectSessionDb {
    private final int chainId;
    private final Date date;
    private final boolean isAutoSign;
    private final String peerId;
    private final String remotePeerId;
    private final String remotePeerMetaDescription;
    private final List<String> remotePeerMetaIcons;
    private final String remotePeerMetaName;
    private final String remotePeerMetaUrl;
    private final String sessionBridge;
    private final String sessionKey;
    private final String sessionTopic;
    private final String sessionVersion;
    private final long tgUserId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletConnectSessionDb) {
            WalletConnectSessionDb walletConnectSessionDb = (WalletConnectSessionDb) obj;
            return this.tgUserId == walletConnectSessionDb.tgUserId && Intrinsics.areEqual(this.sessionTopic, walletConnectSessionDb.sessionTopic) && Intrinsics.areEqual(this.sessionVersion, walletConnectSessionDb.sessionVersion) && Intrinsics.areEqual(this.sessionBridge, walletConnectSessionDb.sessionBridge) && Intrinsics.areEqual(this.sessionKey, walletConnectSessionDb.sessionKey) && this.chainId == walletConnectSessionDb.chainId && Intrinsics.areEqual(this.peerId, walletConnectSessionDb.peerId) && Intrinsics.areEqual(this.remotePeerId, walletConnectSessionDb.remotePeerId) && Intrinsics.areEqual(this.remotePeerMetaName, walletConnectSessionDb.remotePeerMetaName) && Intrinsics.areEqual(this.remotePeerMetaUrl, walletConnectSessionDb.remotePeerMetaUrl) && Intrinsics.areEqual(this.remotePeerMetaDescription, walletConnectSessionDb.remotePeerMetaDescription) && Intrinsics.areEqual(this.remotePeerMetaIcons, walletConnectSessionDb.remotePeerMetaIcons) && this.isAutoSign == walletConnectSessionDb.isAutoSign && Intrinsics.areEqual(this.date, walletConnectSessionDb.date);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m716m = ((((((((((((((((((StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.tgUserId) * 31) + this.sessionTopic.hashCode()) * 31) + this.sessionVersion.hashCode()) * 31) + this.sessionBridge.hashCode()) * 31) + this.sessionKey.hashCode()) * 31) + this.chainId) * 31) + this.peerId.hashCode()) * 31) + this.remotePeerId.hashCode()) * 31) + this.remotePeerMetaName.hashCode()) * 31) + this.remotePeerMetaUrl.hashCode()) * 31;
        String str = this.remotePeerMetaDescription;
        int hashCode = (((m716m + (str == null ? 0 : str.hashCode())) * 31) + this.remotePeerMetaIcons.hashCode()) * 31;
        boolean z = this.isAutoSign;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.date.hashCode();
    }

    public String toString() {
        return "WalletConnectSessionDb(tgUserId=" + this.tgUserId + ", sessionTopic=" + this.sessionTopic + ", sessionVersion=" + this.sessionVersion + ", sessionBridge=" + this.sessionBridge + ", sessionKey=" + this.sessionKey + ", chainId=" + this.chainId + ", peerId=" + this.peerId + ", remotePeerId=" + this.remotePeerId + ", remotePeerMetaName=" + this.remotePeerMetaName + ", remotePeerMetaUrl=" + this.remotePeerMetaUrl + ", remotePeerMetaDescription=" + ((Object) this.remotePeerMetaDescription) + ", remotePeerMetaIcons=" + this.remotePeerMetaIcons + ", isAutoSign=" + this.isAutoSign + ", date=" + this.date + ')';
    }

    public WalletConnectSessionDb(long j, String sessionTopic, String sessionVersion, String sessionBridge, String sessionKey, int i, String peerId, String remotePeerId, String remotePeerMetaName, String remotePeerMetaUrl, String str, List<String> remotePeerMetaIcons, boolean z, Date date) {
        Intrinsics.checkNotNullParameter(sessionTopic, "sessionTopic");
        Intrinsics.checkNotNullParameter(sessionVersion, "sessionVersion");
        Intrinsics.checkNotNullParameter(sessionBridge, "sessionBridge");
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        Intrinsics.checkNotNullParameter(peerId, "peerId");
        Intrinsics.checkNotNullParameter(remotePeerId, "remotePeerId");
        Intrinsics.checkNotNullParameter(remotePeerMetaName, "remotePeerMetaName");
        Intrinsics.checkNotNullParameter(remotePeerMetaUrl, "remotePeerMetaUrl");
        Intrinsics.checkNotNullParameter(remotePeerMetaIcons, "remotePeerMetaIcons");
        Intrinsics.checkNotNullParameter(date, "date");
        this.tgUserId = j;
        this.sessionTopic = sessionTopic;
        this.sessionVersion = sessionVersion;
        this.sessionBridge = sessionBridge;
        this.sessionKey = sessionKey;
        this.chainId = i;
        this.peerId = peerId;
        this.remotePeerId = remotePeerId;
        this.remotePeerMetaName = remotePeerMetaName;
        this.remotePeerMetaUrl = remotePeerMetaUrl;
        this.remotePeerMetaDescription = str;
        this.remotePeerMetaIcons = remotePeerMetaIcons;
        this.isAutoSign = z;
        this.date = date;
    }

    public final long getTgUserId() {
        return this.tgUserId;
    }

    public final String getSessionTopic() {
        return this.sessionTopic;
    }

    public final String getSessionVersion() {
        return this.sessionVersion;
    }

    public final String getSessionBridge() {
        return this.sessionBridge;
    }

    public final String getSessionKey() {
        return this.sessionKey;
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

    public final String getRemotePeerMetaName() {
        return this.remotePeerMetaName;
    }

    public final String getRemotePeerMetaUrl() {
        return this.remotePeerMetaUrl;
    }

    public final String getRemotePeerMetaDescription() {
        return this.remotePeerMetaDescription;
    }

    public final List<String> getRemotePeerMetaIcons() {
        return this.remotePeerMetaIcons;
    }

    public final boolean isAutoSign() {
        return this.isAutoSign;
    }

    public final Date getDate() {
        return this.date;
    }
}
