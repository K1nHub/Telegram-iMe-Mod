package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenInfoResponse.kt */
/* loaded from: classes4.dex */
public final class TokenInfoResponse {
    private final boolean isCustom;
    private final TokenDetailedResponse token;

    public static /* synthetic */ TokenInfoResponse copy$default(TokenInfoResponse tokenInfoResponse, TokenDetailedResponse tokenDetailedResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenDetailedResponse = tokenInfoResponse.token;
        }
        if ((i & 2) != 0) {
            z = tokenInfoResponse.isCustom;
        }
        return tokenInfoResponse.copy(tokenDetailedResponse, z);
    }

    public final TokenDetailedResponse component1() {
        return this.token;
    }

    public final boolean component2() {
        return this.isCustom;
    }

    public final TokenInfoResponse copy(TokenDetailedResponse token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new TokenInfoResponse(token, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenInfoResponse) {
            TokenInfoResponse tokenInfoResponse = (TokenInfoResponse) obj;
            return Intrinsics.areEqual(this.token, tokenInfoResponse.token) && this.isCustom == tokenInfoResponse.isCustom;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.token.hashCode() * 31;
        boolean z = this.isCustom;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "TokenInfoResponse(token=" + this.token + ", isCustom=" + this.isCustom + ')';
    }

    public TokenInfoResponse(TokenDetailedResponse token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.isCustom = z;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }

    public final boolean isCustom() {
        return this.isCustom;
    }
}
