package com.smedialink.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: RequestPermissionRequest.kt */
/* loaded from: classes3.dex */
public final class RequestPermissionRequest {
    private final String action;
    private final String targetUserId;

    public static /* synthetic */ RequestPermissionRequest copy$default(RequestPermissionRequest requestPermissionRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = requestPermissionRequest.targetUserId;
        }
        if ((i & 2) != 0) {
            str2 = requestPermissionRequest.action;
        }
        return requestPermissionRequest.copy(str, str2);
    }

    public final String component1() {
        return this.targetUserId;
    }

    public final String component2() {
        return this.action;
    }

    public final RequestPermissionRequest copy(String targetUserId, String action) {
        Intrinsics.checkNotNullParameter(targetUserId, "targetUserId");
        Intrinsics.checkNotNullParameter(action, "action");
        return new RequestPermissionRequest(targetUserId, action);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RequestPermissionRequest) {
            RequestPermissionRequest requestPermissionRequest = (RequestPermissionRequest) obj;
            return Intrinsics.areEqual(this.targetUserId, requestPermissionRequest.targetUserId) && Intrinsics.areEqual(this.action, requestPermissionRequest.action);
        }
        return false;
    }

    public int hashCode() {
        return (this.targetUserId.hashCode() * 31) + this.action.hashCode();
    }

    public String toString() {
        return "RequestPermissionRequest(targetUserId=" + this.targetUserId + ", action=" + this.action + ')';
    }

    public RequestPermissionRequest(String targetUserId, String action) {
        Intrinsics.checkNotNullParameter(targetUserId, "targetUserId");
        Intrinsics.checkNotNullParameter(action, "action");
        this.targetUserId = targetUserId;
        this.action = action;
    }

    public final String getTargetUserId() {
        return this.targetUserId;
    }

    public final String getAction() {
        return this.action;
    }
}
