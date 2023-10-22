package com.iMe.storage.data.network.model.response.crypto.wallet_connect;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ParamsForCryptoTransactionResponse.kt */
/* loaded from: classes3.dex */
public final class ParamsForCryptoTransactionResponse {
    private final String data;
    private final TokenDetailedResponse feeToken;
    private final String from;
    private final String networkType;

    /* renamed from: to */
    private final String f331to;
    private final TransactionParamsResponse.EVM transactionParams;
    private final String value;

    public static /* synthetic */ ParamsForCryptoTransactionResponse copy$default(ParamsForCryptoTransactionResponse paramsForCryptoTransactionResponse, String str, String str2, String str3, String str4, TransactionParamsResponse.EVM evm, String str5, TokenDetailedResponse tokenDetailedResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            str = paramsForCryptoTransactionResponse.from;
        }
        if ((i & 2) != 0) {
            str2 = paramsForCryptoTransactionResponse.f331to;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = paramsForCryptoTransactionResponse.value;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = paramsForCryptoTransactionResponse.data;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            evm = paramsForCryptoTransactionResponse.transactionParams;
        }
        TransactionParamsResponse.EVM evm2 = evm;
        if ((i & 32) != 0) {
            str5 = paramsForCryptoTransactionResponse.networkType;
        }
        String str9 = str5;
        if ((i & 64) != 0) {
            tokenDetailedResponse = paramsForCryptoTransactionResponse.feeToken;
        }
        return paramsForCryptoTransactionResponse.copy(str, str6, str7, str8, evm2, str9, tokenDetailedResponse);
    }

    public final String component1() {
        return this.from;
    }

    public final String component2() {
        return this.f331to;
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

    public final TokenDetailedResponse component7() {
        return this.feeToken;
    }

    public final ParamsForCryptoTransactionResponse copy(String from, String to, String value, String data, TransactionParamsResponse.EVM transactionParams, String networkType, TokenDetailedResponse feeToken) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        return new ParamsForCryptoTransactionResponse(from, to, value, data, transactionParams, networkType, feeToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParamsForCryptoTransactionResponse) {
            ParamsForCryptoTransactionResponse paramsForCryptoTransactionResponse = (ParamsForCryptoTransactionResponse) obj;
            return Intrinsics.areEqual(this.from, paramsForCryptoTransactionResponse.from) && Intrinsics.areEqual(this.f331to, paramsForCryptoTransactionResponse.f331to) && Intrinsics.areEqual(this.value, paramsForCryptoTransactionResponse.value) && Intrinsics.areEqual(this.data, paramsForCryptoTransactionResponse.data) && Intrinsics.areEqual(this.transactionParams, paramsForCryptoTransactionResponse.transactionParams) && Intrinsics.areEqual(this.networkType, paramsForCryptoTransactionResponse.networkType) && Intrinsics.areEqual(this.feeToken, paramsForCryptoTransactionResponse.feeToken);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.from.hashCode() * 31) + this.f331to.hashCode()) * 31) + this.value.hashCode()) * 31) + this.data.hashCode()) * 31) + this.transactionParams.hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.feeToken.hashCode();
    }

    public String toString() {
        return "ParamsForCryptoTransactionResponse(from=" + this.from + ", to=" + this.f331to + ", value=" + this.value + ", data=" + this.data + ", transactionParams=" + this.transactionParams + ", networkType=" + this.networkType + ", feeToken=" + this.feeToken + ')';
    }

    public ParamsForCryptoTransactionResponse(String from, String to, String value, String data, TransactionParamsResponse.EVM transactionParams, String networkType, TokenDetailedResponse feeToken) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        this.from = from;
        this.f331to = to;
        this.value = value;
        this.data = data;
        this.transactionParams = transactionParams;
        this.networkType = networkType;
        this.feeToken = feeToken;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f331to;
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

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }
}
