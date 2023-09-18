package com.iMe.storage.data.network.model.response.crypto.swap;

import com.iMe.storage.data.network.model.response.wallet.TokenDetailedWithRateResponse;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AvailableSwapTokensResponse.kt */
/* loaded from: classes4.dex */
public final class AvailableSwapTokensResponse {
    private final String cursor;
    private final List<TokenDetailedWithRateResponse> tokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AvailableSwapTokensResponse copy$default(AvailableSwapTokensResponse availableSwapTokensResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = availableSwapTokensResponse.tokens;
        }
        if ((i & 2) != 0) {
            str = availableSwapTokensResponse.cursor;
        }
        return availableSwapTokensResponse.copy(list, str);
    }

    public final List<TokenDetailedWithRateResponse> component1() {
        return this.tokens;
    }

    public final String component2() {
        return this.cursor;
    }

    public final AvailableSwapTokensResponse copy(List<TokenDetailedWithRateResponse> tokens, String cursor) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        return new AvailableSwapTokensResponse(tokens, cursor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AvailableSwapTokensResponse) {
            AvailableSwapTokensResponse availableSwapTokensResponse = (AvailableSwapTokensResponse) obj;
            return Intrinsics.areEqual(this.tokens, availableSwapTokensResponse.tokens) && Intrinsics.areEqual(this.cursor, availableSwapTokensResponse.cursor);
        }
        return false;
    }

    public int hashCode() {
        return (this.tokens.hashCode() * 31) + this.cursor.hashCode();
    }

    public String toString() {
        return "AvailableSwapTokensResponse(tokens=" + this.tokens + ", cursor=" + this.cursor + ')';
    }

    public AvailableSwapTokensResponse(List<TokenDetailedWithRateResponse> tokens, String cursor) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        this.tokens = tokens;
        this.cursor = cursor;
    }

    public final List<TokenDetailedWithRateResponse> getTokens() {
        return this.tokens;
    }

    public final String getCursor() {
        return this.cursor;
    }
}
