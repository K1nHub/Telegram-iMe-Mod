package com.iMe.storage.data.network.model.response.crypto.cancel;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetCancelTransactionDataResponse.kt */
/* loaded from: classes4.dex */
public final class CancelTransactionDataResponse {
    private final TokenDetailedResponse feeToken;
    private final TransactionParamsResponse.EVM transactionParams;
    private final String value;

    public static /* synthetic */ CancelTransactionDataResponse copy$default(CancelTransactionDataResponse cancelTransactionDataResponse, TransactionParamsResponse.EVM evm, String str, TokenDetailedResponse tokenDetailedResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            evm = cancelTransactionDataResponse.transactionParams;
        }
        if ((i & 2) != 0) {
            str = cancelTransactionDataResponse.value;
        }
        if ((i & 4) != 0) {
            tokenDetailedResponse = cancelTransactionDataResponse.feeToken;
        }
        return cancelTransactionDataResponse.copy(evm, str, tokenDetailedResponse);
    }

    public final TransactionParamsResponse.EVM component1() {
        return this.transactionParams;
    }

    public final String component2() {
        return this.value;
    }

    public final TokenDetailedResponse component3() {
        return this.feeToken;
    }

    public final CancelTransactionDataResponse copy(TransactionParamsResponse.EVM transactionParams, String value, TokenDetailedResponse feeToken) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        return new CancelTransactionDataResponse(transactionParams, value, feeToken);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CancelTransactionDataResponse) {
            CancelTransactionDataResponse cancelTransactionDataResponse = (CancelTransactionDataResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, cancelTransactionDataResponse.transactionParams) && Intrinsics.areEqual(this.value, cancelTransactionDataResponse.value) && Intrinsics.areEqual(this.feeToken, cancelTransactionDataResponse.feeToken);
        }
        return false;
    }

    public int hashCode() {
        return (((this.transactionParams.hashCode() * 31) + this.value.hashCode()) * 31) + this.feeToken.hashCode();
    }

    public String toString() {
        return "CancelTransactionDataResponse(transactionParams=" + this.transactionParams + ", value=" + this.value + ", feeToken=" + this.feeToken + ')';
    }

    public CancelTransactionDataResponse(TransactionParamsResponse.EVM transactionParams, String value, TokenDetailedResponse feeToken) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        this.transactionParams = transactionParams;
        this.value = value;
        this.feeToken = feeToken;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
        return this.transactionParams;
    }

    public final String getValue() {
        return this.value;
    }

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }
}
