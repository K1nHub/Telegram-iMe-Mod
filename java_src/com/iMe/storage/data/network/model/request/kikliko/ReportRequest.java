package com.iMe.storage.data.network.model.request.kikliko;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReportRequest.kt */
/* loaded from: classes4.dex */
public final class ReportRequest {
    private final String reason;
    @SerializedName("customer_id")
    private final String uid;

    public ReportRequest(String uid, String reason) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.uid = uid;
        this.reason = reason;
    }

    public final String getUid() {
        return this.uid;
    }

    public final String getReason() {
        return this.reason;
    }
}
