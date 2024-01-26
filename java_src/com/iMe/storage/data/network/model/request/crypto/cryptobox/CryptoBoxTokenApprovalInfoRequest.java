package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTokenApprovalInfoRequest.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTokenApprovalInfoRequest {
    private final String network;
    private final String tokenAddress;

    public static /* synthetic */ CryptoBoxTokenApprovalInfoRequest copy$default(CryptoBoxTokenApprovalInfoRequest cryptoBoxTokenApprovalInfoRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxTokenApprovalInfoRequest.network;
        }
        if ((i & 2) != 0) {
            str2 = cryptoBoxTokenApprovalInfoRequest.tokenAddress;
        }
        return cryptoBoxTokenApprovalInfoRequest.copy(str, str2);
    }

    public final String component1() {
        return this.network;
    }

    public final String component2() {
        return this.tokenAddress;
    }

    public final CryptoBoxTokenApprovalInfoRequest copy(String network, String tokenAddress) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        return new CryptoBoxTokenApprovalInfoRequest(network, tokenAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTokenApprovalInfoRequest) {
            CryptoBoxTokenApprovalInfoRequest cryptoBoxTokenApprovalInfoRequest = (CryptoBoxTokenApprovalInfoRequest) obj;
            return Intrinsics.areEqual(this.network, cryptoBoxTokenApprovalInfoRequest.network) && Intrinsics.areEqual(this.tokenAddress, cryptoBoxTokenApprovalInfoRequest.tokenAddress);
        }
        return false;
    }

    public int hashCode() {
        return (this.network.hashCode() * 31) + this.tokenAddress.hashCode();
    }

    public String toString() {
        return "CryptoBoxTokenApprovalInfoRequest(network=" + this.network + ", tokenAddress=" + this.tokenAddress + ')';
    }

    public CryptoBoxTokenApprovalInfoRequest(String network, String tokenAddress) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        this.network = network;
        this.tokenAddress = tokenAddress;
    }

    public final String getNetwork() {
        return this.network;
    }

    public final String getTokenAddress() {
        return this.tokenAddress;
    }
}
