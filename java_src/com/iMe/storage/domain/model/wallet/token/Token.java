package com.iMe.storage.domain.model.wallet.token;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Token.kt */
/* loaded from: classes4.dex */
public final class Token {
    private final String address;
    private final String networkId;

    public static /* synthetic */ Token copy$default(Token token, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = token.address;
        }
        if ((i & 2) != 0) {
            str2 = token.networkId;
        }
        return token.copy(str, str2);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.networkId;
    }

    public final Token copy(String address, String networkId) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        return new Token(address, networkId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Token) {
            Token token = (Token) obj;
            return Intrinsics.areEqual(this.address, token.address) && Intrinsics.areEqual(this.networkId, token.networkId);
        }
        return false;
    }

    public int hashCode() {
        return (this.address.hashCode() * 31) + this.networkId.hashCode();
    }

    public String toString() {
        return "Token(address=" + this.address + ", networkId=" + this.networkId + ')';
    }

    public Token(String address, String networkId) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        this.address = address;
        this.networkId = networkId;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetworkId() {
        return this.networkId;
    }
}
