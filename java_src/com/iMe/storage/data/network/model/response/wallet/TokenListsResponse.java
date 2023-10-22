package com.iMe.storage.data.network.model.response.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenListsResponse.kt */
/* loaded from: classes3.dex */
public final class TokenListsResponse {
    private final List<TokenListResponse> tokenLists;
    private final int verifiedSize;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TokenListsResponse copy$default(TokenListsResponse tokenListsResponse, List list, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = tokenListsResponse.tokenLists;
        }
        if ((i2 & 2) != 0) {
            i = tokenListsResponse.verifiedSize;
        }
        return tokenListsResponse.copy(list, i);
    }

    public final List<TokenListResponse> component1() {
        return this.tokenLists;
    }

    public final int component2() {
        return this.verifiedSize;
    }

    public final TokenListsResponse copy(List<TokenListResponse> tokenLists, int i) {
        Intrinsics.checkNotNullParameter(tokenLists, "tokenLists");
        return new TokenListsResponse(tokenLists, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenListsResponse) {
            TokenListsResponse tokenListsResponse = (TokenListsResponse) obj;
            return Intrinsics.areEqual(this.tokenLists, tokenListsResponse.tokenLists) && this.verifiedSize == tokenListsResponse.verifiedSize;
        }
        return false;
    }

    public int hashCode() {
        return (this.tokenLists.hashCode() * 31) + this.verifiedSize;
    }

    public String toString() {
        return "TokenListsResponse(tokenLists=" + this.tokenLists + ", verifiedSize=" + this.verifiedSize + ')';
    }

    public TokenListsResponse(List<TokenListResponse> tokenLists, int i) {
        Intrinsics.checkNotNullParameter(tokenLists, "tokenLists");
        this.tokenLists = tokenLists;
        this.verifiedSize = i;
    }

    public final List<TokenListResponse> getTokenLists() {
        return this.tokenLists;
    }

    public final int getVerifiedSize() {
        return this.verifiedSize;
    }
}
