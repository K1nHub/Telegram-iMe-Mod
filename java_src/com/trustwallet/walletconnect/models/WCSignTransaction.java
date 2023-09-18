package com.trustwallet.walletconnect.models;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCSignTransaction.kt */
/* loaded from: classes6.dex */
public final class WCSignTransaction {
    private final int network;
    private final String transaction;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCSignTransaction) {
            WCSignTransaction wCSignTransaction = (WCSignTransaction) obj;
            return this.network == wCSignTransaction.network && Intrinsics.areEqual(this.transaction, wCSignTransaction.transaction);
        }
        return false;
    }

    public int hashCode() {
        return (this.network * 31) + this.transaction.hashCode();
    }

    public String toString() {
        return "WCSignTransaction(network=" + this.network + ", transaction=" + this.transaction + ')';
    }
}
