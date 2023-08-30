package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTransactionGas.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTransactionGas {
    private final int durationMinutes;
    private final TokenDetailed token;
    private final CryptoBoxValues value;

    public static /* synthetic */ CryptoBoxTransactionGas copy$default(CryptoBoxTransactionGas cryptoBoxTransactionGas, TokenDetailed tokenDetailed, CryptoBoxValues cryptoBoxValues, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            tokenDetailed = cryptoBoxTransactionGas.token;
        }
        if ((i2 & 2) != 0) {
            cryptoBoxValues = cryptoBoxTransactionGas.value;
        }
        if ((i2 & 4) != 0) {
            i = cryptoBoxTransactionGas.durationMinutes;
        }
        return cryptoBoxTransactionGas.copy(tokenDetailed, cryptoBoxValues, i);
    }

    public final TokenDetailed component1() {
        return this.token;
    }

    public final CryptoBoxValues component2() {
        return this.value;
    }

    public final int component3() {
        return this.durationMinutes;
    }

    public final CryptoBoxTransactionGas copy(TokenDetailed token, CryptoBoxValues value, int i) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        return new CryptoBoxTransactionGas(token, value, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTransactionGas) {
            CryptoBoxTransactionGas cryptoBoxTransactionGas = (CryptoBoxTransactionGas) obj;
            return Intrinsics.areEqual(this.token, cryptoBoxTransactionGas.token) && Intrinsics.areEqual(this.value, cryptoBoxTransactionGas.value) && this.durationMinutes == cryptoBoxTransactionGas.durationMinutes;
        }
        return false;
    }

    public int hashCode() {
        return (((this.token.hashCode() * 31) + this.value.hashCode()) * 31) + this.durationMinutes;
    }

    public String toString() {
        return "CryptoBoxTransactionGas(token=" + this.token + ", value=" + this.value + ", durationMinutes=" + this.durationMinutes + ')';
    }

    public CryptoBoxTransactionGas(TokenDetailed token, CryptoBoxValues value, int i) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(value, "value");
        this.token = token;
        this.value = value;
        this.durationMinutes = i;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final CryptoBoxValues getValue() {
        return this.value;
    }

    public final int getDurationMinutes() {
        return this.durationMinutes;
    }
}
