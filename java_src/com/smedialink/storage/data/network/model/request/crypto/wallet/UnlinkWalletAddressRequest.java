package com.smedialink.storage.data.network.model.request.crypto.wallet;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UnlinkWalletAddressRequest.kt */
/* loaded from: classes3.dex */
public final class UnlinkWalletAddressRequest {
    private final NetworkType networkType;

    public static /* synthetic */ UnlinkWalletAddressRequest copy$default(UnlinkWalletAddressRequest unlinkWalletAddressRequest, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            networkType = unlinkWalletAddressRequest.networkType;
        }
        return unlinkWalletAddressRequest.copy(networkType);
    }

    public final NetworkType component1() {
        return this.networkType;
    }

    public final UnlinkWalletAddressRequest copy(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new UnlinkWalletAddressRequest(networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UnlinkWalletAddressRequest) && this.networkType == ((UnlinkWalletAddressRequest) obj).networkType;
    }

    public int hashCode() {
        return this.networkType.hashCode();
    }

    public String toString() {
        return "UnlinkWalletAddressRequest(networkType=" + this.networkType + ')';
    }

    public UnlinkWalletAddressRequest(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.networkType = networkType;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }
}
