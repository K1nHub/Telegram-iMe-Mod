package com.iMe.storage.data.network.model.response.crypto.swap;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import java.math.BigDecimal;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetQuoteToSwapResponse.kt */
/* loaded from: classes3.dex */
public final class GetQuoteToSwapResponse {
    private final String amountBound;
    private final String amountIn;
    private final String amountOut;
    private final String callData;
    private final BigDecimal executionPrice;
    private final String feeTokenCode;
    private final String inputCryptoTokenCode;
    private final String outputCryptoTokenCode;
    private final List<String> path;
    private final String quoteId;
    private final String spenderContractAddress;
    private final String swapMethod;
    private final TransactionParamsResponse.EVM transactionParams;
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

    public final String component12() {
        return this.feeTokenCode;
    }

    public final String component13() {
        return this.value;
    }

    public final String component14() {
        return this.callData;
    }

    public final TransactionParamsResponse.EVM component2() {
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
        return this.spenderContractAddress;
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

    public final GetQuoteToSwapResponse copy(String quoteId, TransactionParamsResponse.EVM transactionParams, String inputCryptoTokenCode, String outputCryptoTokenCode, String swapMethod, String spenderContractAddress, String amountIn, String amountOut, String amountBound, List<String> path, BigDecimal executionPrice, String feeTokenCode, String str, String str2) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(inputCryptoTokenCode, "inputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(outputCryptoTokenCode, "outputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
        Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        return new GetQuoteToSwapResponse(quoteId, transactionParams, inputCryptoTokenCode, outputCryptoTokenCode, swapMethod, spenderContractAddress, amountIn, amountOut, amountBound, path, executionPrice, feeTokenCode, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetQuoteToSwapResponse) {
            GetQuoteToSwapResponse getQuoteToSwapResponse = (GetQuoteToSwapResponse) obj;
            return Intrinsics.areEqual(this.quoteId, getQuoteToSwapResponse.quoteId) && Intrinsics.areEqual(this.transactionParams, getQuoteToSwapResponse.transactionParams) && Intrinsics.areEqual(this.inputCryptoTokenCode, getQuoteToSwapResponse.inputCryptoTokenCode) && Intrinsics.areEqual(this.outputCryptoTokenCode, getQuoteToSwapResponse.outputCryptoTokenCode) && Intrinsics.areEqual(this.swapMethod, getQuoteToSwapResponse.swapMethod) && Intrinsics.areEqual(this.spenderContractAddress, getQuoteToSwapResponse.spenderContractAddress) && Intrinsics.areEqual(this.amountIn, getQuoteToSwapResponse.amountIn) && Intrinsics.areEqual(this.amountOut, getQuoteToSwapResponse.amountOut) && Intrinsics.areEqual(this.amountBound, getQuoteToSwapResponse.amountBound) && Intrinsics.areEqual(this.path, getQuoteToSwapResponse.path) && Intrinsics.areEqual(this.executionPrice, getQuoteToSwapResponse.executionPrice) && Intrinsics.areEqual(this.feeTokenCode, getQuoteToSwapResponse.feeTokenCode) && Intrinsics.areEqual(this.value, getQuoteToSwapResponse.value) && Intrinsics.areEqual(this.callData, getQuoteToSwapResponse.callData);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((((((this.quoteId.hashCode() * 31) + this.transactionParams.hashCode()) * 31) + this.inputCryptoTokenCode.hashCode()) * 31) + this.outputCryptoTokenCode.hashCode()) * 31) + this.swapMethod.hashCode()) * 31) + this.spenderContractAddress.hashCode()) * 31) + this.amountIn.hashCode()) * 31) + this.amountOut.hashCode()) * 31) + this.amountBound.hashCode()) * 31) + this.path.hashCode()) * 31) + this.executionPrice.hashCode()) * 31) + this.feeTokenCode.hashCode()) * 31;
        String str = this.value;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.callData;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "GetQuoteToSwapResponse(quoteId=" + this.quoteId + ", transactionParams=" + this.transactionParams + ", inputCryptoTokenCode=" + this.inputCryptoTokenCode + ", outputCryptoTokenCode=" + this.outputCryptoTokenCode + ", swapMethod=" + this.swapMethod + ", spenderContractAddress=" + this.spenderContractAddress + ", amountIn=" + this.amountIn + ", amountOut=" + this.amountOut + ", amountBound=" + this.amountBound + ", path=" + this.path + ", executionPrice=" + this.executionPrice + ", feeTokenCode=" + this.feeTokenCode + ", value=" + this.value + ", callData=" + this.callData + ')';
    }

    public GetQuoteToSwapResponse(String quoteId, TransactionParamsResponse.EVM transactionParams, String inputCryptoTokenCode, String outputCryptoTokenCode, String swapMethod, String spenderContractAddress, String amountIn, String amountOut, String amountBound, List<String> path, BigDecimal executionPrice, String feeTokenCode, String str, String str2) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(inputCryptoTokenCode, "inputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(outputCryptoTokenCode, "outputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
        Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        this.quoteId = quoteId;
        this.transactionParams = transactionParams;
        this.inputCryptoTokenCode = inputCryptoTokenCode;
        this.outputCryptoTokenCode = outputCryptoTokenCode;
        this.swapMethod = swapMethod;
        this.spenderContractAddress = spenderContractAddress;
        this.amountIn = amountIn;
        this.amountOut = amountOut;
        this.amountBound = amountBound;
        this.path = path;
        this.executionPrice = executionPrice;
        this.feeTokenCode = feeTokenCode;
        this.value = str;
        this.callData = str2;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
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

    public final String getSpenderContractAddress() {
        return this.spenderContractAddress;
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

    public final String getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getCallData() {
        return this.callData;
    }
}
