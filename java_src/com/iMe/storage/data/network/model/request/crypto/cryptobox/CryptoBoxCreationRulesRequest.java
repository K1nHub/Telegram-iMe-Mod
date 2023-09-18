package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxCreationRulesRequest.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxCreationRulesRequest {
    private final String network;

    public static /* synthetic */ CryptoBoxCreationRulesRequest copy$default(CryptoBoxCreationRulesRequest cryptoBoxCreationRulesRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxCreationRulesRequest.network;
        }
        return cryptoBoxCreationRulesRequest.copy(str);
    }

    public final String component1() {
        return this.network;
    }

    public final CryptoBoxCreationRulesRequest copy(String network) {
        Intrinsics.checkNotNullParameter(network, "network");
        return new CryptoBoxCreationRulesRequest(network);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxCreationRulesRequest) && Intrinsics.areEqual(this.network, ((CryptoBoxCreationRulesRequest) obj).network);
    }

    public int hashCode() {
        return this.network.hashCode();
    }

    public String toString() {
        return "CryptoBoxCreationRulesRequest(network=" + this.network + ')';
    }

    public CryptoBoxCreationRulesRequest(String network) {
        Intrinsics.checkNotNullParameter(network, "network");
        this.network = network;
    }

    public final String getNetwork() {
        return this.network;
    }
}
