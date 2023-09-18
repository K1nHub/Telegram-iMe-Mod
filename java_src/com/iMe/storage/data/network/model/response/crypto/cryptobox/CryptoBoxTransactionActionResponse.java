package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTransactionActionResponse.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxTransactionActionResponse {
    private final CryptoBoxTransactionGasResponse gas;
    private final CryptoBoxTransactionArgsResponse transaction;

    public static /* synthetic */ CryptoBoxTransactionActionResponse copy$default(CryptoBoxTransactionActionResponse cryptoBoxTransactionActionResponse, CryptoBoxTransactionArgsResponse cryptoBoxTransactionArgsResponse, CryptoBoxTransactionGasResponse cryptoBoxTransactionGasResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoBoxTransactionArgsResponse = cryptoBoxTransactionActionResponse.transaction;
        }
        if ((i & 2) != 0) {
            cryptoBoxTransactionGasResponse = cryptoBoxTransactionActionResponse.gas;
        }
        return cryptoBoxTransactionActionResponse.copy(cryptoBoxTransactionArgsResponse, cryptoBoxTransactionGasResponse);
    }

    public final CryptoBoxTransactionArgsResponse component1() {
        return this.transaction;
    }

    public final CryptoBoxTransactionGasResponse component2() {
        return this.gas;
    }

    public final CryptoBoxTransactionActionResponse copy(CryptoBoxTransactionArgsResponse transaction, CryptoBoxTransactionGasResponse gas) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(gas, "gas");
        return new CryptoBoxTransactionActionResponse(transaction, gas);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTransactionActionResponse) {
            CryptoBoxTransactionActionResponse cryptoBoxTransactionActionResponse = (CryptoBoxTransactionActionResponse) obj;
            return Intrinsics.areEqual(this.transaction, cryptoBoxTransactionActionResponse.transaction) && Intrinsics.areEqual(this.gas, cryptoBoxTransactionActionResponse.gas);
        }
        return false;
    }

    public int hashCode() {
        return (this.transaction.hashCode() * 31) + this.gas.hashCode();
    }

    public String toString() {
        return "CryptoBoxTransactionActionResponse(transaction=" + this.transaction + ", gas=" + this.gas + ')';
    }

    public CryptoBoxTransactionActionResponse(CryptoBoxTransactionArgsResponse transaction, CryptoBoxTransactionGasResponse gas) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(gas, "gas");
        this.transaction = transaction;
        this.gas = gas;
    }

    public final CryptoBoxTransactionArgsResponse getTransaction() {
        return this.transaction;
    }

    public final CryptoBoxTransactionGasResponse getGas() {
        return this.gas;
    }
}
