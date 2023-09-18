package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SessionTokensResponse.kt */
/* loaded from: classes4.dex */
public final class SessionTokensResponse {
    private final String refreshToken;
    private final String token;

    public static /* synthetic */ SessionTokensResponse copy$default(SessionTokensResponse sessionTokensResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sessionTokensResponse.token;
        }
        if ((i & 2) != 0) {
            str2 = sessionTokensResponse.refreshToken;
        }
        return sessionTokensResponse.copy(str, str2);
    }

    public final String component1() {
        return this.token;
    }

    public final String component2() {
        return this.refreshToken;
    }

    public final SessionTokensResponse copy(String token, String refreshToken) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new SessionTokensResponse(token, refreshToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SessionTokensResponse) {
            SessionTokensResponse sessionTokensResponse = (SessionTokensResponse) obj;
            return Intrinsics.areEqual(this.token, sessionTokensResponse.token) && Intrinsics.areEqual(this.refreshToken, sessionTokensResponse.refreshToken);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.refreshToken.hashCode();
    }

    public String toString() {
        return "SessionTokensResponse(token=" + this.token + ", refreshToken=" + this.refreshToken + ')';
    }

    public SessionTokensResponse(String token, String refreshToken) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.token = token;
        this.refreshToken = refreshToken;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }
}
