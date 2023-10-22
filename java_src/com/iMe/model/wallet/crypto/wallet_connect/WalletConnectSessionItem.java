package com.iMe.model.wallet.crypto.wallet_connect;

import com.iMe.common.IdFabric$ViewTypes;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectSessionItem.kt */
/* loaded from: classes3.dex */
public final class WalletConnectSessionItem {
    private final String date;
    private final int itemType;
    private final String network;
    private final String peerIconUrl;
    private final String peerName;
    private final String peerUrl;
    private final String sessionKey;

    public static /* synthetic */ WalletConnectSessionItem copy$default(WalletConnectSessionItem walletConnectSessionItem, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = walletConnectSessionItem.sessionKey;
        }
        if ((i & 2) != 0) {
            str2 = walletConnectSessionItem.peerName;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = walletConnectSessionItem.peerUrl;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = walletConnectSessionItem.peerIconUrl;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            str5 = walletConnectSessionItem.date;
        }
        String str10 = str5;
        if ((i & 32) != 0) {
            str6 = walletConnectSessionItem.network;
        }
        return walletConnectSessionItem.copy(str, str7, str8, str9, str10, str6);
    }

    public final String component1() {
        return this.sessionKey;
    }

    public final String component2() {
        return this.peerName;
    }

    public final String component3() {
        return this.peerUrl;
    }

    public final String component4() {
        return this.peerIconUrl;
    }

    public final String component5() {
        return this.date;
    }

    public final String component6() {
        return this.network;
    }

    public final WalletConnectSessionItem copy(String sessionKey, String peerName, String peerUrl, String peerIconUrl, String date, String network) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        Intrinsics.checkNotNullParameter(peerName, "peerName");
        Intrinsics.checkNotNullParameter(peerUrl, "peerUrl");
        Intrinsics.checkNotNullParameter(peerIconUrl, "peerIconUrl");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(network, "network");
        return new WalletConnectSessionItem(sessionKey, peerName, peerUrl, peerIconUrl, date, network);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletConnectSessionItem) {
            WalletConnectSessionItem walletConnectSessionItem = (WalletConnectSessionItem) obj;
            return Intrinsics.areEqual(this.sessionKey, walletConnectSessionItem.sessionKey) && Intrinsics.areEqual(this.peerName, walletConnectSessionItem.peerName) && Intrinsics.areEqual(this.peerUrl, walletConnectSessionItem.peerUrl) && Intrinsics.areEqual(this.peerIconUrl, walletConnectSessionItem.peerIconUrl) && Intrinsics.areEqual(this.date, walletConnectSessionItem.date) && Intrinsics.areEqual(this.network, walletConnectSessionItem.network);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.sessionKey.hashCode() * 31) + this.peerName.hashCode()) * 31) + this.peerUrl.hashCode()) * 31) + this.peerIconUrl.hashCode()) * 31) + this.date.hashCode()) * 31) + this.network.hashCode();
    }

    public String toString() {
        return "WalletConnectSessionItem(sessionKey=" + this.sessionKey + ", peerName=" + this.peerName + ", peerUrl=" + this.peerUrl + ", peerIconUrl=" + this.peerIconUrl + ", date=" + this.date + ", network=" + this.network + ')';
    }

    public WalletConnectSessionItem(String sessionKey, String peerName, String peerUrl, String peerIconUrl, String date, String network) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        Intrinsics.checkNotNullParameter(peerName, "peerName");
        Intrinsics.checkNotNullParameter(peerUrl, "peerUrl");
        Intrinsics.checkNotNullParameter(peerIconUrl, "peerIconUrl");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(network, "network");
        this.sessionKey = sessionKey;
        this.peerName = peerName;
        this.peerUrl = peerUrl;
        this.peerIconUrl = peerIconUrl;
        this.date = date;
        this.network = network;
        this.itemType = IdFabric$ViewTypes.WALLET_CONNECT_SESSION;
    }

    public final String getSessionKey() {
        return this.sessionKey;
    }

    public final String getPeerName() {
        return this.peerName;
    }

    public final String getPeerUrl() {
        return this.peerUrl;
    }

    public final String getPeerIconUrl() {
        return this.peerIconUrl;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getNetwork() {
        return this.network;
    }

    public int getItemType() {
        return this.itemType;
    }
}
