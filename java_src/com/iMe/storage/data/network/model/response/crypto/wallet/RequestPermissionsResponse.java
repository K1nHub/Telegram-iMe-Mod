package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: RequestPermissionsResponse.kt */
/* loaded from: classes3.dex */
public final class RequestPermissionsResponse {
    private final String requestPermissionId;

    public static /* synthetic */ RequestPermissionsResponse copy$default(RequestPermissionsResponse requestPermissionsResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = requestPermissionsResponse.requestPermissionId;
        }
        return requestPermissionsResponse.copy(str);
    }

    public final String component1() {
        return this.requestPermissionId;
    }

    public final RequestPermissionsResponse copy(String requestPermissionId) {
        Intrinsics.checkNotNullParameter(requestPermissionId, "requestPermissionId");
        return new RequestPermissionsResponse(requestPermissionId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RequestPermissionsResponse) && Intrinsics.areEqual(this.requestPermissionId, ((RequestPermissionsResponse) obj).requestPermissionId);
    }

    public int hashCode() {
        return this.requestPermissionId.hashCode();
    }

    public String toString() {
        return "RequestPermissionsResponse(requestPermissionId=" + this.requestPermissionId + ')';
    }

    public RequestPermissionsResponse(String requestPermissionId) {
        Intrinsics.checkNotNullParameter(requestPermissionId, "requestPermissionId");
        this.requestPermissionId = requestPermissionId;
    }

    public final String getRequestPermissionId() {
        return this.requestPermissionId;
    }
}
