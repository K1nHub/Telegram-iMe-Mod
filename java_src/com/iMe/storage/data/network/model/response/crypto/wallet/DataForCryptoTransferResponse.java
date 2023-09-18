package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: DataForCryptoTransferResponse.kt */
/* loaded from: classes4.dex */
public final class DataForCryptoTransferResponse {
    private final String contractAddress;
    private final String feeTokenCode;
    private final TransactionParamsResponse transactionParams;

    public static /* synthetic */ DataForCryptoTransferResponse copy$default(DataForCryptoTransferResponse dataForCryptoTransferResponse, TransactionParamsResponse transactionParamsResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionParamsResponse = dataForCryptoTransferResponse.transactionParams;
        }
        if ((i & 2) != 0) {
            str = dataForCryptoTransferResponse.feeTokenCode;
        }
        if ((i & 4) != 0) {
            str2 = dataForCryptoTransferResponse.contractAddress;
        }
        return dataForCryptoTransferResponse.copy(transactionParamsResponse, str, str2);
    }

    public final TransactionParamsResponse component1() {
        return this.transactionParams;
    }

    public final String component2() {
        return this.feeTokenCode;
    }

    public final String component3() {
        return this.contractAddress;
    }

    public final DataForCryptoTransferResponse copy(TransactionParamsResponse transactionParams, String feeTokenCode, String str) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        return new DataForCryptoTransferResponse(transactionParams, feeTokenCode, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DataForCryptoTransferResponse) {
            DataForCryptoTransferResponse dataForCryptoTransferResponse = (DataForCryptoTransferResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, dataForCryptoTransferResponse.transactionParams) && Intrinsics.areEqual(this.feeTokenCode, dataForCryptoTransferResponse.feeTokenCode) && Intrinsics.areEqual(this.contractAddress, dataForCryptoTransferResponse.contractAddress);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.transactionParams.hashCode() * 31) + this.feeTokenCode.hashCode()) * 31;
        String str = this.contractAddress;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "DataForCryptoTransferResponse(transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ", contractAddress=" + this.contractAddress + ')';
    }

    public DataForCryptoTransferResponse(TransactionParamsResponse transactionParams, String feeTokenCode, String str) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        this.transactionParams = transactionParams;
        this.feeTokenCode = feeTokenCode;
        this.contractAddress = str;
    }

    public final TransactionParamsResponse getTransactionParams() {
        return this.transactionParams;
    }

    public final String getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }
}
