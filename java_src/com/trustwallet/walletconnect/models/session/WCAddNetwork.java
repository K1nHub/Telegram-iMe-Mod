package com.trustwallet.walletconnect.models.session;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCAddNetwork.kt */
/* loaded from: classes4.dex */
public final class WCAddNetwork {
    private final List<String> blockExplorerUrls;
    @SerializedName("chainId")
    private final String chainIdHex;
    private final String chainName;
    private final WcAddNetworkNativeCurrency nativeCurrency;
    private final List<String> rpcUrls;

    /* compiled from: WCAddNetwork.kt */
    /* loaded from: classes4.dex */
    public static final class WcAddNetworkNativeCurrency {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCAddNetwork) {
            WCAddNetwork wCAddNetwork = (WCAddNetwork) obj;
            return Intrinsics.areEqual(this.chainIdHex, wCAddNetwork.chainIdHex) && Intrinsics.areEqual(this.chainName, wCAddNetwork.chainName) && Intrinsics.areEqual(this.rpcUrls, wCAddNetwork.rpcUrls) && Intrinsics.areEqual(this.blockExplorerUrls, wCAddNetwork.blockExplorerUrls) && Intrinsics.areEqual(this.nativeCurrency, wCAddNetwork.nativeCurrency);
        }
        return false;
    }

    public int hashCode() {
        this.chainIdHex.hashCode();
        String str = this.chainName;
        if (str != null) {
            str.hashCode();
        }
        List<String> list = this.rpcUrls;
        if (list != null) {
            list.hashCode();
        }
        List<String> list2 = this.blockExplorerUrls;
        if (list2 != null) {
            list2.hashCode();
        }
        throw null;
    }

    public String toString() {
        return "WCAddNetwork(chainIdHex=" + this.chainIdHex + ", chainName=" + this.chainName + ", rpcUrls=" + this.rpcUrls + ", blockExplorerUrls=" + this.blockExplorerUrls + ", nativeCurrency=" + this.nativeCurrency + ')';
    }
}
