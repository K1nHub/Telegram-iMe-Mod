package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTransactionGasResponse.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxTransactionGasResponse {
    private final int duration;
    private final TokenDetailedResponse token;
    private final CryptoBoxValuesResponse value;

    public static /* synthetic */ CryptoBoxTransactionGasResponse copy$default(CryptoBoxTransactionGasResponse cryptoBoxTransactionGasResponse, TokenDetailedResponse tokenDetailedResponse, CryptoBoxValuesResponse cryptoBoxValuesResponse, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            tokenDetailedResponse = cryptoBoxTransactionGasResponse.token;
        }
        if ((i2 & 2) != 0) {
            cryptoBoxValuesResponse = cryptoBoxTransactionGasResponse.value;
        }
        if ((i2 & 4) != 0) {
            i = cryptoBoxTransactionGasResponse.duration;
        }
        return cryptoBoxTransactionGasResponse.copy(tokenDetailedResponse, cryptoBoxValuesResponse, i);
    }

    public final TokenDetailedResponse component1() {
        return this.token;
    }

    public final CryptoBoxValuesResponse component2() {
        return this.value;
    }

    public final int component3() {
        return this.duration;
    }

    public final CryptoBoxTransactionGasResponse copy(TokenDetailedResponse token, CryptoBoxValuesResponse value, int i) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        return new CryptoBoxTransactionGasResponse(token, value, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTransactionGasResponse) {
            CryptoBoxTransactionGasResponse cryptoBoxTransactionGasResponse = (CryptoBoxTransactionGasResponse) obj;
            return Intrinsics.areEqual(this.token, cryptoBoxTransactionGasResponse.token) && Intrinsics.areEqual(this.value, cryptoBoxTransactionGasResponse.value) && this.duration == cryptoBoxTransactionGasResponse.duration;
        }
        return false;
    }

    public int hashCode() {
        return (((this.token.hashCode() * 31) + this.value.hashCode()) * 31) + this.duration;
    }

    public String toString() {
        return "CryptoBoxTransactionGasResponse(token=" + this.token + ", value=" + this.value + ", duration=" + this.duration + ')';
    }

    public CryptoBoxTransactionGasResponse(TokenDetailedResponse token, CryptoBoxValuesResponse value, int i) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        this.token = token;
        this.value = value;
        this.duration = i;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }

    public final CryptoBoxValuesResponse getValue() {
        return this.value;
    }

    public final int getDuration() {
        return this.duration;
    }
}
