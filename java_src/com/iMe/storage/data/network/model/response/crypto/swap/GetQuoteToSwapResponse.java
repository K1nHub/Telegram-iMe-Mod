package com.iMe.storage.data.network.model.response.crypto.swap;

import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import java.math.BigDecimal;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetQuoteToSwapResponse.kt */
/* loaded from: classes4.dex */
public final class GetQuoteToSwapResponse {
    private final String amountBound;
    private final String amountIn;
    private final String amountOut;
    private final String callData;
    private final String defiProtocol;
    private final BigDecimal executionPrice;
    private final TokenDetailedResponse feeToken;
    private final TokenDetailedResponse inputToken;
    private final TokenDetailedResponse outputToken;
    private final List<String> path;
    private final String quoteId;
    private final String spenderContractAddress;
    private final String swapMethod;
    private final TransactionParamsResponse.EVM transactionParams;
    private final String value;

    public final TransactionParamsResponse.EVM component1() {
        return this.transactionParams;
    }

    public final List<String> component10() {
        return this.path;
    }

    public final BigDecimal component11() {
        return this.executionPrice;
    }

    public final String component12() {
        return this.defiProtocol;
    }

    public final TokenDetailedResponse component13() {
        return this.feeToken;
    }

    public final String component14() {
        return this.callData;
    }

    public final String component15() {
        return this.value;
    }

    public final String component2() {
        return this.quoteId;
    }

    public final String component3() {
        return this.spenderContractAddress;
    }

    public final TokenDetailedResponse component4() {
        return this.inputToken;
    }

    public final TokenDetailedResponse component5() {
        return this.outputToken;
    }

    public final String component6() {
        return this.swapMethod;
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

    public final GetQuoteToSwapResponse copy(TransactionParamsResponse.EVM transactionParams, String quoteId, String spenderContractAddress, TokenDetailedResponse inputToken, TokenDetailedResponse outputToken, String str, String amountIn, String amountOut, String amountBound, List<String> list, BigDecimal executionPrice, String defiProtocol, TokenDetailedResponse feeToken, String str2, String str3) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        return new GetQuoteToSwapResponse(transactionParams, quoteId, spenderContractAddress, inputToken, outputToken, str, amountIn, amountOut, amountBound, list, executionPrice, defiProtocol, feeToken, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetQuoteToSwapResponse) {
            GetQuoteToSwapResponse getQuoteToSwapResponse = (GetQuoteToSwapResponse) obj;
            return Intrinsics.areEqual(this.transactionParams, getQuoteToSwapResponse.transactionParams) && Intrinsics.areEqual(this.quoteId, getQuoteToSwapResponse.quoteId) && Intrinsics.areEqual(this.spenderContractAddress, getQuoteToSwapResponse.spenderContractAddress) && Intrinsics.areEqual(this.inputToken, getQuoteToSwapResponse.inputToken) && Intrinsics.areEqual(this.outputToken, getQuoteToSwapResponse.outputToken) && Intrinsics.areEqual(this.swapMethod, getQuoteToSwapResponse.swapMethod) && Intrinsics.areEqual(this.amountIn, getQuoteToSwapResponse.amountIn) && Intrinsics.areEqual(this.amountOut, getQuoteToSwapResponse.amountOut) && Intrinsics.areEqual(this.amountBound, getQuoteToSwapResponse.amountBound) && Intrinsics.areEqual(this.path, getQuoteToSwapResponse.path) && Intrinsics.areEqual(this.executionPrice, getQuoteToSwapResponse.executionPrice) && Intrinsics.areEqual(this.defiProtocol, getQuoteToSwapResponse.defiProtocol) && Intrinsics.areEqual(this.feeToken, getQuoteToSwapResponse.feeToken) && Intrinsics.areEqual(this.callData, getQuoteToSwapResponse.callData) && Intrinsics.areEqual(this.value, getQuoteToSwapResponse.value);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((this.transactionParams.hashCode() * 31) + this.quoteId.hashCode()) * 31) + this.spenderContractAddress.hashCode()) * 31) + this.inputToken.hashCode()) * 31) + this.outputToken.hashCode()) * 31;
        String str = this.swapMethod;
        int hashCode2 = (((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.amountIn.hashCode()) * 31) + this.amountOut.hashCode()) * 31) + this.amountBound.hashCode()) * 31;
        List<String> list = this.path;
        int hashCode3 = (((((((hashCode2 + (list == null ? 0 : list.hashCode())) * 31) + this.executionPrice.hashCode()) * 31) + this.defiProtocol.hashCode()) * 31) + this.feeToken.hashCode()) * 31;
        String str2 = this.callData;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.value;
        return hashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "GetQuoteToSwapResponse(transactionParams=" + this.transactionParams + ", quoteId=" + this.quoteId + ", spenderContractAddress=" + this.spenderContractAddress + ", inputToken=" + this.inputToken + ", outputToken=" + this.outputToken + ", swapMethod=" + this.swapMethod + ", amountIn=" + this.amountIn + ", amountOut=" + this.amountOut + ", amountBound=" + this.amountBound + ", path=" + this.path + ", executionPrice=" + this.executionPrice + ", defiProtocol=" + this.defiProtocol + ", feeToken=" + this.feeToken + ", callData=" + this.callData + ", value=" + this.value + ')';
    }

    public GetQuoteToSwapResponse(TransactionParamsResponse.EVM transactionParams, String quoteId, String spenderContractAddress, TokenDetailedResponse inputToken, TokenDetailedResponse outputToken, String str, String amountIn, String amountOut, String amountBound, List<String> list, BigDecimal executionPrice, String defiProtocol, TokenDetailedResponse feeToken, String str2, String str3) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(spenderContractAddress, "spenderContractAddress");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        this.transactionParams = transactionParams;
        this.quoteId = quoteId;
        this.spenderContractAddress = spenderContractAddress;
        this.inputToken = inputToken;
        this.outputToken = outputToken;
        this.swapMethod = str;
        this.amountIn = amountIn;
        this.amountOut = amountOut;
        this.amountBound = amountBound;
        this.path = list;
        this.executionPrice = executionPrice;
        this.defiProtocol = defiProtocol;
        this.feeToken = feeToken;
        this.callData = str2;
        this.value = str3;
    }

    public final TransactionParamsResponse.EVM getTransactionParams() {
        return this.transactionParams;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final String getSpenderContractAddress() {
        return this.spenderContractAddress;
    }

    public final TokenDetailedResponse getInputToken() {
        return this.inputToken;
    }

    public final TokenDetailedResponse getOutputToken() {
        return this.outputToken;
    }

    public final String getSwapMethod() {
        return this.swapMethod;
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

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }

    public final String getCallData() {
        return this.callData;
    }

    public final String getValue() {
        return this.value;
    }
}
