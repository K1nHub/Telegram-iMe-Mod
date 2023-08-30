package com.iMe.storage.data.network.model.response.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CustomTokensResponse.kt */
/* loaded from: classes3.dex */
public final class CustomTokensResponse {
    private final String cursor;
    private final List<TokenDetailedResponse> tokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CustomTokensResponse copy$default(CustomTokensResponse customTokensResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = customTokensResponse.tokens;
        }
        if ((i & 2) != 0) {
            str = customTokensResponse.cursor;
        }
        return customTokensResponse.copy(list, str);
    }

    public final List<TokenDetailedResponse> component1() {
        return this.tokens;
    }

    public final String component2() {
        return this.cursor;
    }

    public final CustomTokensResponse copy(List<TokenDetailedResponse> tokens, String cursor) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        return new CustomTokensResponse(tokens, cursor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CustomTokensResponse) {
            CustomTokensResponse customTokensResponse = (CustomTokensResponse) obj;
            return Intrinsics.areEqual(this.tokens, customTokensResponse.tokens) && Intrinsics.areEqual(this.cursor, customTokensResponse.cursor);
        }
        return false;
    }

    public int hashCode() {
        return (this.tokens.hashCode() * 31) + this.cursor.hashCode();
    }

    public String toString() {
        return "CustomTokensResponse(tokens=" + this.tokens + ", cursor=" + this.cursor + ')';
    }

    public CustomTokensResponse(List<TokenDetailedResponse> tokens, String cursor) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        this.tokens = tokens;
        this.cursor = cursor;
    }

    public final List<TokenDetailedResponse> getTokens() {
        return this.tokens;
    }

    public final String getCursor() {
        return this.cursor;
    }
}
