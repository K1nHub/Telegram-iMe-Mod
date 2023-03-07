package com.smedialink.storage.data.network.model.request.crypto.wallet;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UnlinkWalletAddressRequest.kt */
/* loaded from: classes3.dex */
public final class UnlinkWalletAddressRequest {
    private final String blockchainPlatform;
    private final NetworkType networkType;

    public static /* synthetic */ UnlinkWalletAddressRequest copy$default(UnlinkWalletAddressRequest unlinkWalletAddressRequest, NetworkType networkType, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            networkType = unlinkWalletAddressRequest.networkType;
        }
        if ((i & 2) != 0) {
            str = unlinkWalletAddressRequest.blockchainPlatform;
        }
        return unlinkWalletAddressRequest.copy(networkType, str);
    }

    public final NetworkType component1() {
        return this.networkType;
    }

    public final String component2() {
        return this.blockchainPlatform;
    }

    public final UnlinkWalletAddressRequest copy(NetworkType networkType, String blockchainPlatform) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(blockchainPlatform, "blockchainPlatform");
        return new UnlinkWalletAddressRequest(networkType, blockchainPlatform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UnlinkWalletAddressRequest) {
            UnlinkWalletAddressRequest unlinkWalletAddressRequest = (UnlinkWalletAddressRequest) obj;
            return this.networkType == unlinkWalletAddressRequest.networkType && Intrinsics.areEqual(this.blockchainPlatform, unlinkWalletAddressRequest.blockchainPlatform);
        }
        return false;
    }

    public int hashCode() {
        return (this.networkType.hashCode() * 31) + this.blockchainPlatform.hashCode();
    }

    public String toString() {
        return "UnlinkWalletAddressRequest(networkType=" + this.networkType + ", blockchainPlatform=" + this.blockchainPlatform + ')';
    }

    public UnlinkWalletAddressRequest(NetworkType networkType, String blockchainPlatform) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(blockchainPlatform, "blockchainPlatform");
        this.networkType = networkType;
        this.blockchainPlatform = blockchainPlatform;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final String getBlockchainPlatform() {
        return this.blockchainPlatform;
    }
}
