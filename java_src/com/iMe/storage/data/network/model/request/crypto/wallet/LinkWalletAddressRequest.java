package com.iMe.storage.data.network.model.request.crypto.wallet;

import com.iMe.storage.domain.model.crypto.NetworkType;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LinkWalletAddressRequest.kt */
/* loaded from: classes3.dex */
public final class LinkWalletAddressRequest {
    private final NetworkType networkType;
    private final String walletAddress;
    private final String walletPublicKey;

    public static /* synthetic */ LinkWalletAddressRequest copy$default(LinkWalletAddressRequest linkWalletAddressRequest, String str, NetworkType networkType, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = linkWalletAddressRequest.walletAddress;
        }
        if ((i & 2) != 0) {
            networkType = linkWalletAddressRequest.networkType;
        }
        if ((i & 4) != 0) {
            str2 = linkWalletAddressRequest.walletPublicKey;
        }
        return linkWalletAddressRequest.copy(str, networkType, str2);
    }

    public final String component1() {
        return this.walletAddress;
    }

    public final NetworkType component2() {
        return this.networkType;
    }

    public final String component3() {
        return this.walletPublicKey;
    }

    public final LinkWalletAddressRequest copy(String walletAddress, NetworkType networkType, String str) {
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new LinkWalletAddressRequest(walletAddress, networkType, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LinkWalletAddressRequest) {
            LinkWalletAddressRequest linkWalletAddressRequest = (LinkWalletAddressRequest) obj;
            return Intrinsics.areEqual(this.walletAddress, linkWalletAddressRequest.walletAddress) && this.networkType == linkWalletAddressRequest.networkType && Intrinsics.areEqual(this.walletPublicKey, linkWalletAddressRequest.walletPublicKey);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.walletAddress.hashCode() * 31) + this.networkType.hashCode()) * 31;
        String str = this.walletPublicKey;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "LinkWalletAddressRequest(walletAddress=" + this.walletAddress + ", networkType=" + this.networkType + ", walletPublicKey=" + this.walletPublicKey + ')';
    }

    public LinkWalletAddressRequest(String walletAddress, NetworkType networkType, String str) {
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.walletAddress = walletAddress;
        this.networkType = networkType;
        this.walletPublicKey = str;
    }

    public final String getWalletAddress() {
        return this.walletAddress;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final String getWalletPublicKey() {
        return this.walletPublicKey;
    }
}
