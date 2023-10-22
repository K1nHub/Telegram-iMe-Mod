package com.iMe.storage.data.network.model.response.crypto.donations;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DataForDonationTransactionResponse.kt */
/* loaded from: classes3.dex */
public final class DataForDonationTransactionResponse {
    private final TokenDetailedResponse feeToken;
    private final String recipientAddress;
    private final TokenDetailedResponse token;
    private final TransactionParamsResponse.EVM transactionParams;

    public static /* synthetic */ DataForDonationTransactionResponse copy$default(DataForDonationTransactionResponse dataForDonationTransactionResponse, TransactionParamsResponse.EVM evm, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            evm = dataForDonationTransactionResponse.transactionParams;
        }
        if ((i & 2) != 0) {
            tokenDetailedResponse = dataForDonationTransactionResponse.token;
        }
        if ((i & 4) != 0) {
            tokenDetailedResponse2 = dataForDonationTransactionResponse.feeToken;
        }
        if ((i & 8) != 0) {
            str = dataForDonationTransactionResponse.recipientAddress;
        }
        return dataForDonationTransactionResponse.copy(evm, tokenDetailedResponse, tokenDetailedResponse2, str);
    }

    public final TransactionParamsResponse.EVM component1() {
        return this.transactionParams;
    }

    public final TokenDetailedResponse component2() {
        return this.token;
    }

    public final TokenDetailedResponse component3() {
        return this.feeToken;
    }

    public final String component4() {
        return this.recipientAddress;
    }

    public final DataForDonationTransactionResponse copy(TransactionParamsResponse.EVM transactionParams, TokenDetailedResponse token, TokenDetailedResponse feeToken, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        return new DataForDonationTransactionResponse(transactionParams, token, feeToken, recipientAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DataForDonationTransactionResponse) {
            DataForDonationTransactionResponse dataForDonationTransactionResponse = (DataForDonationTransactionResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, dataForDonationTransactionResponse.transactionParams) && Intrinsics.areEqual(this.token, dataForDonationTransactionResponse.token) && Intrinsics.areEqual(this.feeToken, dataForDonationTransactionResponse.feeToken) && Intrinsics.areEqual(this.recipientAddress, dataForDonationTransactionResponse.recipientAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.transactionParams.hashCode() * 31) + this.token.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + this.recipientAddress.hashCode();
    }

    public String toString() {
        return "DataForDonationTransactionResponse(transactionParams=" + this.transactionParams + ", token=" + this.token + ", feeToken=" + this.feeToken + ", recipientAddress=" + this.recipientAddress + ')';
    }

    public DataForDonationTransactionResponse(TransactionParamsResponse.EVM transactionParams, TokenDetailedResponse token, TokenDetailedResponse feeToken, String recipientAddress) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
        this.transactionParams = transactionParams;
        this.token = token;
        this.feeToken = feeToken;
        this.recipientAddress = recipientAddress;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }

    public final String getRecipientAddress() {
        return this.recipientAddress;
    }
}
