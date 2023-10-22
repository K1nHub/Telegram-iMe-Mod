package com.iMe.storage.data.network.model.response.crypto.swap;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensApprovalInfoResponse.kt */
/* loaded from: classes3.dex */
public final class TokensApprovalInfoResponse {
    private final List<ApprovalInfoResponse> approvalInfo;
    private final String defiProtocol;
    private final TokenDetailedResponse feeToken;
    private final String spenderContractAddress;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TokensApprovalInfoResponse copy$default(TokensApprovalInfoResponse tokensApprovalInfoResponse, List list, TokenDetailedResponse tokenDetailedResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tokensApprovalInfoResponse.approvalInfo;
        }
        if ((i & 2) != 0) {
            tokenDetailedResponse = tokensApprovalInfoResponse.feeToken;
        }
        if ((i & 4) != 0) {
            str = tokensApprovalInfoResponse.defiProtocol;
        }
        if ((i & 8) != 0) {
            str2 = tokensApprovalInfoResponse.spenderContractAddress;
        }
        return tokensApprovalInfoResponse.copy(list, tokenDetailedResponse, str, str2);
    }

    public final List<ApprovalInfoResponse> component1() {
        return this.approvalInfo;
    }

    public final TokenDetailedResponse component2() {
        return this.feeToken;
    }

    public final String component3() {
        return this.defiProtocol;
    }

    public final String component4() {
        return this.spenderContractAddress;
    }

    public final TokensApprovalInfoResponse copy(List<ApprovalInfoResponse> approvalInfo, TokenDetailedResponse feeToken, String defiProtocol, String spenderContractAddress) {
        Intrinsics.checkNotNullParameter(approvalInfo, "approvalInfo");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
        return new TokensApprovalInfoResponse(approvalInfo, feeToken, defiProtocol, spenderContractAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokensApprovalInfoResponse) {
            TokensApprovalInfoResponse tokensApprovalInfoResponse = (TokensApprovalInfoResponse) obj;
            return Intrinsics.areEqual(this.approvalInfo, tokensApprovalInfoResponse.approvalInfo) && Intrinsics.areEqual(this.feeToken, tokensApprovalInfoResponse.feeToken) && Intrinsics.areEqual(this.defiProtocol, tokensApprovalInfoResponse.defiProtocol) && Intrinsics.areEqual(this.spenderContractAddress, tokensApprovalInfoResponse.spenderContractAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.approvalInfo.hashCode() * 31) + this.feeToken.hashCode()) * 31) + this.defiProtocol.hashCode()) * 31) + this.spenderContractAddress.hashCode();
    }

    public String toString() {
        return "TokensApprovalInfoResponse(approvalInfo=" + this.approvalInfo + ", feeToken=" + this.feeToken + ", defiProtocol=" + this.defiProtocol + ", spenderContractAddress=" + this.spenderContractAddress + ')';
    }

    public TokensApprovalInfoResponse(List<ApprovalInfoResponse> approvalInfo, TokenDetailedResponse feeToken, String defiProtocol, String spenderContractAddress) {
        Intrinsics.checkNotNullParameter(approvalInfo, "approvalInfo");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
        this.approvalInfo = approvalInfo;
        this.feeToken = feeToken;
        this.defiProtocol = defiProtocol;
        this.spenderContractAddress = spenderContractAddress;
    }

    public final List<ApprovalInfoResponse> getApprovalInfo() {
        return this.approvalInfo;
    }

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final String getSpenderContractAddress() {
        return this.spenderContractAddress;
    }

    /* compiled from: TokensApprovalInfoResponse.kt */
    /* loaded from: classes3.dex */
    public static final class ApprovalInfoResponse {
        private final String lastErrorMessage;
        private final String status;
        private final TokenDetailedResponse token;
        private final TransactionParamsResponse.EVM transactionParams;
        private final String value;

        public static /* synthetic */ ApprovalInfoResponse copy$default(ApprovalInfoResponse approvalInfoResponse, TransactionParamsResponse.EVM evm, TokenDetailedResponse tokenDetailedResponse, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                evm = approvalInfoResponse.transactionParams;
            }
            if ((i & 2) != 0) {
                tokenDetailedResponse = approvalInfoResponse.token;
            }
            TokenDetailedResponse tokenDetailedResponse2 = tokenDetailedResponse;
            if ((i & 4) != 0) {
                str = approvalInfoResponse.status;
            }
            String str4 = str;
            if ((i & 8) != 0) {
                str2 = approvalInfoResponse.value;
            }
            String str5 = str2;
            if ((i & 16) != 0) {
                str3 = approvalInfoResponse.lastErrorMessage;
            }
            return approvalInfoResponse.copy(evm, tokenDetailedResponse2, str4, str5, str3);
        }

        public final TransactionParamsResponse.EVM component1() {
            return this.transactionParams;
        }

        public final TokenDetailedResponse component2() {
            return this.token;
        }

        public final String component3() {
            return this.status;
        }

        public final String component4() {
            return this.value;
        }

        public final String component5() {
            return this.lastErrorMessage;
        }

        public final ApprovalInfoResponse copy(TransactionParamsResponse.EVM evm, TokenDetailedResponse token, String status, String value, String str) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            return new ApprovalInfoResponse(evm, token, status, value, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ApprovalInfoResponse) {
                ApprovalInfoResponse approvalInfoResponse = (ApprovalInfoResponse) obj;
                return Intrinsics.areEqual(this.transactionParams, approvalInfoResponse.transactionParams) && Intrinsics.areEqual(this.token, approvalInfoResponse.token) && Intrinsics.areEqual(this.status, approvalInfoResponse.status) && Intrinsics.areEqual(this.value, approvalInfoResponse.value) && Intrinsics.areEqual(this.lastErrorMessage, approvalInfoResponse.lastErrorMessage);
            }
            return false;
        }

        public int hashCode() {
            TransactionParamsResponse.EVM evm = this.transactionParams;
            int hashCode = (((((((evm == null ? 0 : evm.hashCode()) * 31) + this.token.hashCode()) * 31) + this.status.hashCode()) * 31) + this.value.hashCode()) * 31;
            String str = this.lastErrorMessage;
            return hashCode + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            return "ApprovalInfoResponse(transactionParams=" + this.transactionParams + ", token=" + this.token + ", status=" + this.status + ", value=" + this.value + ", lastErrorMessage=" + this.lastErrorMessage + ')';
        }

        public ApprovalInfoResponse(TransactionParamsResponse.EVM evm, TokenDetailedResponse token, String status, String value, String str) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(value, "value");
            this.transactionParams = evm;
            this.token = token;
            this.status = status;
            this.value = value;
            this.lastErrorMessage = str;
        }

        public final TransactionParamsResponse.EVM getTransactionParams() {
            return this.transactionParams;
        }

        public final TokenDetailedResponse getToken() {
            return this.token;
        }

        public final String getStatus() {
            return this.status;
        }

        public final String getValue() {
            return this.value;
        }

        public final String getLastErrorMessage() {
            return this.lastErrorMessage;
        }
    }
}
