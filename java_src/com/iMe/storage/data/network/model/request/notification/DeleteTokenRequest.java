package com.iMe.storage.data.network.model.request.notification;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DeleteTokenRequest.kt */
/* loaded from: classes3.dex */
public final class DeleteTokenRequest {
    @SerializedName("platform")
    private final String platform;
    @SerializedName("token")
    private final String token;

    public static /* synthetic */ DeleteTokenRequest copy$default(DeleteTokenRequest deleteTokenRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = deleteTokenRequest.token;
        }
        if ((i & 2) != 0) {
            str2 = deleteTokenRequest.platform;
        }
        return deleteTokenRequest.copy(str, str2);
    }

    public final String component1() {
        return this.token;
    }

    public final String component2() {
        return this.platform;
    }

    public final DeleteTokenRequest copy(String token, String platform) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(platform, "platform");
        return new DeleteTokenRequest(token, platform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DeleteTokenRequest) {
            DeleteTokenRequest deleteTokenRequest = (DeleteTokenRequest) obj;
            return Intrinsics.areEqual(this.token, deleteTokenRequest.token) && Intrinsics.areEqual(this.platform, deleteTokenRequest.platform);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.platform.hashCode();
    }

    public String toString() {
        return "DeleteTokenRequest(token=" + this.token + ", platform=" + this.platform + ')';
    }

    public DeleteTokenRequest(String token, String platform) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.token = token;
        this.platform = platform;
    }

    public /* synthetic */ DeleteTokenRequest(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "ANDROID" : str2);
    }

    public final String getToken() {
        return this.token;
    }

    public final String getPlatform() {
        return this.platform;
    }
}
