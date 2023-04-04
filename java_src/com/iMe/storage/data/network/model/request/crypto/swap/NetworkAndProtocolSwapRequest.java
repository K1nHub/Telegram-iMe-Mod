package com.iMe.storage.data.network.model.request.crypto.swap;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkAndProtocolSwapRequest.kt */
/* loaded from: classes3.dex */
public final class NetworkAndProtocolSwapRequest {
    private final String defiProtocol;
    private final String networkType;

    public static /* synthetic */ NetworkAndProtocolSwapRequest copy$default(NetworkAndProtocolSwapRequest networkAndProtocolSwapRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = networkAndProtocolSwapRequest.defiProtocol;
        }
        if ((i & 2) != 0) {
            str2 = networkAndProtocolSwapRequest.networkType;
        }
        return networkAndProtocolSwapRequest.copy(str, str2);
    }

    public final String component1() {
        return this.defiProtocol;
    }

    public final String component2() {
        return this.networkType;
    }

    public final NetworkAndProtocolSwapRequest copy(String defiProtocol, String networkType) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new NetworkAndProtocolSwapRequest(defiProtocol, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetworkAndProtocolSwapRequest) {
            NetworkAndProtocolSwapRequest networkAndProtocolSwapRequest = (NetworkAndProtocolSwapRequest) obj;
            return Intrinsics.areEqual(this.defiProtocol, networkAndProtocolSwapRequest.defiProtocol) && Intrinsics.areEqual(this.networkType, networkAndProtocolSwapRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (this.defiProtocol.hashCode() * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "NetworkAndProtocolSwapRequest(defiProtocol=" + this.defiProtocol + ", networkType=" + this.networkType + ')';
    }

    public NetworkAndProtocolSwapRequest(String defiProtocol, String networkType) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.defiProtocol = defiProtocol;
        this.networkType = networkType;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
