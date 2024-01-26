package com.trustwallet.walletconnect.models.session;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCChangeNetwork.kt */
/* loaded from: classes4.dex */
public final class WCChangeNetwork {
    @SerializedName("chainId")
    private final String chainIdHex;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WCChangeNetwork) && Intrinsics.areEqual(this.chainIdHex, ((WCChangeNetwork) obj).chainIdHex);
    }

    public int hashCode() {
        return this.chainIdHex.hashCode();
    }

    public String toString() {
        return "WCChangeNetwork(chainIdHex=" + this.chainIdHex + ')';
    }

    public final String getChainIdHex() {
        return this.chainIdHex;
    }
}
