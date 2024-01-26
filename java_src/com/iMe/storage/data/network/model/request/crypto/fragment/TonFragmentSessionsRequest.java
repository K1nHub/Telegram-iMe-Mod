package com.iMe.storage.data.network.model.request.crypto.fragment;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentSessionsRequest.kt */
/* loaded from: classes3.dex */
public final class TonFragmentSessionsRequest {
    private final List<TonFragmentSessionSignatureRequest> payload;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TonFragmentSessionsRequest copy$default(TonFragmentSessionsRequest tonFragmentSessionsRequest, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tonFragmentSessionsRequest.payload;
        }
        return tonFragmentSessionsRequest.copy(list);
    }

    public final List<TonFragmentSessionSignatureRequest> component1() {
        return this.payload;
    }

    public final TonFragmentSessionsRequest copy(List<TonFragmentSessionSignatureRequest> payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        return new TonFragmentSessionsRequest(payload);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TonFragmentSessionsRequest) && Intrinsics.areEqual(this.payload, ((TonFragmentSessionsRequest) obj).payload);
    }

    public int hashCode() {
        return this.payload.hashCode();
    }

    public String toString() {
        return "TonFragmentSessionsRequest(payload=" + this.payload + ')';
    }

    public TonFragmentSessionsRequest(List<TonFragmentSessionSignatureRequest> payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.payload = payload;
    }

    public final List<TonFragmentSessionSignatureRequest> getPayload() {
        return this.payload;
    }
}
