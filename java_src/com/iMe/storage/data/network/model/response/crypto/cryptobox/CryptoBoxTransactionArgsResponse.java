package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxTransactionArgsResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxTransactionArgsResponse {
    private final long chainId;
    private final String data;
    private final BigInteger gasLimit;
    private final BigInteger gasPrice;
    private final BigInteger nonce;

    /* renamed from: to */
    private final String f325to;
    private final String value;

    public final long component1() {
        return this.chainId;
    }

    public final String component2() {
        return this.f325to;
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

    public final CryptoBoxTransactionArgsResponse copy(long j, String to, BigInteger nonce, BigInteger gasLimit, BigInteger gasPrice, String str, String str2) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        return new CryptoBoxTransactionArgsResponse(j, to, nonce, gasLimit, gasPrice, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxTransactionArgsResponse) {
            CryptoBoxTransactionArgsResponse cryptoBoxTransactionArgsResponse = (CryptoBoxTransactionArgsResponse) obj;
            return this.chainId == cryptoBoxTransactionArgsResponse.chainId && Intrinsics.areEqual(this.f325to, cryptoBoxTransactionArgsResponse.f325to) && Intrinsics.areEqual(this.nonce, cryptoBoxTransactionArgsResponse.nonce) && Intrinsics.areEqual(this.gasLimit, cryptoBoxTransactionArgsResponse.gasLimit) && Intrinsics.areEqual(this.gasPrice, cryptoBoxTransactionArgsResponse.gasPrice) && Intrinsics.areEqual(this.data, cryptoBoxTransactionArgsResponse.data) && Intrinsics.areEqual(this.value, cryptoBoxTransactionArgsResponse.value);
        }
        return false;
    }

    public int hashCode() {
        int m1017m = ((((((((ProfileData$$ExternalSyntheticBackport0.m1017m(this.chainId) * 31) + this.f325to.hashCode()) * 31) + this.nonce.hashCode()) * 31) + this.gasLimit.hashCode()) * 31) + this.gasPrice.hashCode()) * 31;
        String str = this.data;
        int hashCode = (m1017m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.value;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "CryptoBoxTransactionArgsResponse(chainId=" + this.chainId + ", to=" + this.f325to + ", nonce=" + this.nonce + ", gasLimit=" + this.gasLimit + ", gasPrice=" + this.gasPrice + ", data=" + this.data + ", value=" + this.value + ')';
    }

    public CryptoBoxTransactionArgsResponse(long j, String to, BigInteger nonce, BigInteger gasLimit, BigInteger gasPrice, String str, String str2) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        this.chainId = j;
        this.f325to = to;
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
        return this.f325to;
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
