package com.smedialink.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: RefreshTokenRequest.kt */
/* loaded from: classes3.dex */
public final class RefreshTokenRequest {
    private String refreshToken;

    public static /* synthetic */ RefreshTokenRequest copy$default(RefreshTokenRequest refreshTokenRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refreshTokenRequest.refreshToken;
        }
        return refreshTokenRequest.copy(str);
    }

    public final String component1() {
        return this.refreshToken;
    }

    public final RefreshTokenRequest copy(String refreshToken) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        return new RefreshTokenRequest(refreshToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RefreshTokenRequest) && Intrinsics.areEqual(this.refreshToken, ((RefreshTokenRequest) obj).refreshToken);
    }

    public int hashCode() {
        return this.refreshToken.hashCode();
    }

    public String toString() {
        return "RefreshTokenRequest(refreshToken=" + this.refreshToken + ')';
    }

    public RefreshTokenRequest(String refreshToken) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.refreshToken = refreshToken;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final void setRefreshToken(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.refreshToken = str;
    }
}
