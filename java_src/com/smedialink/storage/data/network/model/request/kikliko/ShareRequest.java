package com.smedialink.storage.data.network.model.request.kikliko;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ShareRequest.kt */
/* loaded from: classes3.dex */
public final class ShareRequest {
    @SerializedName("customer_id")
    private final String uid;

    public static /* synthetic */ ShareRequest copy$default(ShareRequest shareRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = shareRequest.uid;
        }
        return shareRequest.copy(str);
    }

    public final String component1() {
        return this.uid;
    }

    public final ShareRequest copy(String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        return new ShareRequest(uid);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ShareRequest) && Intrinsics.areEqual(this.uid, ((ShareRequest) obj).uid);
    }

    public int hashCode() {
        return this.uid.hashCode();
    }

    public String toString() {
        return "ShareRequest(uid=" + this.uid + ')';
    }

    public ShareRequest(String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        this.uid = uid;
    }

    public final String getUid() {
        return this.uid;
    }
}
