package com.iMe.storage.data.network.model.response.crypto.donations;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DataForDonationTransactionResponse.kt */
/* loaded from: classes3.dex */
public final class DataForDonationTransactionResponse {
    private final String contractAddress;
    private final String feeTokenCode;
    private final String recipientAddress;
    private final TransactionParamsResponse.EVM transactionParams;

    public static /* synthetic */ DataForDonationTransactionResponse copy$default(DataForDonationTransactionResponse dataForDonationTransactionResponse, TransactionParamsResponse.EVM evm, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            evm = dataForDonationTransactionResponse.transactionParams;
        }
        if ((i & 2) != 0) {
            str = dataForDonationTransactionResponse.feeTokenCode;
        }
        if ((i & 4) != 0) {
            str2 = dataForDonationTransactionResponse.contractAddress;
        }
        if ((i & 8) != 0) {
            str3 = dataForDonationTransactionResponse.recipientAddress;
        }
        return dataForDonationTransactionResponse.copy(evm, str, str2, str3);
    }

    public final TransactionParamsResponse.EVM component1() {
        return this.transactionParams;
    }

    public final String component2() {
        return this.feeTokenCode;
    }

    public final String component3() {
        return this.contractAddress;
    }

    public final String component4() {
        return this.recipientAddress;
    }

    public final DataForDonationTransactionResponse copy(TransactionParamsResponse.EVM transactionParams, String feeTokenCode, String contractAddress, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        return new DataForDonationTransactionResponse(transactionParams, feeTokenCode, contractAddress, recipientAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DataForDonationTransactionResponse) {
            DataForDonationTransactionResponse dataForDonationTransactionResponse = (DataForDonationTransactionResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, dataForDonationTransactionResponse.transactionParams) && Intrinsics.areEqual(this.feeTokenCode, dataForDonationTransactionResponse.feeTokenCode) && Intrinsics.areEqual(this.contractAddress, dataForDonationTransactionResponse.contractAddress) && Intrinsics.areEqual(this.recipientAddress, dataForDonationTransactionResponse.recipientAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.transactionParams.hashCode() * 31) + this.feeTokenCode.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.recipientAddress.hashCode();
    }

    public String toString() {
        return "DataForDonationTransactionResponse(transactionParams=" + this.transactionParams + ", feeTokenCode=" + this.feeTokenCode + ", contractAddress=" + this.contractAddress + ", recipientAddress=" + this.recipientAddress + ')';
    }

    public DataForDonationTransactionResponse(TransactionParamsResponse.EVM transactionParams, String feeTokenCode, String contractAddress, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        this.transactionParams = transactionParams;
        this.feeTokenCode = feeTokenCode;
        this.contractAddress = contractAddress;
        this.recipientAddress = recipientAddress;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
        return this.transactionParams;
    }

    public final String getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }

    public final String getRecipientAddress() {
        return this.recipientAddress;
    }
}
