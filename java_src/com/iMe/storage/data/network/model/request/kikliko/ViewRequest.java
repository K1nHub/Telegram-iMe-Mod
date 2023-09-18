package com.iMe.storage.data.network.model.request.kikliko;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ViewRequest.kt */
/* loaded from: classes4.dex */
public final class ViewRequest {
    @SerializedName("customer_id")
    private final String uid;

    public static /* synthetic */ ViewRequest copy$default(ViewRequest viewRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = viewRequest.uid;
        }
        return viewRequest.copy(str);
    }

    public final String component1() {
        return this.uid;
    }

    public final ViewRequest copy(String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        return new ViewRequest(uid);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ViewRequest) && Intrinsics.areEqual(this.uid, ((ViewRequest) obj).uid);
    }

    public int hashCode() {
        return this.uid.hashCode();
    }

    public String toString() {
        return "ViewRequest(uid=" + this.uid + ')';
    }

    public ViewRequest(String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        this.uid = uid;
    }

    public final String getUid() {
        return this.uid;
    }
}
