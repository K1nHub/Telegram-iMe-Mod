package com.iMe.storage.data.network.model.response.crypto.wallet_connect;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ParamsForCryptoTransactionResponse.kt */
/* loaded from: classes3.dex */
public final class ParamsForCryptoTransactionResponse {
    private final String data;
    private final String feeTokenCode;
    private final String from;
    private final String networkType;

    /* renamed from: to */
    private final String f305to;
    private final TransactionParamsResponse.EVM transactionParams;
    private final String value;

    public static /* synthetic */ ParamsForCryptoTransactionResponse copy$default(ParamsForCryptoTransactionResponse paramsForCryptoTransactionResponse, String str, String str2, String str3, String str4, TransactionParamsResponse.EVM evm, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = paramsForCryptoTransactionResponse.from;
        }
        if ((i & 2) != 0) {
            str2 = paramsForCryptoTransactionResponse.f305to;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = paramsForCryptoTransactionResponse.value;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = paramsForCryptoTransactionResponse.data;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            evm = paramsForCryptoTransactionResponse.transactionParams;
        }
        TransactionParamsResponse.EVM evm2 = evm;
        if ((i & 32) != 0) {
            str5 = paramsForCryptoTransactionResponse.networkType;
        }
        String str10 = str5;
        if ((i & 64) != 0) {
            str6 = paramsForCryptoTransactionResponse.feeTokenCode;
        }
        return paramsForCryptoTransactionResponse.copy(str, str7, str8, str9, evm2, str10, str6);
    }

    public final String component1() {
        return this.from;
    }

    public final String component2() {
        return this.f305to;
    }

    public final String component3() {
        return this.value;
    }

    public final String component4() {
        return this.data;
    }

    public final TransactionParamsResponse.EVM component5() {
        return this.transactionParams;
    }

    public final String component6() {
        return this.networkType;
    }

    public final String component7() {
        return this.feeTokenCode;
    }

    public final ParamsForCryptoTransactionResponse copy(String from, String to, String value, String data, TransactionParamsResponse.EVM transactionParams, String networkType, String feeTokenCode) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        return new ParamsForCryptoTransactionResponse(from, to, value, data, transactionParams, networkType, feeTokenCode);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParamsForCryptoTransactionResponse) {
            ParamsForCryptoTransactionResponse paramsForCryptoTransactionResponse = (ParamsForCryptoTransactionResponse) obj;
            return Intrinsics.areEqual(this.from, paramsForCryptoTransactionResponse.from) && Intrinsics.areEqual(this.f305to, paramsForCryptoTransactionResponse.f305to) && Intrinsics.areEqual(this.value, paramsForCryptoTransactionResponse.value) && Intrinsics.areEqual(this.data, paramsForCryptoTransactionResponse.data) && Intrinsics.areEqual(this.transactionParams, paramsForCryptoTransactionResponse.transactionParams) && Intrinsics.areEqual(this.networkType, paramsForCryptoTransactionResponse.networkType) && Intrinsics.areEqual(this.feeTokenCode, paramsForCryptoTransactionResponse.feeTokenCode);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.from.hashCode() * 31) + this.f305to.hashCode()) * 31) + this.value.hashCode()) * 31) + this.data.hashCode()) * 31) + this.transactionParams.hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.feeTokenCode.hashCode();
    }

    public String toString() {
        return "ParamsForCryptoTransactionResponse(from=" + this.from + ", to=" + this.f305to + ", value=" + this.value + ", data=" + this.data + ", transactionParams=" + this.transactionParams + ", networkType=" + this.networkType + ", feeTokenCode=" + this.feeTokenCode + ')';
    }

    public ParamsForCryptoTransactionResponse(String from, String to, String value, String data, TransactionParamsResponse.EVM transactionParams, String networkType, String feeTokenCode) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        this.from = from;
        this.f305to = to;
        this.value = value;
        this.data = data;
        this.transactionParams = transactionParams;
        this.networkType = networkType;
        this.feeTokenCode = feeTokenCode;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f305to;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getData() {
        return this.data;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
        return this.transactionParams;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getFeeTokenCode() {
        return this.feeTokenCode;
    }
}
