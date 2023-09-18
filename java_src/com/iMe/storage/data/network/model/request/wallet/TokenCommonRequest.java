package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenCommonRequest.kt */
/* loaded from: classes4.dex */
public final class TokenCommonRequest {
    private final TokenRequest token;

    public static /* synthetic */ TokenCommonRequest copy$default(TokenCommonRequest tokenCommonRequest, TokenRequest tokenRequest, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenRequest = tokenCommonRequest.token;
        }
        return tokenCommonRequest.copy(tokenRequest);
    }

    public final TokenRequest component1() {
        return this.token;
    }

    public final TokenCommonRequest copy(TokenRequest token) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new TokenCommonRequest(token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TokenCommonRequest) && Intrinsics.areEqual(this.token, ((TokenCommonRequest) obj).token);
    }

    public int hashCode() {
        return this.token.hashCode();
    }

    public String toString() {
        return "TokenCommonRequest(token=" + this.token + ')';
    }

    public TokenCommonRequest(TokenRequest token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
    }

    public final TokenRequest getToken() {
        return this.token;
    }
}
