package com.iMe.storage.domain.model.crypto.cryptobox;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTransactionAction.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTransactionAction {
    private final CryptoBoxTransactionGas gas;
    private final CryptoBoxTransactionArgs transaction;

    public static /* synthetic */ CryptoBoxTransactionAction copy$default(CryptoBoxTransactionAction cryptoBoxTransactionAction, CryptoBoxTransactionArgs cryptoBoxTransactionArgs, CryptoBoxTransactionGas cryptoBoxTransactionGas, int i, Object obj) {
        if ((i & 1) != 0) {
            cryptoBoxTransactionArgs = cryptoBoxTransactionAction.transaction;
        }
        if ((i & 2) != 0) {
            cryptoBoxTransactionGas = cryptoBoxTransactionAction.gas;
        }
        return cryptoBoxTransactionAction.copy(cryptoBoxTransactionArgs, cryptoBoxTransactionGas);
    }

    public final CryptoBoxTransactionArgs component1() {
        return this.transaction;
    }

    public final CryptoBoxTransactionGas component2() {
        return this.gas;
    }

    public final CryptoBoxTransactionAction copy(CryptoBoxTransactionArgs transaction, CryptoBoxTransactionGas gas) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(gas, "gas");
        return new CryptoBoxTransactionAction(transaction, gas);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTransactionAction) {
            CryptoBoxTransactionAction cryptoBoxTransactionAction = (CryptoBoxTransactionAction) obj;
            return Intrinsics.areEqual(this.transaction, cryptoBoxTransactionAction.transaction) && Intrinsics.areEqual(this.gas, cryptoBoxTransactionAction.gas);
        }
        return false;
    }

    public int hashCode() {
        return (this.transaction.hashCode() * 31) + this.gas.hashCode();
    }

    public String toString() {
        return "CryptoBoxTransactionAction(transaction=" + this.transaction + ", gas=" + this.gas + ')';
    }

    public CryptoBoxTransactionAction(CryptoBoxTransactionArgs transaction, CryptoBoxTransactionGas gas) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(gas, "gas");
        this.transaction = transaction;
        this.gas = gas;
    }

    public final CryptoBoxTransactionArgs getTransaction() {
        return this.transaction;
    }

    public final CryptoBoxTransactionGas getGas() {
        return this.gas;
    }
}
