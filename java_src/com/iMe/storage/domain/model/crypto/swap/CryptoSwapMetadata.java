package com.iMe.storage.domain.model.crypto.swap;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.swap.SwapMethod;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoSwapMetadata.kt */
/* loaded from: classes4.dex */
public final class CryptoSwapMetadata {
    private final BigInteger amountBound;
    private final BigDecimal amountIn;
    private final BigDecimal amountOut;
    private final String callData;
    private final String contractAddress;
    private final SwapProtocol defiProtocol;
    private final BigDecimal executionPrice;
    private final TokenDetailed feeToken;
    private final TokenDetailed inputToken;
    private final TokenDetailed outputToken;
    private final List<String> path;
    private final String quoteId;
    private final SwapMethod swapMethod;
    private final TransactionParams.Ether transactionParams;
    private final BigInteger value;

    public final TransactionParams.Ether component1() {
        return this.transactionParams;
    }

    public final List<String> component10() {
        return this.path;
    }

    public final BigDecimal component11() {
        return this.executionPrice;
    }

    public final SwapProtocol component12() {
        return this.defiProtocol;
    }

    public final TokenDetailed component13() {
        return this.feeToken;
    }

    public final String component14() {
        return this.callData;
    }

    public final BigInteger component15() {
        return this.value;
    }

    public final String component2() {
        return this.quoteId;
    }

    public final TokenDetailed component3() {
        return this.inputToken;
    }

    public final TokenDetailed component4() {
        return this.outputToken;
    }

    public final String component5() {
        return this.contractAddress;
    }

    public final SwapMethod component6() {
        return this.swapMethod;
    }

    public final BigDecimal component7() {
        return this.amountIn;
    }

    public final BigDecimal component8() {
        return this.amountOut;
    }

    public final BigInteger component9() {
        return this.amountBound;
    }

    public final CryptoSwapMetadata copy(TransactionParams.Ether transactionParams, String quoteId, TokenDetailed inputToken, TokenDetailed outputToken, String str, SwapMethod swapMethod, BigDecimal amountIn, BigDecimal amountOut, BigInteger amountBound, List<String> path, BigDecimal executionPrice, SwapProtocol defiProtocol, TokenDetailed feeToken, String callData, BigInteger value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(callData, "callData");
        Intrinsics.checkNotNullParameter(value, "value");
        return new CryptoSwapMetadata(transactionParams, quoteId, inputToken, outputToken, str, swapMethod, amountIn, amountOut, amountBound, path, executionPrice, defiProtocol, feeToken, callData, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoSwapMetadata) {
            CryptoSwapMetadata cryptoSwapMetadata = (CryptoSwapMetadata) obj;
            return Intrinsics.areEqual(this.transactionParams, cryptoSwapMetadata.transactionParams) && Intrinsics.areEqual(this.quoteId, cryptoSwapMetadata.quoteId) && Intrinsics.areEqual(this.inputToken, cryptoSwapMetadata.inputToken) && Intrinsics.areEqual(this.outputToken, cryptoSwapMetadata.outputToken) && Intrinsics.areEqual(this.contractAddress, cryptoSwapMetadata.contractAddress) && this.swapMethod == cryptoSwapMetadata.swapMethod && Intrinsics.areEqual(this.amountIn, cryptoSwapMetadata.amountIn) && Intrinsics.areEqual(this.amountOut, cryptoSwapMetadata.amountOut) && Intrinsics.areEqual(this.amountBound, cryptoSwapMetadata.amountBound) && Intrinsics.areEqual(this.path, cryptoSwapMetadata.path) && Intrinsics.areEqual(this.executionPrice, cryptoSwapMetadata.executionPrice) && this.defiProtocol == cryptoSwapMetadata.defiProtocol && Intrinsics.areEqual(this.feeToken, cryptoSwapMetadata.feeToken) && Intrinsics.areEqual(this.callData, cryptoSwapMetadata.callData) && Intrinsics.areEqual(this.value, cryptoSwapMetadata.value);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((this.transactionParams.hashCode() * 31) + this.quoteId.hashCode()) * 31) + this.inputToken.hashCode()) * 31) + this.outputToken.hashCode()) * 31;
        String str = this.contractAddress;
        return ((((((((((((((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.swapMethod.hashCode()) * 31) + this.amountIn.hashCode()) * 31) + this.amountOut.hashCode()) * 31) + this.amountBound.hashCode()) * 31) + this.path.hashCode()) * 31) + this.executionPrice.hashCode()) * 31) + this.defiProtocol.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + this.callData.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return "CryptoSwapMetadata(transactionParams=" + this.transactionParams + ", quoteId=" + this.quoteId + ", inputToken=" + this.inputToken + ", outputToken=" + this.outputToken + ", contractAddress=" + this.contractAddress + ", swapMethod=" + this.swapMethod + ", amountIn=" + this.amountIn + ", amountOut=" + this.amountOut + ", amountBound=" + this.amountBound + ", path=" + this.path + ", executionPrice=" + this.executionPrice + ", defiProtocol=" + this.defiProtocol + ", feeToken=" + this.feeToken + ", callData=" + this.callData + ", value=" + this.value + ')';
    }

    public CryptoSwapMetadata(TransactionParams.Ether transactionParams, String quoteId, TokenDetailed inputToken, TokenDetailed outputToken, String str, SwapMethod swapMethod, BigDecimal amountIn, BigDecimal amountOut, BigInteger amountBound, List<String> path, BigDecimal executionPrice, SwapProtocol defiProtocol, TokenDetailed feeToken, String callData, BigInteger value) {
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(callData, "callData");
        Intrinsics.checkNotNullParameter(value, "value");
        this.transactionParams = transactionParams;
        this.quoteId = quoteId;
        this.inputToken = inputToken;
        this.outputToken = outputToken;
        this.contractAddress = str;
        this.swapMethod = swapMethod;
        this.amountIn = amountIn;
        this.amountOut = amountOut;
        this.amountBound = amountBound;
        this.path = path;
        this.executionPrice = executionPrice;
        this.defiProtocol = defiProtocol;
        this.feeToken = feeToken;
        this.callData = callData;
        this.value = value;
    }

    public final TransactionParams.Ether getTransactionParams() {
        return this.transactionParams;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final TokenDetailed getInputToken() {
        return this.inputToken;
    }

    public final TokenDetailed getOutputToken() {
        return this.outputToken;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }

    public final SwapMethod getSwapMethod() {
        return this.swapMethod;
    }

    public final BigDecimal getAmountIn() {
        return this.amountIn;
    }

    public final BigDecimal getAmountOut() {
        return this.amountOut;
    }

    public final BigInteger getAmountBound() {
        return this.amountBound;
    }

    public final List<String> getPath() {
        return this.path;
    }

    public final BigDecimal getExecutionPrice() {
        return this.executionPrice;
    }

    public final SwapProtocol getDefiProtocol() {
        return this.defiProtocol;
    }

    public final TokenDetailed getFeeToken() {
        return this.feeToken;
    }

    public final String getCallData() {
        return this.callData;
    }

    public final BigInteger getValue() {
        return this.value;
    }
}
