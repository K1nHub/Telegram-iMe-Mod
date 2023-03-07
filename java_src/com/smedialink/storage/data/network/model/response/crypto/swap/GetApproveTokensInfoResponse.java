package com.smedialink.storage.data.network.model.response.crypto.swap;

import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetApproveTokensInfoResponse.kt */
/* loaded from: classes3.dex */
public final class GetApproveTokensInfoResponse {
    private final List<CryptoTokenApprovalQuote> cryptoTokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetApproveTokensInfoResponse copy$default(GetApproveTokensInfoResponse getApproveTokensInfoResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = getApproveTokensInfoResponse.cryptoTokens;
        }
        return getApproveTokensInfoResponse.copy(list);
    }

    public final List<CryptoTokenApprovalQuote> component1() {
        return this.cryptoTokens;
    }

    public final GetApproveTokensInfoResponse copy(List<CryptoTokenApprovalQuote> cryptoTokens) {
        Intrinsics.checkNotNullParameter(cryptoTokens, "cryptoTokens");
        return new GetApproveTokensInfoResponse(cryptoTokens);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetApproveTokensInfoResponse) && Intrinsics.areEqual(this.cryptoTokens, ((GetApproveTokensInfoResponse) obj).cryptoTokens);
    }

    public int hashCode() {
        return this.cryptoTokens.hashCode();
    }

    public String toString() {
        return "GetApproveTokensInfoResponse(cryptoTokens=" + this.cryptoTokens + ')';
    }

    public GetApproveTokensInfoResponse(List<CryptoTokenApprovalQuote> cryptoTokens) {
        Intrinsics.checkNotNullParameter(cryptoTokens, "cryptoTokens");
        this.cryptoTokens = cryptoTokens;
    }

    public final List<CryptoTokenApprovalQuote> getCryptoTokens() {
        return this.cryptoTokens;
    }

    /* compiled from: GetApproveTokensInfoResponse.kt */
    /* loaded from: classes3.dex */
    public static final class CryptoTokenApprovalQuote {
        private final String contractAddress;
        private final String cryptoTokenCode;
        private final String feeTokenCode;
        private final String lastErrorMessage;
        private final String spenderContractAddress;
        private final String status;
        private final TransactionParamsResponse transactionParams;
        private final String value;

        public final String component1() {
            return this.cryptoTokenCode;
        }

        public final String component2() {
            return this.contractAddress;
        }

        public final String component3() {
            return this.spenderContractAddress;
        }

        public final String component4() {
            return this.status;
        }

        public final String component5() {
            return this.value;
        }

        public final String component6() {
            return this.feeTokenCode;
        }

        public final TransactionParamsResponse component7() {
            return this.transactionParams;
        }

        public final String component8() {
            return this.lastErrorMessage;
        }

        public final CryptoTokenApprovalQuote copy(String cryptoTokenCode, String contractAddress, String spenderContractAddress, String status, String value, String feeTokenCode, TransactionParamsResponse transactionParamsResponse, String str) {
            Intrinsics.checkNotNullParameter(cryptoTokenCode, "cryptoTokenCode");
            Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
            Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            return new CryptoTokenApprovalQuote(cryptoTokenCode, contractAddress, spenderContractAddress, status, value, feeTokenCode, transactionParamsResponse, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CryptoTokenApprovalQuote) {
                CryptoTokenApprovalQuote cryptoTokenApprovalQuote = (CryptoTokenApprovalQuote) obj;
                return Intrinsics.areEqual(this.cryptoTokenCode, cryptoTokenApprovalQuote.cryptoTokenCode) && Intrinsics.areEqual(this.contractAddress, cryptoTokenApprovalQuote.contractAddress) && Intrinsics.areEqual(this.spenderContractAddress, cryptoTokenApprovalQuote.spenderContractAddress) && Intrinsics.areEqual(this.status, cryptoTokenApprovalQuote.status) && Intrinsics.areEqual(this.value, cryptoTokenApprovalQuote.value) && Intrinsics.areEqual(this.feeTokenCode, cryptoTokenApprovalQuote.feeTokenCode) && Intrinsics.areEqual(this.transactionParams, cryptoTokenApprovalQuote.transactionParams) && Intrinsics.areEqual(this.lastErrorMessage, cryptoTokenApprovalQuote.lastErrorMessage);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((((((((((this.cryptoTokenCode.hashCode() * 31) + this.contractAddress.hashCode()) * 31) + this.spenderContractAddress.hashCode()) * 31) + this.status.hashCode()) * 31) + this.value.hashCode()) * 31) + this.feeTokenCode.hashCode()) * 31;
            TransactionParamsResponse transactionParamsResponse = this.transactionParams;
            int hashCode2 = (hashCode + (transactionParamsResponse == null ? 0 : transactionParamsResponse.hashCode())) * 31;
            String str = this.lastErrorMessage;
            return hashCode2 + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            return "CryptoTokenApprovalQuote(cryptoTokenCode=" + this.cryptoTokenCode + ", contractAddress=" + this.contractAddress + ", spenderContractAddress=" + this.spenderContractAddress + ", status=" + this.status + ", value=" + this.value + ", feeTokenCode=" + this.feeTokenCode + ", transactionParams=" + this.transactionParams + ", lastErrorMessage=" + ((Object) this.lastErrorMessage) + ')';
        }

        public CryptoTokenApprovalQuote(String cryptoTokenCode, String contractAddress, String spenderContractAddress, String status, String value, String feeTokenCode, TransactionParamsResponse transactionParamsResponse, String str) {
            Intrinsics.checkNotNullParameter(cryptoTokenCode, "cryptoTokenCode");
            Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
            Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            this.cryptoTokenCode = cryptoTokenCode;
            this.contractAddress = contractAddress;
            this.spenderContractAddress = spenderContractAddress;
            this.status = status;
            this.value = value;
            this.feeTokenCode = feeTokenCode;
            this.transactionParams = transactionParamsResponse;
            this.lastErrorMessage = str;
        }

        public final String getCryptoTokenCode() {
            return this.cryptoTokenCode;
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        public final String getSpenderContractAddress() {
            return this.spenderContractAddress;
        }

        public final String getStatus() {
            return this.status;
        }

        public final String getValue() {
            return this.value;
        }

        public final String getFeeTokenCode() {
            return this.feeTokenCode;
        }

        public final TransactionParamsResponse getTransactionParams() {
            return this.transactionParams;
        }

        public final String getLastErrorMessage() {
            return this.lastErrorMessage;
        }
    }
}
