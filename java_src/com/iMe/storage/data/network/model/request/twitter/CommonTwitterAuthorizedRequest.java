package com.iMe.storage.data.network.model.request.twitter;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CommonTwitterAuthorizedRequest.kt */
/* loaded from: classes4.dex */
public final class CommonTwitterAuthorizedRequest {
    private final String accessToken;

    public static /* synthetic */ CommonTwitterAuthorizedRequest copy$default(CommonTwitterAuthorizedRequest commonTwitterAuthorizedRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = commonTwitterAuthorizedRequest.accessToken;
        }
        return commonTwitterAuthorizedRequest.copy(str);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final CommonTwitterAuthorizedRequest copy(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        return new CommonTwitterAuthorizedRequest(accessToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CommonTwitterAuthorizedRequest) && Intrinsics.areEqual(this.accessToken, ((CommonTwitterAuthorizedRequest) obj).accessToken);
    }

    public int hashCode() {
        return this.accessToken.hashCode();
    }

    public String toString() {
        return "CommonTwitterAuthorizedRequest(accessToken=" + this.accessToken + ')';
    }

    public CommonTwitterAuthorizedRequest(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.accessToken = accessToken;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }
}
