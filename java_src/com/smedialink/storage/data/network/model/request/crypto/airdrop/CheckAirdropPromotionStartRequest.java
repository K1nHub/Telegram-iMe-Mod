package com.smedialink.storage.data.network.model.request.crypto.airdrop;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CheckAirdropPromotionStartRequest.kt */
/* loaded from: classes3.dex */
public final class CheckAirdropPromotionStartRequest {
    private final String promotionVersion;
    private final String requestId;

    public static /* synthetic */ CheckAirdropPromotionStartRequest copy$default(CheckAirdropPromotionStartRequest checkAirdropPromotionStartRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = checkAirdropPromotionStartRequest.promotionVersion;
        }
        if ((i & 2) != 0) {
            str2 = checkAirdropPromotionStartRequest.requestId;
        }
        return checkAirdropPromotionStartRequest.copy(str, str2);
    }

    public final String component1() {
        return this.promotionVersion;
    }

    public final String component2() {
        return this.requestId;
    }

    public final CheckAirdropPromotionStartRequest copy(String promotionVersion, String requestId) {
        Intrinsics.checkNotNullParameter(promotionVersion, "promotionVersion");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        return new CheckAirdropPromotionStartRequest(promotionVersion, requestId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CheckAirdropPromotionStartRequest) {
            CheckAirdropPromotionStartRequest checkAirdropPromotionStartRequest = (CheckAirdropPromotionStartRequest) obj;
            return Intrinsics.areEqual(this.promotionVersion, checkAirdropPromotionStartRequest.promotionVersion) && Intrinsics.areEqual(this.requestId, checkAirdropPromotionStartRequest.requestId);
        }
        return false;
    }

    public int hashCode() {
        return (this.promotionVersion.hashCode() * 31) + this.requestId.hashCode();
    }

    public String toString() {
        return "CheckAirdropPromotionStartRequest(promotionVersion=" + this.promotionVersion + ", requestId=" + this.requestId + ')';
    }

    public CheckAirdropPromotionStartRequest(String promotionVersion, String requestId) {
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
