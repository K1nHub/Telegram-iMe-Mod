package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CommonCryptoBoxIdRequest.kt */
/* loaded from: classes3.dex */
public final class CommonCryptoBoxIdRequest {
    private final String boxId;

    public static /* synthetic */ CommonCryptoBoxIdRequest copy$default(CommonCryptoBoxIdRequest commonCryptoBoxIdRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = commonCryptoBoxIdRequest.boxId;
        }
        return commonCryptoBoxIdRequest.copy(str);
    }

    public final String component1() {
        return this.boxId;
    }

    public final CommonCryptoBoxIdRequest copy(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        return new CommonCryptoBoxIdRequest(boxId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CommonCryptoBoxIdRequest) && Intrinsics.areEqual(this.boxId, ((CommonCryptoBoxIdRequest) obj).boxId);
    }

    public int hashCode() {
        return this.boxId.hashCode();
    }

    public String toString() {
        return "CommonCryptoBoxIdRequest(boxId=" + this.boxId + ')';
    }

    public CommonCryptoBoxIdRequest(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        this.boxId = boxId;
    }

    public final String getBoxId() {
        return this.boxId;
    }
}
