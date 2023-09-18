package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensSearchRequest.kt */
/* loaded from: classes4.dex */
public final class TokensSearchRequest {
    private final String cursor;
    private final String networkType;
    private final String query;
    private final int size;

    public static /* synthetic */ TokensSearchRequest copy$default(TokensSearchRequest tokensSearchRequest, String str, String str2, String str3, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = tokensSearchRequest.query;
        }
        if ((i2 & 2) != 0) {
            str2 = tokensSearchRequest.networkType;
        }
        if ((i2 & 4) != 0) {
            str3 = tokensSearchRequest.cursor;
        }
        if ((i2 & 8) != 0) {
            i = tokensSearchRequest.size;
        }
        return tokensSearchRequest.copy(str, str2, str3, i);
    }

    public final String component1() {
        return this.query;
    }

    public final String component2() {
        return this.networkType;
    }

    public final String component3() {
        return this.cursor;
    }

    public final int component4() {
        return this.size;
    }

    public final TokensSearchRequest copy(String query, String networkType, String str, int i) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new TokensSearchRequest(query, networkType, str, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokensSearchRequest) {
            TokensSearchRequest tokensSearchRequest = (TokensSearchRequest) obj;
            return Intrinsics.areEqual(this.query, tokensSearchRequest.query) && Intrinsics.areEqual(this.networkType, tokensSearchRequest.networkType) && Intrinsics.areEqual(this.cursor, tokensSearchRequest.cursor) && this.size == tokensSearchRequest.size;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.query.hashCode() * 31) + this.networkType.hashCode()) * 31;
        String str = this.cursor;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.size;
    }

    public String toString() {
        return "TokensSearchRequest(query=" + this.query + ", networkType=" + this.networkType + ", cursor=" + this.cursor + ", size=" + this.size + ')';
    }

    public TokensSearchRequest(String query, String networkType, String str, int i) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.query = query;
        this.networkType = networkType;
        this.cursor = str;
        this.size = i;
    }

    public /* synthetic */ TokensSearchRequest(String str, String str2, String str3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? 20 : i);
    }

    public final String getQuery() {
        return this.query;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getCursor() {
        return this.cursor;
    }

    public final int getSize() {
        return this.size;
    }
}
