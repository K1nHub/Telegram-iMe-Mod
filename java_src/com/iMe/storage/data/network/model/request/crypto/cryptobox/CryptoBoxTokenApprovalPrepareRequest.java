package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTokenApprovalPrepareRequest.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxTokenApprovalPrepareRequest {
    private final String network;
    private final String tokenAddress;

    public static /* synthetic */ CryptoBoxTokenApprovalPrepareRequest copy$default(CryptoBoxTokenApprovalPrepareRequest cryptoBoxTokenApprovalPrepareRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxTokenApprovalPrepareRequest.network;
        }
        if ((i & 2) != 0) {
            str2 = cryptoBoxTokenApprovalPrepareRequest.tokenAddress;
        }
        return cryptoBoxTokenApprovalPrepareRequest.copy(str, str2);
    }

    public final String component1() {
        return this.network;
    }

    public final String component2() {
        return this.tokenAddress;
    }

    public final CryptoBoxTokenApprovalPrepareRequest copy(String network, String tokenAddress) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
        return new CryptoBoxTokenApprovalPrepareRequest(network, tokenAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTokenApprovalPrepareRequest) {
            CryptoBoxTokenApprovalPrepareRequest cryptoBoxTokenApprovalPrepareRequest = (CryptoBoxTokenApprovalPrepareRequest) obj;
            return Intrinsics.areEqual(this.network, cryptoBoxTokenApprovalPrepareRequest.network) && Intrinsics.areEqual(this.tokenAddress, cryptoBoxTokenApprovalPrepareRequest.tokenAddress);
        }
        return false;
    }

    public int hashCode() {
        return (this.network.hashCode() * 31) + this.tokenAddress.hashCode();
    }

    public String toString() {
        return "CryptoBoxTokenApprovalPrepareRequest(network=" + this.network + ", tokenAddress=" + this.tokenAddress + ')';
    }

    public CryptoBoxTokenApprovalPrepareRequest(String network, String tokenAddress) {
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
