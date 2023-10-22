package com.iMe.storage.data.network.model.response.crypto.airdrop;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: RegisterInAirdropPromotionResponse.kt */
/* loaded from: classes3.dex */
public final class RegisterInAirdropPromotionResponse {
    private final String requestId;

    public static /* synthetic */ RegisterInAirdropPromotionResponse copy$default(RegisterInAirdropPromotionResponse registerInAirdropPromotionResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = registerInAirdropPromotionResponse.requestId;
        }
        return registerInAirdropPromotionResponse.copy(str);
    }

    public final String component1() {
        return this.requestId;
    }

    public final RegisterInAirdropPromotionResponse copy(String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        return new RegisterInAirdropPromotionResponse(requestId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RegisterInAirdropPromotionResponse) && Intrinsics.areEqual(this.requestId, ((RegisterInAirdropPromotionResponse) obj).requestId);
    }

    public int hashCode() {
        return this.requestId.hashCode();
    }

    public String toString() {
        return "RegisterInAirdropPromotionResponse(requestId=" + this.requestId + ')';
    }

    public RegisterInAirdropPromotionResponse(String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.requestId = requestId;
    }

    public final String getRequestId() {
        return this.requestId;
    }
}
