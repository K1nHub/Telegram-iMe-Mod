package com.iMe.storage.domain.model.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SessionTokens.kt */
/* loaded from: classes3.dex */
public final class SessionTokens {
    private final String refreshToken;
    private final String token;

    public static /* synthetic */ SessionTokens copy$default(SessionTokens sessionTokens, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sessionTokens.token;
        }
        if ((i & 2) != 0) {
            str2 = sessionTokens.refreshToken;
        }
        return sessionTokens.copy(str, str2);
    }

    public final String component1() {
        return this.token;
    }

    public final String component2() {
        return this.refreshToken;
    }

    public final SessionTokens copy(String token, String refreshToken) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new SessionTokens(token, refreshToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SessionTokens) {
            SessionTokens sessionTokens = (SessionTokens) obj;
            return Intrinsics.areEqual(this.token, sessionTokens.token) && Intrinsics.areEqual(this.refreshToken, sessionTokens.refreshToken);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.refreshToken.hashCode();
    }

    public String toString() {
        return "SessionTokens(token=" + this.token + ", refreshToken=" + this.refreshToken + ')';
    }

    public SessionTokens(String token, String refreshToken) {
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
