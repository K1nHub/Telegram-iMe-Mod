package com.iMe.storage.data.network.model.response.crypto.cancel;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetCancelTransactionDataResponse.kt */
/* loaded from: classes3.dex */
public final class GetCancelTransactionDataResponse {
    private final String feeTokenCode;
    private final TransactionParamsResponse.EVM transactionParams;
    private final String value;

    public static /* synthetic */ GetCancelTransactionDataResponse copy$default(GetCancelTransactionDataResponse getCancelTransactionDataResponse, TransactionParamsResponse.EVM evm, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            evm = getCancelTransactionDataResponse.transactionParams;
        }
        if ((i & 2) != 0) {
            str = getCancelTransactionDataResponse.feeTokenCode;
        }
        if ((i & 4) != 0) {
            str2 = getCancelTransactionDataResponse.value;
        }
        return getCancelTransactionDataResponse.copy(evm, str, str2);
    }

    public final TransactionParamsResponse.EVM component1() {
        return this.transactionParams;
    }

    public final String component2() {
        return this.feeTokenCode;
    }

    public final String component3() {
        return this.value;
    }

    public final GetCancelTransactionDataResponse copy(TransactionParamsResponse.EVM transactionParams, String feeTokenCode, String value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(value, "value");
        return new GetCancelTransactionDataResponse(transactionParams, feeTokenCode, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetCancelTransactionDataResponse) {
            GetCancelTransactionDataResponse getCancelTransactionDataResponse = (GetCancelTransactionDataResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, getCancelTransactionDataResponse.transactionParams) && Intrinsics.areEqual(this.feeTokenCode, getCancelTransactionDataResponse.feeTokenCode) && Intrinsics.areEqual(this.value, getCancelTransactionDataResponse.value);
        }
        return false;
    }

    public int hashCode() {
        return (((this.transactionParams.hashCode() * 31) + this.feeTokenCode.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return "GetCancelTransactionDataResponse(transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ", value=" + this.value + ')';
    }

    public GetCancelTransactionDataResponse(TransactionParamsResponse.EVM transactionParams, String feeTokenCode, String value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(value, "value");
        this.transactionParams = transactionParams;
        this.feeTokenCode = feeTokenCode;
        this.value = value;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
        return this.transactionParams;
    }

    public final String getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getValue() {
        return this.value;
    }
}
