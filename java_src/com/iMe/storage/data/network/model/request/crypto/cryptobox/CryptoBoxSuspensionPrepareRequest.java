package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxSuspensionPrepareRequest.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxSuspensionPrepareRequest {
    private final String boxId;

    public static /* synthetic */ CryptoBoxSuspensionPrepareRequest copy$default(CryptoBoxSuspensionPrepareRequest cryptoBoxSuspensionPrepareRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxSuspensionPrepareRequest.boxId;
        }
        return cryptoBoxSuspensionPrepareRequest.copy(str);
    }

    public final String component1() {
        return this.boxId;
    }

    public final CryptoBoxSuspensionPrepareRequest copy(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        return new CryptoBoxSuspensionPrepareRequest(boxId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxSuspensionPrepareRequest) && Intrinsics.areEqual(this.boxId, ((CryptoBoxSuspensionPrepareRequest) obj).boxId);
    }

    public int hashCode() {
        return this.boxId.hashCode();
    }

    public String toString() {
        return "CryptoBoxSuspensionPrepareRequest(boxId=" + this.boxId + ')';
    }

    public CryptoBoxSuspensionPrepareRequest(String boxId) {
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        this.boxId = boxId;
    }

    public final String getBoxId() {
        return this.boxId;
    }
}
