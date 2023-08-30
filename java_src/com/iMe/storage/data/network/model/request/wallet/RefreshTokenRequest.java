package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RefreshTokenRequest.kt */
/* loaded from: classes3.dex */
public final class RefreshTokenRequest {
    private String refreshToken;
    private final String version;

    public static /* synthetic */ RefreshTokenRequest copy$default(RefreshTokenRequest refreshTokenRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = refreshTokenRequest.refreshToken;
        }
        if ((i & 2) != 0) {
            str2 = refreshTokenRequest.version;
        }
        return refreshTokenRequest.copy(str, str2);
    }

    public final String component1() {
        return this.refreshToken;
    }

    public final String component2() {
        return this.version;
    }

    public final RefreshTokenRequest copy(String refreshToken, String version) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(version, "version");
        return new RefreshTokenRequest(refreshToken, version);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RefreshTokenRequest) {
            RefreshTokenRequest refreshTokenRequest = (RefreshTokenRequest) obj;
            return Intrinsics.areEqual(this.refreshToken, refreshTokenRequest.refreshToken) && Intrinsics.areEqual(this.version, refreshTokenRequest.version);
        }
        return false;
    }

    public int hashCode() {
        return (this.refreshToken.hashCode() * 31) + this.version.hashCode();
    }

    public String toString() {
        return "RefreshTokenRequest(refreshToken=" + this.refreshToken + ", version=" + this.version + ')';
    }

    public RefreshTokenRequest(String refreshToken, String version) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(version, "version");
        this.refreshToken = refreshToken;
        this.version = version;
    }

    public /* synthetic */ RefreshTokenRequest(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "v2" : str2);
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final void setRefreshToken(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.refreshToken = str;
    }

    public final String getVersion() {
        return this.version;
    }
}
