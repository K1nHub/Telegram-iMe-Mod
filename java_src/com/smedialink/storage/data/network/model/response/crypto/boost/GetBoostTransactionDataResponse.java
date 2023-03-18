package com.smedialink.storage.data.network.model.response.crypto.boost;

import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import java.math.BigDecimal;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetBoostTransactionDataResponse.kt */
/* loaded from: classes3.dex */
public final class GetBoostTransactionDataResponse {
    private final String feeTokenCode;
    private final String networkType;
    private final TransactionMethodParamsResponse oldTransactionData;
    private final TransactionParamsResponse transactionParams;

    public static /* synthetic */ GetBoostTransactionDataResponse copy$default(GetBoostTransactionDataResponse getBoostTransactionDataResponse, TransactionParamsResponse transactionParamsResponse, TransactionMethodParamsResponse transactionMethodParamsResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            transactionParamsResponse = getBoostTransactionDataResponse.transactionParams;
        }
        if ((i & 2) != 0) {
            transactionMethodParamsResponse = getBoostTransactionDataResponse.oldTransactionData;
        }
        if ((i & 4) != 0) {
            str = getBoostTransactionDataResponse.feeTokenCode;
        }
        if ((i & 8) != 0) {
            str2 = getBoostTransactionDataResponse.networkType;
        }
        return getBoostTransactionDataResponse.copy(transactionParamsResponse, transactionMethodParamsResponse, str, str2);
    }

    public final TransactionParamsResponse component1() {
        return this.transactionParams;
    }

    public final TransactionMethodParamsResponse component2() {
        return this.oldTransactionData;
    }

    public final String component3() {
        return this.feeTokenCode;
    }

    public final String component4() {
        return this.networkType;
    }

    public final GetBoostTransactionDataResponse copy(TransactionParamsResponse transactionParams, TransactionMethodParamsResponse oldTransactionData, String feeTokenCode, String networkType) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(oldTransactionData, "oldTransactionData");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetBoostTransactionDataResponse(transactionParams, oldTransactionData, feeTokenCode, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetBoostTransactionDataResponse) {
            GetBoostTransactionDataResponse getBoostTransactionDataResponse = (GetBoostTransactionDataResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, getBoostTransactionDataResponse.transactionParams) && Intrinsics.areEqual(this.oldTransactionData, getBoostTransactionDataResponse.oldTransactionData) && Intrinsics.areEqual(this.feeTokenCode, getBoostTransactionDataResponse.feeTokenCode) && Intrinsics.areEqual(this.networkType, getBoostTransactionDataResponse.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.transactionParams.hashCode() * 31) + this.oldTransactionData.hashCode()) * 31) + this.feeTokenCode.hashCode()) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "GetBoostTransactionDataResponse(transactionParams=" + this.transactionParams + ", oldTransactionData=" + this.oldTransactionData + ", feeTokenCode=" + this.feeTokenCode + ", networkType=" + this.networkType + ')';
    }

    public GetBoostTransactionDataResponse(TransactionParamsResponse transactionParams, TransactionMethodParamsResponse oldTransactionData, String feeTokenCode, String networkType) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(oldTransactionData, "oldTransactionData");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.transactionParams = transactionParams;
        this.oldTransactionData = oldTransactionData;
        this.feeTokenCode = feeTokenCode;
        this.networkType = networkType;
    }

    public final TransactionParamsResponse getTransactionParams() {
        return this.transactionParams;
    }

    public final TransactionMethodParamsResponse getOldTransactionData() {
        return this.oldTransactionData;
    }

    public final String getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    /* compiled from: GetBoostTransactionDataResponse.kt */
    /* loaded from: classes3.dex */
    public static final class TransactionMethodParamsResponse {
        private final ApproveMethodParamsResponse approveMethodParams;
        private final String ethereumMethod;
        private final SwapMethodParamsResponse swapMethodParams;
        private final TransferMethodParamsResponse transferMethodParams;

        public static /* synthetic */ TransactionMethodParamsResponse copy$default(TransactionMethodParamsResponse transactionMethodParamsResponse, String str, TransferMethodParamsResponse transferMethodParamsResponse, SwapMethodParamsResponse swapMethodParamsResponse, ApproveMethodParamsResponse approveMethodParamsResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                str = transactionMethodParamsResponse.ethereumMethod;
            }
            if ((i & 2) != 0) {
                transferMethodParamsResponse = transactionMethodParamsResponse.transferMethodParams;
            }
            if ((i & 4) != 0) {
                swapMethodParamsResponse = transactionMethodParamsResponse.swapMethodParams;
            }
            if ((i & 8) != 0) {
                approveMethodParamsResponse = transactionMethodParamsResponse.approveMethodParams;
            }
            return transactionMethodParamsResponse.copy(str, transferMethodParamsResponse, swapMethodParamsResponse, approveMethodParamsResponse);
        }

        public final String component1() {
            return this.ethereumMethod;
        }

        public final TransferMethodParamsResponse component2() {
            return this.transferMethodParams;
        }

        public final SwapMethodParamsResponse component3() {
            return this.swapMethodParams;
        }

        public final ApproveMethodParamsResponse component4() {
            return this.approveMethodParams;
        }

        public final TransactionMethodParamsResponse copy(String ethereumMethod, TransferMethodParamsResponse transferMethodParamsResponse, SwapMethodParamsResponse swapMethodParamsResponse, ApproveMethodParamsResponse approveMethodParamsResponse) {
            Intrinsics.checkNotNullParameter(ethereumMethod, "ethereumMethod");
            return new TransactionMethodParamsResponse(ethereumMethod, transferMethodParamsResponse, swapMethodParamsResponse, approveMethodParamsResponse);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TransactionMethodParamsResponse) {
                TransactionMethodParamsResponse transactionMethodParamsResponse = (TransactionMethodParamsResponse) obj;
                return Intrinsics.areEqual(this.ethereumMethod, transactionMethodParamsResponse.ethereumMethod) && Intrinsics.areEqual(this.transferMethodParams, transactionMethodParamsResponse.transferMethodParams) && Intrinsics.areEqual(this.swapMethodParams, transactionMethodParamsResponse.swapMethodParams) && Intrinsics.areEqual(this.approveMethodParams, transactionMethodParamsResponse.approveMethodParams);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.ethereumMethod.hashCode() * 31;
            TransferMethodParamsResponse transferMethodParamsResponse = this.transferMethodParams;
            int hashCode2 = (hashCode + (transferMethodParamsResponse == null ? 0 : transferMethodParamsResponse.hashCode())) * 31;
            SwapMethodParamsResponse swapMethodParamsResponse = this.swapMethodParams;
            int hashCode3 = (hashCode2 + (swapMethodParamsResponse == null ? 0 : swapMethodParamsResponse.hashCode())) * 31;
            ApproveMethodParamsResponse approveMethodParamsResponse = this.approveMethodParams;
            return hashCode3 + (approveMethodParamsResponse != null ? approveMethodParamsResponse.hashCode() : 0);
        }

        public String toString() {
            return "TransactionMethodParamsResponse(ethereumMethod=" + this.ethereumMethod + ", transferMethodParams=" + this.transferMethodParams + ", swapMethodParams=" + this.swapMethodParams + ", approveMethodParams=" + this.approveMethodParams + ')';
        }

        public TransactionMethodParamsResponse(String ethereumMethod, TransferMethodParamsResponse transferMethodParamsResponse, SwapMethodParamsResponse swapMethodParamsResponse, ApproveMethodParamsResponse approveMethodParamsResponse) {
            Intrinsics.checkNotNullParameter(ethereumMethod, "ethereumMethod");
            this.ethereumMethod = ethereumMethod;
            this.transferMethodParams = transferMethodParamsResponse;
            this.swapMethodParams = swapMethodParamsResponse;
            this.approveMethodParams = approveMethodParamsResponse;
        }

        public final String getEthereumMethod() {
            return this.ethereumMethod;
        }

        public final TransferMethodParamsResponse getTransferMethodParams() {
            return this.transferMethodParams;
        }

        public final SwapMethodParamsResponse getSwapMethodParams() {
            return this.swapMethodParams;
        }

        public final ApproveMethodParamsResponse getApproveMethodParams() {
            return this.approveMethodParams;
        }

        /* compiled from: GetBoostTransactionDataResponse.kt */
        /* loaded from: classes3.dex */
        public static final class TransferMethodParamsResponse {
            private final String contractAddress;
            private final String from;

            /* renamed from: to */
            private final String f303to;
            private final String value;

            public static /* synthetic */ TransferMethodParamsResponse copy$default(TransferMethodParamsResponse transferMethodParamsResponse, String str, String str2, String str3, String str4, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = transferMethodParamsResponse.from;
                }
                if ((i & 2) != 0) {
                    str2 = transferMethodParamsResponse.f303to;
                }
                if ((i & 4) != 0) {
                    str3 = transferMethodParamsResponse.value;
                }
                if ((i & 8) != 0) {
                    str4 = transferMethodParamsResponse.contractAddress;
                }
                return transferMethodParamsResponse.copy(str, str2, str3, str4);
            }

            public final String component1() {
                return this.from;
            }

            public final String component2() {
                return this.f303to;
            }

            public final String component3() {
                return this.value;
            }

            public final String component4() {
                return this.contractAddress;
            }

            public final TransferMethodParamsResponse copy(String from, String to, String value, String str) {
                Intrinsics.checkNotNullParameter(from, "from");
                Intrinsics.checkNotNullParameter(to, "to");
                Intrinsics.checkNotNullParameter(value, "value");
                return new TransferMethodParamsResponse(from, to, value, str);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof TransferMethodParamsResponse) {
                    TransferMethodParamsResponse transferMethodParamsResponse = (TransferMethodParamsResponse) obj;
                    return Intrinsics.areEqual(this.from, transferMethodParamsResponse.from) && Intrinsics.areEqual(this.f303to, transferMethodParamsResponse.f303to) && Intrinsics.areEqual(this.value, transferMethodParamsResponse.value) && Intrinsics.areEqual(this.contractAddress, transferMethodParamsResponse.contractAddress);
                }
                return false;
            }

            public int hashCode() {
                int hashCode = ((((this.from.hashCode() * 31) + this.f303to.hashCode()) * 31) + this.value.hashCode()) * 31;
                String str = this.contractAddress;
                return hashCode + (str == null ? 0 : str.hashCode());
            }

            public String toString() {
                return "TransferMethodParamsResponse(from=" + this.from + ", to=" + this.f303to + ", value=" + this.value + ", contractAddress=" + this.contractAddress + ')';
            }

            public TransferMethodParamsResponse(String from, String to, String value, String str) {
                Intrinsics.checkNotNullParameter(from, "from");
                Intrinsics.checkNotNullParameter(to, "to");
                Intrinsics.checkNotNullParameter(value, "value");
                this.from = from;
                this.f303to = to;
                this.value = value;
                this.contractAddress = str;
            }

            public final String getFrom() {
                return this.from;
            }

            public final String getTo() {
                return this.f303to;
            }

            public final String getValue() {
                return this.value;
            }

            public final String getContractAddress() {
                return this.contractAddress;
            }
        }

        /* compiled from: GetBoostTransactionDataResponse.kt */
        /* loaded from: classes3.dex */
        public static final class SwapMethodParamsResponse {
            private final String amountBound;
            private final String amountIn;
            private final String amountOut;
            private final String callData;
            private final int deadlineMinutes;
            private final BigDecimal executionPrice;
            private final String inputCryptoTokenCode;
            private final String outputCryptoTokenCode;
            private final List<String> path;
            private final String quoteId;
            private final String swapMethod;
            private final TransactionParamsResponse transactionParams;
            private final String uniswapContractAddress;
            private final String value;

            public final String component1() {
                return this.quoteId;
            }

            public final List<String> component10() {
                return this.path;
            }

            public final BigDecimal component11() {
                return this.executionPrice;
            }

            public final int component12() {
                return this.deadlineMinutes;
            }

            public final String component13() {
                return this.value;
            }

            public final String component14() {
                return this.callData;
            }

            public final TransactionParamsResponse component2() {
                return this.transactionParams;
            }

            public final String component3() {
                return this.inputCryptoTokenCode;
            }

            public final String component4() {
                return this.outputCryptoTokenCode;
            }

            public final String component5() {
                return this.swapMethod;
            }

            public final String component6() {
                return this.uniswapContractAddress;
            }

            public final String component7() {
                return this.amountIn;
            }

            public final String component8() {
                return this.amountOut;
            }

            public final String component9() {
                return this.amountBound;
            }

            public final SwapMethodParamsResponse copy(String quoteId, TransactionParamsResponse transactionParams, String inputCryptoTokenCode, String outputCryptoTokenCode, String swapMethod, String uniswapContractAddress, String amountIn, String amountOut, String amountBound, List<String> path, BigDecimal executionPrice, int i, String str, String str2) {
                Intrinsics.checkNotNullParameter(quoteId, "quoteId");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(inputCryptoTokenCode, "inputCryptoTokenCode");
                Intrinsics.checkNotNullParameter(outputCryptoTokenCode, "outputCryptoTokenCode");
                Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
                Intrinsics.checkNotNullParameter(uniswapContractAddress, "uniswapContractAddress");
                Intrinsics.checkNotNullParameter(amountIn, "amountIn");
                Intrinsics.checkNotNullParameter(amountOut, "amountOut");
                Intrinsics.checkNotNullParameter(amountBound, "amountBound");
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
                return new SwapMethodParamsResponse(quoteId, transactionParams, inputCryptoTokenCode, outputCryptoTokenCode, swapMethod, uniswapContractAddress, amountIn, amountOut, amountBound, path, executionPrice, i, str, str2);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof SwapMethodParamsResponse) {
                    SwapMethodParamsResponse swapMethodParamsResponse = (SwapMethodParamsResponse) obj;
                    return Intrinsics.areEqual(this.quoteId, swapMethodParamsResponse.quoteId) && Intrinsics.areEqual(this.transactionParams, swapMethodParamsResponse.transactionParams) && Intrinsics.areEqual(this.inputCryptoTokenCode, swapMethodParamsResponse.inputCryptoTokenCode) && Intrinsics.areEqual(this.outputCryptoTokenCode, swapMethodParamsResponse.outputCryptoTokenCode) && Intrinsics.areEqual(this.swapMethod, swapMethodParamsResponse.swapMethod) && Intrinsics.areEqual(this.uniswapContractAddress, swapMethodParamsResponse.uniswapContractAddress) && Intrinsics.areEqual(this.amountIn, swapMethodParamsResponse.amountIn) && Intrinsics.areEqual(this.amountOut, swapMethodParamsResponse.amountOut) && Intrinsics.areEqual(this.amountBound, swapMethodParamsResponse.amountBound) && Intrinsics.areEqual(this.path, swapMethodParamsResponse.path) && Intrinsics.areEqual(this.executionPrice, swapMethodParamsResponse.executionPrice) && this.deadlineMinutes == swapMethodParamsResponse.deadlineMinutes && Intrinsics.areEqual(this.value, swapMethodParamsResponse.value) && Intrinsics.areEqual(this.callData, swapMethodParamsResponse.callData);
                }
                return false;
            }

            public int hashCode() {
                int hashCode = ((((((((((((((((((((((this.quoteId.hashCode() * 31) + this.transactionParams.hashCode()) * 31) + this.inputCryptoTokenCode.hashCode()) * 31) + this.outputCryptoTokenCode.hashCode()) * 31) + this.swapMethod.hashCode()) * 31) + this.uniswapContractAddress.hashCode()) * 31) + this.amountIn.hashCode()) * 31) + this.amountOut.hashCode()) * 31) + this.amountBound.hashCode()) * 31) + this.path.hashCode()) * 31) + this.executionPrice.hashCode()) * 31) + this.deadlineMinutes) * 31;
                String str = this.value;
                int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.callData;
                return hashCode2 + (str2 != null ? str2.hashCode() : 0);
            }

            public String toString() {
                return "SwapMethodParamsResponse(quoteId=" + this.quoteId + ", transactionParams=" + this.transactionParams + ", inputCryptoTokenCode=" + this.inputCryptoTokenCode + ", outputCryptoTokenCode=" + this.outputCryptoTokenCode + ", swapMethod=" + this.swapMethod + ", uniswapContractAddress=" + this.uniswapContractAddress + ", amountIn=" + this.amountIn + ", amountOut=" + this.amountOut + ", amountBound=" + this.amountBound + ", path=" + this.path + ", executionPrice=" + this.executionPrice + ", deadlineMinutes=" + this.deadlineMinutes + ", value=" + this.value + ", callData=" + this.callData + ')';
            }

            public SwapMethodParamsResponse(String quoteId, TransactionParamsResponse transactionParams, String inputCryptoTokenCode, String outputCryptoTokenCode, String swapMethod, String uniswapContractAddress, String amountIn, String amountOut, String amountBound, List<String> path, BigDecimal executionPrice, int i, String str, String str2) {
                Intrinsics.checkNotNullParameter(quoteId, "quoteId");
                Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
                Intrinsics.checkNotNullParameter(inputCryptoTokenCode, "inputCryptoTokenCode");
                Intrinsics.checkNotNullParameter(outputCryptoTokenCode, "outputCryptoTokenCode");
                Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
                Intrinsics.checkNotNullParameter(uniswapContractAddress, "uniswapContractAddress");
                Intrinsics.checkNotNullParameter(amountIn, "amountIn");
                Intrinsics.checkNotNullParameter(amountOut, "amountOut");
                Intrinsics.checkNotNullParameter(amountBound, "amountBound");
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
                this.quoteId = quoteId;
                this.transactionParams = transactionParams;
                this.inputCryptoTokenCode = inputCryptoTokenCode;
                this.outputCryptoTokenCode = outputCryptoTokenCode;
                this.swapMethod = swapMethod;
                this.uniswapContractAddress = uniswapContractAddress;
                this.amountIn = amountIn;
                this.amountOut = amountOut;
                this.amountBound = amountBound;
                this.path = path;
                this.executionPrice = executionPrice;
                this.deadlineMinutes = i;
                this.value = str;
                this.callData = str2;
            }

            public final String getQuoteId() {
                return this.quoteId;
            }

            public final TransactionParamsResponse getTransactionParams() {
                return this.transactionParams;
            }

            public final String getInputCryptoTokenCode() {
                return this.inputCryptoTokenCode;
            }

            public final String getOutputCryptoTokenCode() {
                return this.outputCryptoTokenCode;
            }

            public final String getSwapMethod() {
                return this.swapMethod;
            }

            public final String getUniswapContractAddress() {
                return this.uniswapContractAddress;
            }

            public final String getAmountIn() {
                return this.amountIn;
            }

            public final String getAmountOut() {
                return this.amountOut;
            }

            public final String getAmountBound() {
                return this.amountBound;
            }

            public final List<String> getPath() {
                return this.path;
            }

            public final BigDecimal getExecutionPrice() {
                return this.executionPrice;
            }

            public final int getDeadlineMinutes() {
                return this.deadlineMinutes;
            }

            public final String getValue() {
                return this.value;
            }

            public final String getCallData() {
                return this.callData;
            }
        }

        /* compiled from: GetBoostTransactionDataResponse.kt */
        /* loaded from: classes3.dex */
        public static final class ApproveMethodParamsResponse {
            private final String cryptoTokenCode;
            private final String spenderAddress;
            private final String tokenContractAddress;
            private final String value;

            public static /* synthetic */ ApproveMethodParamsResponse copy$default(ApproveMethodParamsResponse approveMethodParamsResponse, String str, String str2, String str3, String str4, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = approveMethodParamsResponse.cryptoTokenCode;
                }
                if ((i & 2) != 0) {
                    str2 = approveMethodParamsResponse.tokenContractAddress;
                }
                if ((i & 4) != 0) {
                    str3 = approveMethodParamsResponse.spenderAddress;
                }
                if ((i & 8) != 0) {
                    str4 = approveMethodParamsResponse.value;
                }
                return approveMethodParamsResponse.copy(str, str2, str3, str4);
            }

            public final String component1() {
                return this.cryptoTokenCode;
            }

            public final String component2() {
                return this.tokenContractAddress;
            }

            public final String component3() {
                return this.spenderAddress;
            }

            public final String component4() {
                return this.value;
            }

            public final ApproveMethodParamsResponse copy(String cryptoTokenCode, String tokenContractAddress, String spenderAddress, String value) {
                Intrinsics.checkNotNullParameter(cryptoTokenCode, "cryptoTokenCode");
                Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
                Intrinsics.checkNotNullParameter(spenderAddress, "spenderAddress");
                Intrinsics.checkNotNullParameter(value, "value");
                return new ApproveMethodParamsResponse(cryptoTokenCode, tokenContractAddress, spenderAddress, value);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof ApproveMethodParamsResponse) {
                    ApproveMethodParamsResponse approveMethodParamsResponse = (ApproveMethodParamsResponse) obj;
                    return Intrinsics.areEqual(this.cryptoTokenCode, approveMethodParamsResponse.cryptoTokenCode) && Intrinsics.areEqual(this.tokenContractAddress, approveMethodParamsResponse.tokenContractAddress) && Intrinsics.areEqual(this.spenderAddress, approveMethodParamsResponse.spenderAddress) && Intrinsics.areEqual(this.value, approveMethodParamsResponse.value);
                }
                return false;
            }

            public int hashCode() {
                return (((((this.cryptoTokenCode.hashCode() * 31) + this.tokenContractAddress.hashCode()) * 31) + this.spenderAddress.hashCode()) * 31) + this.value.hashCode();
            }

            public String toString() {
                return "ApproveMethodParamsResponse(cryptoTokenCode=" + this.cryptoTokenCode + ", tokenContractAddress=" + this.tokenContractAddress + ", spenderAddress=" + this.spenderAddress + ", value=" + this.value + ')';
            }

            public ApproveMethodParamsResponse(String cryptoTokenCode, String tokenContractAddress, String spenderAddress, String value) {
                Intrinsics.checkNotNullParameter(cryptoTokenCode, "cryptoTokenCode");
                Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
                Intrinsics.checkNotNullParameter(spenderAddress, "spenderAddress");
                Intrinsics.checkNotNullParameter(value, "value");
                this.cryptoTokenCode = cryptoTokenCode;
                this.tokenContractAddress = tokenContractAddress;
                this.spenderAddress = spenderAddress;
                this.value = value;
            }

            public final String getCryptoTokenCode() {
                return this.cryptoTokenCode;
            }

            public final String getTokenContractAddress() {
                return this.tokenContractAddress;
            }

            public final String getSpenderAddress() {
                return this.spenderAddress;
            }

            public final String getValue() {
                return this.value;
            }
        }
    }
}
