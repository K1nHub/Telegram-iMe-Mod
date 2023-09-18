package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxesListResponse.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxesListResponse {
    private final List<CryptoBoxInfoResponse> cryptoboxes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CryptoBoxesListResponse copy$default(CryptoBoxesListResponse cryptoBoxesListResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cryptoBoxesListResponse.cryptoboxes;
        }
        return cryptoBoxesListResponse.copy(list);
    }

    public final List<CryptoBoxInfoResponse> component1() {
        return this.cryptoboxes;
    }

    public final CryptoBoxesListResponse copy(List<CryptoBoxInfoResponse> cryptoboxes) {
        Intrinsics.checkNotNullParameter(cryptoboxes, "cryptoboxes");
        return new CryptoBoxesListResponse(cryptoboxes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxesListResponse) && Intrinsics.areEqual(this.cryptoboxes, ((CryptoBoxesListResponse) obj).cryptoboxes);
    }

    public int hashCode() {
        return this.cryptoboxes.hashCode();
    }

    public String toString() {
        return "CryptoBoxesListResponse(cryptoboxes=" + this.cryptoboxes + ')';
    }

    public CryptoBoxesListResponse(List<CryptoBoxInfoResponse> cryptoboxes) {
        Intrinsics.checkNotNullParameter(cryptoboxes, "cryptoboxes");
        this.cryptoboxes = cryptoboxes;
    }

    public final List<CryptoBoxInfoResponse> getCryptoboxes() {
        return this.cryptoboxes;
    }
}
