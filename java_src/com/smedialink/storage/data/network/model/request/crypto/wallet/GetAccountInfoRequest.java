package com.smedialink.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetAccountInfoRequest.kt */
/* loaded from: classes3.dex */
public final class GetAccountInfoRequest {
    private final String userId;

    public static /* synthetic */ GetAccountInfoRequest copy$default(GetAccountInfoRequest getAccountInfoRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getAccountInfoRequest.userId;
        }
        return getAccountInfoRequest.copy(str);
    }

    public final String component1() {
        return this.userId;
    }

    public final GetAccountInfoRequest copy(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new GetAccountInfoRequest(userId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetAccountInfoRequest) && Intrinsics.areEqual(this.userId, ((GetAccountInfoRequest) obj).userId);
    }

    public int hashCode() {
        return this.userId.hashCode();
    }

    public String toString() {
        return "GetAccountInfoRequest(userId=" + this.userId + ')';
    }

    public GetAccountInfoRequest(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
    }

    public final String getUserId() {
        return this.userId;
    }
}
