package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTransactionArgs.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTransactionArgs implements TransactionArgs {
    private final long chainId;
    private final String data;
    private final BigInteger gasLimit;
    private final BigInteger gasPrice;
    private final BigInteger nonce;

    /* renamed from: to */
    private final String f350to;
    private final String value;

    public final long component1() {
        return this.chainId;
    }

    public final String component2() {
        return this.f350to;
    }

    public final BigInteger component3() {
        return this.nonce;
    }

    public final BigInteger component4() {
        return this.gasLimit;
    }

    public final BigInteger component5() {
        return this.gasPrice;
    }

    public final String component6() {
        return this.data;
    }

    public final String component7() {
        return this.value;
    }

    public final CryptoBoxTransactionArgs copy(long j, String to, BigInteger nonce, BigInteger gasLimit, BigInteger gasPrice, String str, String str2) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        return new CryptoBoxTransactionArgs(j, to, nonce, gasLimit, gasPrice, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTransactionArgs) {
            CryptoBoxTransactionArgs cryptoBoxTransactionArgs = (CryptoBoxTransactionArgs) obj;
            return this.chainId == cryptoBoxTransactionArgs.chainId && Intrinsics.areEqual(this.f350to, cryptoBoxTransactionArgs.f350to) && Intrinsics.areEqual(this.nonce, cryptoBoxTransactionArgs.nonce) && Intrinsics.areEqual(this.gasLimit, cryptoBoxTransactionArgs.gasLimit) && Intrinsics.areEqual(this.gasPrice, cryptoBoxTransactionArgs.gasPrice) && Intrinsics.areEqual(this.data, cryptoBoxTransactionArgs.data) && Intrinsics.areEqual(this.value, cryptoBoxTransactionArgs.value);
        }
        return false;
    }

    public int hashCode() {
        int m1017m = ((((((((ProfileData$$ExternalSyntheticBackport0.m1017m(this.chainId) * 31) + this.f350to.hashCode()) * 31) + this.nonce.hashCode()) * 31) + this.gasLimit.hashCode()) * 31) + this.gasPrice.hashCode()) * 31;
        String str = this.data;
        int hashCode = (m1017m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.value;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "CryptoBoxTransactionArgs(chainId=" + this.chainId + ", to=" + this.f350to + ", nonce=" + this.nonce + ", gasLimit=" + this.gasLimit + ", gasPrice=" + this.gasPrice + ", data=" + this.data + ", value=" + this.value + ')';
    }

    public CryptoBoxTransactionArgs(long j, String to, BigInteger nonce, BigInteger gasLimit, BigInteger gasPrice, String str, String str2) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        this.chainId = j;
        this.f350to = to;
        this.nonce = nonce;
        this.gasLimit = gasLimit;
        this.gasPrice = gasPrice;
        this.data = str;
        this.value = str2;
    }

    public final long getChainId() {
        return this.chainId;
    }

    public final String getTo() {
        return this.f350to;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final BigInteger getGasLimit() {
        return this.gasLimit;
    }

    public final BigInteger getGasPrice() {
        return this.gasPrice;
    }

    public final String getData() {
        return this.data;
    }

    public final String getValue() {
        return this.value;
    }
}
