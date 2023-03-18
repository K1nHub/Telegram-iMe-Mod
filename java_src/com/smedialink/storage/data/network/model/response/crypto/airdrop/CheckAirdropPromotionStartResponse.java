package com.smedialink.storage.data.network.model.response.crypto.airdrop;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CheckAirdropPromotionStartResponse.kt */
/* loaded from: classes3.dex */
public final class CheckAirdropPromotionStartResponse {
    private final String rightRequestId;
    private final String status;
    private final Integer value;

    public static /* synthetic */ CheckAirdropPromotionStartResponse copy$default(CheckAirdropPromotionStartResponse checkAirdropPromotionStartResponse, String str, Integer num, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = checkAirdropPromotionStartResponse.status;
        }
        if ((i & 2) != 0) {
            num = checkAirdropPromotionStartResponse.value;
        }
        if ((i & 4) != 0) {
            str2 = checkAirdropPromotionStartResponse.rightRequestId;
        }
        return checkAirdropPromotionStartResponse.copy(str, num, str2);
    }

    public final String component1() {
        return this.status;
    }

    public final Integer component2() {
        return this.value;
    }

    public final String component3() {
        return this.rightRequestId;
    }

    public final CheckAirdropPromotionStartResponse copy(String status, Integer num, String str) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new CheckAirdropPromotionStartResponse(status, num, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CheckAirdropPromotionStartResponse) {
            CheckAirdropPromotionStartResponse checkAirdropPromotionStartResponse = (CheckAirdropPromotionStartResponse) obj;
            return Intrinsics.areEqual(this.status, checkAirdropPromotionStartResponse.status) && Intrinsics.areEqual(this.value, checkAirdropPromotionStartResponse.value) && Intrinsics.areEqual(this.rightRequestId, checkAirdropPromotionStartResponse.rightRequestId);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.status.hashCode() * 31;
        Integer num = this.value;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.rightRequestId;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "CheckAirdropPromotionStartResponse(status=" + this.status + ", value=" + this.value + ", rightRequestId=" + this.rightRequestId + ')';
    }

    public CheckAirdropPromotionStartResponse(String status, Integer num, String str) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.value = num;
        this.rightRequestId = str;
    }

    public final String getStatus() {
        return this.status;
    }

    public final Integer getValue() {
        return this.value;
    }

    public final String getRightRequestId() {
        return this.rightRequestId;
    }
}
