package com.smedialink.storage.data.network.model.response.notification;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: IssuePushAllowanceTokenResponse.kt */
/* loaded from: classes3.dex */
public final class IssuePushAllowanceTokenResponse {
    private final String token;

    public static /* synthetic */ IssuePushAllowanceTokenResponse copy$default(IssuePushAllowanceTokenResponse issuePushAllowanceTokenResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = issuePushAllowanceTokenResponse.token;
        }
        return issuePushAllowanceTokenResponse.copy(str);
    }

    public final String component1() {
        return this.token;
    }

    public final IssuePushAllowanceTokenResponse copy(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new IssuePushAllowanceTokenResponse(token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof IssuePushAllowanceTokenResponse) && Intrinsics.areEqual(this.token, ((IssuePushAllowanceTokenResponse) obj).token);
    }

    public int hashCode() {
        return this.token.hashCode();
    }

    public String toString() {
        return "IssuePushAllowanceTokenResponse(token=" + this.token + ')';
    }

    public IssuePushAllowanceTokenResponse(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
    }

    public final String getToken() {
        return this.token;
    }
}
