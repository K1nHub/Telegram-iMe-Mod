package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SessionTokensRequest.kt */
/* loaded from: classes3.dex */
public final class SessionTokensRequest {
    private String url;
    private final String version;

    public static /* synthetic */ SessionTokensRequest copy$default(SessionTokensRequest sessionTokensRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sessionTokensRequest.url;
        }
        if ((i & 2) != 0) {
            str2 = sessionTokensRequest.version;
        }
        return sessionTokensRequest.copy(str, str2);
    }

    public final String component1() {
        return this.url;
    }

    public final String component2() {
        return this.version;
    }

    public final SessionTokensRequest copy(String url, String version) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(version, "version");
        return new SessionTokensRequest(url, version);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SessionTokensRequest) {
            SessionTokensRequest sessionTokensRequest = (SessionTokensRequest) obj;
            return Intrinsics.areEqual(this.url, sessionTokensRequest.url) && Intrinsics.areEqual(this.version, sessionTokensRequest.version);
        }
        return false;
    }

    public int hashCode() {
        return (this.url.hashCode() * 31) + this.version.hashCode();
    }

    public String toString() {
        return "SessionTokensRequest(url=" + this.url + ", version=" + this.version + ')';
    }

    public SessionTokensRequest(String url, String version) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(version, "version");
        this.url = url;
        this.version = version;
    }

    public /* synthetic */ SessionTokensRequest(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "v2" : str2);
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    public final String getVersion() {
        return this.version;
    }
}
