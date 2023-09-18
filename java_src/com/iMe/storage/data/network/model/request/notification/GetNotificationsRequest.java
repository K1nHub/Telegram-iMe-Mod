package com.iMe.storage.data.network.model.request.notification;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetNotificationsRequest.kt */
/* loaded from: classes4.dex */
public final class GetNotificationsRequest {
    private final String lastItemId;
    private final int limit;

    public GetNotificationsRequest() {
        this(null, 0, 3, null);
    }

    public static /* synthetic */ GetNotificationsRequest copy$default(GetNotificationsRequest getNotificationsRequest, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = getNotificationsRequest.lastItemId;
        }
        if ((i2 & 2) != 0) {
            i = getNotificationsRequest.limit;
        }
        return getNotificationsRequest.copy(str, i);
    }

    public final String component1() {
        return this.lastItemId;
    }

    public final int component2() {
        return this.limit;
    }

    public final GetNotificationsRequest copy(String str, int i) {
        return new GetNotificationsRequest(str, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetNotificationsRequest) {
            GetNotificationsRequest getNotificationsRequest = (GetNotificationsRequest) obj;
            return Intrinsics.areEqual(this.lastItemId, getNotificationsRequest.lastItemId) && this.limit == getNotificationsRequest.limit;
        }
        return false;
    }

    public int hashCode() {
        String str = this.lastItemId;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.limit;
    }

    public String toString() {
        return "GetNotificationsRequest(lastItemId=" + this.lastItemId + ", limit=" + this.limit + ')';
    }

    public GetNotificationsRequest(String str, int i) {
        this.lastItemId = str;
        this.limit = i;
    }

    public /* synthetic */ GetNotificationsRequest(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? 30 : i);
    }

    public final String getLastItemId() {
        return this.lastItemId;
    }

    public final int getLimit() {
        return this.limit;
    }
}
