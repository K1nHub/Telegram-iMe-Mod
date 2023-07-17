package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenRequest.kt */
/* loaded from: classes3.dex */
public final class TokenRequest {
    private final String address;
    private final String networkType;

    public static /* synthetic */ TokenRequest copy$default(TokenRequest tokenRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tokenRequest.address;
        }
        if ((i & 2) != 0) {
            str2 = tokenRequest.networkType;
        }
        return tokenRequest.copy(str, str2);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.networkType;
    }

    public final TokenRequest copy(String address, String networkType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new TokenRequest(address, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenRequest) {
            TokenRequest tokenRequest = (TokenRequest) obj;
            return Intrinsics.areEqual(this.address, tokenRequest.address) && Intrinsics.areEqual(this.networkType, tokenRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (this.address.hashCode() * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "TokenRequest(address=" + this.address + ", networkType=" + this.networkType + ')';
    }

    public TokenRequest(String address, String networkType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.address = address;
        this.networkType = networkType;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
