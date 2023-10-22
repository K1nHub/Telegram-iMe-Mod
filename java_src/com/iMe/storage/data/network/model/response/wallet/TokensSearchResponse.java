package com.iMe.storage.data.network.model.response.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensSearchResponse.kt */
/* loaded from: classes3.dex */
public final class TokensSearchResponse {
    private final String cursor;
    private final List<FoundTokenWithFamilyResponse> tokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TokensSearchResponse copy$default(TokensSearchResponse tokensSearchResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tokensSearchResponse.tokens;
        }
        if ((i & 2) != 0) {
            str = tokensSearchResponse.cursor;
        }
        return tokensSearchResponse.copy(list, str);
    }

    public final List<FoundTokenWithFamilyResponse> component1() {
        return this.tokens;
    }

    public final String component2() {
        return this.cursor;
    }

    public final TokensSearchResponse copy(List<FoundTokenWithFamilyResponse> tokens, String cursor) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        return new TokensSearchResponse(tokens, cursor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokensSearchResponse) {
            TokensSearchResponse tokensSearchResponse = (TokensSearchResponse) obj;
            return Intrinsics.areEqual(this.tokens, tokensSearchResponse.tokens) && Intrinsics.areEqual(this.cursor, tokensSearchResponse.cursor);
        }
        return false;
    }

    public int hashCode() {
        return (this.tokens.hashCode() * 31) + this.cursor.hashCode();
    }

    public String toString() {
        return "TokensSearchResponse(tokens=" + this.tokens + ", cursor=" + this.cursor + ')';
    }

    public TokensSearchResponse(List<FoundTokenWithFamilyResponse> tokens, String cursor) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        this.tokens = tokens;
        this.cursor = cursor;
    }

    public final List<FoundTokenWithFamilyResponse> getTokens() {
        return this.tokens;
    }

    public final String getCursor() {
        return this.cursor;
    }
}
