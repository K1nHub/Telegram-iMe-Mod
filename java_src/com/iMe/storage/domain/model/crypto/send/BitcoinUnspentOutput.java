package com.iMe.storage.domain.model.crypto.send;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BitcoinUnspentOutput.kt */
/* loaded from: classes4.dex */
public final class BitcoinUnspentOutput {
    private final BigInteger amount;
    private final int index;
    private final String txId;

    public static /* synthetic */ BitcoinUnspentOutput copy$default(BitcoinUnspentOutput bitcoinUnspentOutput, String str, int i, BigInteger bigInteger, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = bitcoinUnspentOutput.txId;
        }
        if ((i2 & 2) != 0) {
            i = bitcoinUnspentOutput.index;
        }
        if ((i2 & 4) != 0) {
            bigInteger = bitcoinUnspentOutput.amount;
        }
        return bitcoinUnspentOutput.copy(str, i, bigInteger);
    }

    public final String component1() {
        return this.txId;
    }

    public final int component2() {
        return this.index;
    }

    public final BigInteger component3() {
        return this.amount;
    }

    public final BitcoinUnspentOutput copy(String txId, int i, BigInteger amount) {
        Intrinsics.checkNotNullParameter(txId, "txId");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new BitcoinUnspentOutput(txId, i, amount);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BitcoinUnspentOutput) {
            BitcoinUnspentOutput bitcoinUnspentOutput = (BitcoinUnspentOutput) obj;
            return Intrinsics.areEqual(this.txId, bitcoinUnspentOutput.txId) && this.index == bitcoinUnspentOutput.index && Intrinsics.areEqual(this.amount, bitcoinUnspentOutput.amount);
        }
        return false;
    }

    public int hashCode() {
        return (((this.txId.hashCode() * 31) + this.index) * 31) + this.amount.hashCode();
    }

    public String toString() {
        return "BitcoinUnspentOutput(txId=" + this.txId + ", index=" + this.index + ", amount=" + this.amount + ')';
    }

    public BitcoinUnspentOutput(String txId, int i, BigInteger amount) {
        Intrinsics.checkNotNullParameter(txId, "txId");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.txId = txId;
        this.index = i;
        this.amount = amount;
    }

    public final String getTxId() {
        return this.txId;
    }

    public final int getIndex() {
        return this.index;
    }

    public final BigInteger getAmount() {
        return this.amount;
    }
}
