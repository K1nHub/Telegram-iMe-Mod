package com.iMe.storage.data.network.model.request.crypto.wallet_connect;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetParamsForCryptoTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class GetParamsForCryptoTransactionRequest {
    private final String data;
    private final String from;
    private final BigInteger gas;
    private final BigInteger gasPrice;
    private final String networkType;
    private final BigInteger nonce;

    /* renamed from: to */
    private final String f376to;
    private final String value;

    public final String component1() {
        return this.from;
    }

    public final String component2() {
        return this.f376to;
    }

    public final String component3() {
        return this.value;
    }

    public final String component4() {
        return this.data;
    }

    public final BigInteger component5() {
        return this.gas;
    }

    public final BigInteger component6() {
        return this.gasPrice;
    }

    public final BigInteger component7() {
        return this.nonce;
    }

    public final String component8() {
        return this.networkType;
    }

    public final GetParamsForCryptoTransactionRequest copy(String from, String to, String value, String data, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        return new GetParamsForCryptoTransactionRequest(from, to, value, data, bigInteger, bigInteger2, bigInteger3, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetParamsForCryptoTransactionRequest) {
            GetParamsForCryptoTransactionRequest getParamsForCryptoTransactionRequest = (GetParamsForCryptoTransactionRequest) obj;
            return Intrinsics.areEqual(this.from, getParamsForCryptoTransactionRequest.from) && Intrinsics.areEqual(this.f376to, getParamsForCryptoTransactionRequest.f376to) && Intrinsics.areEqual(this.value, getParamsForCryptoTransactionRequest.value) && Intrinsics.areEqual(this.data, getParamsForCryptoTransactionRequest.data) && Intrinsics.areEqual(this.gas, getParamsForCryptoTransactionRequest.gas) && Intrinsics.areEqual(this.gasPrice, getParamsForCryptoTransactionRequest.gasPrice) && Intrinsics.areEqual(this.nonce, getParamsForCryptoTransactionRequest.nonce) && Intrinsics.areEqual(this.networkType, getParamsForCryptoTransactionRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((this.from.hashCode() * 31) + this.f376to.hashCode()) * 31) + this.value.hashCode()) * 31) + this.data.hashCode()) * 31;
        BigInteger bigInteger = this.gas;
        int hashCode2 = (hashCode + (bigInteger == null ? 0 : bigInteger.hashCode())) * 31;
        BigInteger bigInteger2 = this.gasPrice;
        int hashCode3 = (hashCode2 + (bigInteger2 == null ? 0 : bigInteger2.hashCode())) * 31;
        BigInteger bigInteger3 = this.nonce;
        int hashCode4 = (hashCode3 + (bigInteger3 == null ? 0 : bigInteger3.hashCode())) * 31;
        String str = this.networkType;
        return hashCode4 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "GetParamsForCryptoTransactionRequest(from=" + this.from + ", to=" + this.f376to + ", value=" + this.value + ", data=" + this.data + ", gas=" + this.gas + ", gasPrice=" + this.gasPrice + ", nonce=" + this.nonce + ", networkType=" + this.networkType + ')';
    }

    public GetParamsForCryptoTransactionRequest(String from, String to, String value, String data, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        this.from = from;
        this.f376to = to;
        this.value = value;
        this.data = data;
        this.gas = bigInteger;
        this.gasPrice = bigInteger2;
        this.nonce = bigInteger3;
        this.networkType = str;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f376to;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getData() {
        return this.data;
    }

    public final BigInteger getGas() {
        return this.gas;
    }

    public final BigInteger getGasPrice() {
        return this.gasPrice;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
