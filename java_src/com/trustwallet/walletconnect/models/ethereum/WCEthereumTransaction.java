package com.trustwallet.walletconnect.models.ethereum;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCEthereumTransaction.kt */
/* loaded from: classes4.dex */
public final class WCEthereumTransaction {
    private final String data;
    private final String from;
    private final String gas;
    private final String gasLimit;
    private final String gasPrice;
    private final String maxFeePerGas;
    private final String maxPriorityFeePerGas;
    private final String nonce;

    /* renamed from: to */
    private final String f391to;
    private final String value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCEthereumTransaction) {
            WCEthereumTransaction wCEthereumTransaction = (WCEthereumTransaction) obj;
            return Intrinsics.areEqual(this.from, wCEthereumTransaction.from) && Intrinsics.areEqual(this.f391to, wCEthereumTransaction.f391to) && Intrinsics.areEqual(this.nonce, wCEthereumTransaction.nonce) && Intrinsics.areEqual(this.gasPrice, wCEthereumTransaction.gasPrice) && Intrinsics.areEqual(this.maxFeePerGas, wCEthereumTransaction.maxFeePerGas) && Intrinsics.areEqual(this.maxPriorityFeePerGas, wCEthereumTransaction.maxPriorityFeePerGas) && Intrinsics.areEqual(this.gas, wCEthereumTransaction.gas) && Intrinsics.areEqual(this.gasLimit, wCEthereumTransaction.gasLimit) && Intrinsics.areEqual(this.value, wCEthereumTransaction.value) && Intrinsics.areEqual(this.data, wCEthereumTransaction.data);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.from.hashCode() * 31;
        String str = this.f391to;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.nonce;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.gasPrice;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.maxFeePerGas;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.maxPriorityFeePerGas;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.gas;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.gasLimit;
        int hashCode8 = (hashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.value;
        return ((hashCode8 + (str8 != null ? str8.hashCode() : 0)) * 31) + this.data.hashCode();
    }

    public String toString() {
        return "WCEthereumTransaction(from=" + this.from + ", to=" + this.f391to + ", nonce=" + this.nonce + ", gasPrice=" + this.gasPrice + ", maxFeePerGas=" + this.maxFeePerGas + ", maxPriorityFeePerGas=" + this.maxPriorityFeePerGas + ", gas=" + this.gas + ", gasLimit=" + this.gasLimit + ", value=" + this.value + ", data=" + this.data + ')';
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f391to;
    }

    public final String getNonce() {
        return this.nonce;
    }

    public final String getGasPrice() {
        return this.gasPrice;
    }

    public final String getGas() {
        return this.gas;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getData() {
        return this.data;
    }
}
