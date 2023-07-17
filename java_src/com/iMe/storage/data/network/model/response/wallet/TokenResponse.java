package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenResponse.kt */
/* loaded from: classes3.dex */
public final class TokenResponse {
    private final String address;
    private final String networkType;

    public static /* synthetic */ TokenResponse copy$default(TokenResponse tokenResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tokenResponse.address;
        }
        if ((i & 2) != 0) {
            str2 = tokenResponse.networkType;
        }
        return tokenResponse.copy(str, str2);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.networkType;
    }

    public final TokenResponse copy(String address, String networkType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new TokenResponse(address, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenResponse) {
            TokenResponse tokenResponse = (TokenResponse) obj;
            return Intrinsics.areEqual(this.address, tokenResponse.address) && Intrinsics.areEqual(this.networkType, tokenResponse.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (this.address.hashCode() * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "TokenResponse(address=" + this.address + ", networkType=" + this.networkType + ')';
    }

    public TokenResponse(String address, String networkType) {
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
