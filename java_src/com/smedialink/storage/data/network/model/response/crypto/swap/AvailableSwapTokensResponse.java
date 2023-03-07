package com.smedialink.storage.data.network.model.response.crypto.swap;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AvailableSwapTokensResponse.kt */
/* loaded from: classes3.dex */
public final class AvailableSwapTokensResponse {
    private final List<String> cryptoTokenCodes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AvailableSwapTokensResponse copy$default(AvailableSwapTokensResponse availableSwapTokensResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = availableSwapTokensResponse.cryptoTokenCodes;
        }
        return availableSwapTokensResponse.copy(list);
    }

    public final List<String> component1() {
        return this.cryptoTokenCodes;
    }

    public final AvailableSwapTokensResponse copy(List<String> cryptoTokenCodes) {
        Intrinsics.checkNotNullParameter(cryptoTokenCodes, "cryptoTokenCodes");
        return new AvailableSwapTokensResponse(cryptoTokenCodes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AvailableSwapTokensResponse) && Intrinsics.areEqual(this.cryptoTokenCodes, ((AvailableSwapTokensResponse) obj).cryptoTokenCodes);
    }

    public int hashCode() {
        return this.cryptoTokenCodes.hashCode();
    }

    public String toString() {
        return "AvailableSwapTokensResponse(cryptoTokenCodes=" + this.cryptoTokenCodes + ')';
    }

    public AvailableSwapTokensResponse(List<String> cryptoTokenCodes) {
        Intrinsics.checkNotNullParameter(cryptoTokenCodes, "cryptoTokenCodes");
        this.cryptoTokenCodes = cryptoTokenCodes;
    }

    public final List<String> getCryptoTokenCodes() {
        return this.cryptoTokenCodes;
    }
}
