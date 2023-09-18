package com.iMe.storage.data.network.model.request.crypto.airdrop;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetTokensByAirdropPromotionRequest.kt */
/* loaded from: classes4.dex */
public final class GetTokensByAirdropPromotionRequest {
    private final String promotionVersion;
    private final String requestId;

    public static /* synthetic */ GetTokensByAirdropPromotionRequest copy$default(GetTokensByAirdropPromotionRequest getTokensByAirdropPromotionRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getTokensByAirdropPromotionRequest.promotionVersion;
        }
        if ((i & 2) != 0) {
            str2 = getTokensByAirdropPromotionRequest.requestId;
        }
        return getTokensByAirdropPromotionRequest.copy(str, str2);
    }

    public final String component1() {
        return this.promotionVersion;
    }

    public final String component2() {
        return this.requestId;
    }

    public final GetTokensByAirdropPromotionRequest copy(String promotionVersion, String requestId) {
        Intrinsics.checkNotNullParameter(promotionVersion, "promotionVersion");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        return new GetTokensByAirdropPromotionRequest(promotionVersion, requestId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetTokensByAirdropPromotionRequest) {
            GetTokensByAirdropPromotionRequest getTokensByAirdropPromotionRequest = (GetTokensByAirdropPromotionRequest) obj;
            return Intrinsics.areEqual(this.promotionVersion, getTokensByAirdropPromotionRequest.promotionVersion) && Intrinsics.areEqual(this.requestId, getTokensByAirdropPromotionRequest.requestId);
        }
        return false;
    }

    public int hashCode() {
        return (this.promotionVersion.hashCode() * 31) + this.requestId.hashCode();
    }

    public String toString() {
        return "GetTokensByAirdropPromotionRequest(promotionVersion=" + this.promotionVersion + ", requestId=" + this.requestId + ')';
    }

    public GetTokensByAirdropPromotionRequest(String promotionVersion, String requestId) {
        Intrinsics.checkNotNullParameter(promotionVersion, "promotionVersion");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.promotionVersion = promotionVersion;
        this.requestId = requestId;
    }

    public final String getPromotionVersion() {
        return this.promotionVersion;
    }

    public final String getRequestId() {
        return this.requestId;
    }
}
