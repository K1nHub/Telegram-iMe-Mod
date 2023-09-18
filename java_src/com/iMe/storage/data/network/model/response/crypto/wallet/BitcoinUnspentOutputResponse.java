package com.iMe.storage.data.network.model.response.crypto.wallet;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BitcoinUnspentOutputResponse.kt */
/* loaded from: classes4.dex */
public final class BitcoinUnspentOutputResponse {
    private final BigInteger amount;
    private final int index;
    private final String txId;

    public static /* synthetic */ BitcoinUnspentOutputResponse copy$default(BitcoinUnspentOutputResponse bitcoinUnspentOutputResponse, String str, int i, BigInteger bigInteger, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = bitcoinUnspentOutputResponse.txId;
        }
        if ((i2 & 2) != 0) {
            i = bitcoinUnspentOutputResponse.index;
        }
        if ((i2 & 4) != 0) {
            bigInteger = bitcoinUnspentOutputResponse.amount;
        }
        return bitcoinUnspentOutputResponse.copy(str, i, bigInteger);
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

    public final BitcoinUnspentOutputResponse copy(String txId, int i, BigInteger amount) {
        Intrinsics.checkNotNullParameter(txId, "txId");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new BitcoinUnspentOutputResponse(txId, i, amount);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BitcoinUnspentOutputResponse) {
            BitcoinUnspentOutputResponse bitcoinUnspentOutputResponse = (BitcoinUnspentOutputResponse) obj;
            return Intrinsics.areEqual(this.txId, bitcoinUnspentOutputResponse.txId) && this.index == bitcoinUnspentOutputResponse.index && Intrinsics.areEqual(this.amount, bitcoinUnspentOutputResponse.amount);
        }
        return false;
    }

    public int hashCode() {
        return (((this.txId.hashCode() * 31) + this.index) * 31) + this.amount.hashCode();
    }

    public String toString() {
        return "BitcoinUnspentOutputResponse(txId=" + this.txId + ", index=" + this.index + ", amount=" + this.amount + ')';
    }

    public BitcoinUnspentOutputResponse(String txId, int i, BigInteger amount) {
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
