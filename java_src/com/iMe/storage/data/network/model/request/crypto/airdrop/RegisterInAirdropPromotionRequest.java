package com.iMe.storage.data.network.model.request.crypto.airdrop;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: RegisterInAirdropPromotionRequest.kt */
/* loaded from: classes4.dex */
public final class RegisterInAirdropPromotionRequest {
    private final String promotionVersion;

    public static /* synthetic */ RegisterInAirdropPromotionRequest copy$default(RegisterInAirdropPromotionRequest registerInAirdropPromotionRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = registerInAirdropPromotionRequest.promotionVersion;
        }
        return registerInAirdropPromotionRequest.copy(str);
    }

    public final String component1() {
        return this.promotionVersion;
    }

    public final RegisterInAirdropPromotionRequest copy(String promotionVersion) {
        Intrinsics.checkNotNullParameter(promotionVersion, "promotionVersion");
        return new RegisterInAirdropPromotionRequest(promotionVersion);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RegisterInAirdropPromotionRequest) && Intrinsics.areEqual(this.promotionVersion, ((RegisterInAirdropPromotionRequest) obj).promotionVersion);
    }

    public int hashCode() {
        return this.promotionVersion.hashCode();
    }

    public String toString() {
        return "RegisterInAirdropPromotionRequest(promotionVersion=" + this.promotionVersion + ')';
    }

    public RegisterInAirdropPromotionRequest(String promotionVersion) {
        Intrinsics.checkNotNullParameter(promotionVersion, "promotionVersion");
        this.promotionVersion = promotionVersion;
    }

    public final String getPromotionVersion() {
        return this.promotionVersion;
    }
}
