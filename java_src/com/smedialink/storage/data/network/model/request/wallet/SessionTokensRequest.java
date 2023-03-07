package com.smedialink.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SessionTokensRequest.kt */
/* loaded from: classes3.dex */
public final class SessionTokensRequest {
    private String url;

    public static /* synthetic */ SessionTokensRequest copy$default(SessionTokensRequest sessionTokensRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sessionTokensRequest.url;
        }
        return sessionTokensRequest.copy(str);
    }

    public final String component1() {
        return this.url;
    }

    public final SessionTokensRequest copy(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return new SessionTokensRequest(url);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SessionTokensRequest) && Intrinsics.areEqual(this.url, ((SessionTokensRequest) obj).url);
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String toString() {
        return "SessionTokensRequest(url=" + this.url + ')';
    }

    public SessionTokensRequest(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }
}
