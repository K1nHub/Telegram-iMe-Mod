package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxResponse {
    private final CryptoBoxInfoResponse cryptobox;

    public static /* synthetic */ CryptoBoxResponse copy$default(CryptoBoxResponse cryptoBoxResponse, CryptoBoxInfoResponse cryptoBoxInfoResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoBoxInfoResponse = cryptoBoxResponse.cryptobox;
        }
        return cryptoBoxResponse.copy(cryptoBoxInfoResponse);
    }

    public final CryptoBoxInfoResponse component1() {
        return this.cryptobox;
    }

    public final CryptoBoxResponse copy(CryptoBoxInfoResponse cryptobox) {
        Intrinsics.checkNotNullParameter(cryptobox, "cryptobox");
        return new CryptoBoxResponse(cryptobox);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxResponse) && Intrinsics.areEqual(this.cryptobox, ((CryptoBoxResponse) obj).cryptobox);
    }

    public int hashCode() {
        return this.cryptobox.hashCode();
    }

    public String toString() {
        return "CryptoBoxResponse(cryptobox=" + this.cryptobox + ')';
    }

    public CryptoBoxResponse(CryptoBoxInfoResponse cryptobox) {
        Intrinsics.checkNotNullParameter(cryptobox, "cryptobox");
        this.cryptobox = cryptobox;
    }

    public final CryptoBoxInfoResponse getCryptobox() {
        return this.cryptobox;
    }
}
