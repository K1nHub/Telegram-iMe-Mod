package com.iMe.storage.domain.model.crypto.swap;

import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.wallet.swap.SwapMethod;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoSwapMetadata.kt */
/* loaded from: classes3.dex */
public final class CryptoSwapMetadata {
    private final BigInteger amountBound;
    private final BigDecimal amountIn;
    private final BigDecimal amountOut;
    private final String callData;
    private final String contractAddress;
    private final BigDecimal executionPrice;
    private final TokenCode feeTokenCode;
    private final TokenCode inputTokenCode;
    private final TokenInfo inputTokenInfo;
    private final TokenCode outputTokenCode;
    private final TokenInfo outputTokenInfo;
    private final List<String> path;
    private final String quoteId;
    private final SwapMethod swapMethod;
    private final TransactionParams.Ether transactionParams;
    private final BigInteger value;

    public final String component1() {
        return this.quoteId;
    }

    public final List<String> component10() {
        return this.path;
    }

    public final BigDecimal component11() {
        return this.executionPrice;
    }

    public final TokenCode component12() {
        return this.feeTokenCode;
    }

    public final BigInteger component13() {
        return this.value;
    }

    public final String component14() {
        return this.callData;
    }

    public final TransactionParams.Ether component2() {
        return this.transactionParams;
    }

    public final TokenCode component3() {
        return this.inputTokenCode;
    }

    public final TokenCode component4() {
        return this.outputTokenCode;
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

    public final CryptoSwapMetadata copy(String quoteId, TransactionParams.Ether transactionParams, TokenCode inputTokenCode, TokenCode outputTokenCode, String str, SwapMethod swapMethod, BigDecimal amountIn, BigDecimal amountOut, BigInteger amountBound, List<String> path, BigDecimal executionPrice, TokenCode feeTokenCode, BigInteger value, String callData) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(inputTokenCode, "inputTokenCode");
        Intrinsics.checkNotNullParameter(outputTokenCode, "outputTokenCode");
        Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(callData, "callData");
        return new CryptoSwapMetadata(quoteId, transactionParams, inputTokenCode, outputTokenCode, str, swapMethod, amountIn, amountOut, amountBound, path, executionPrice, feeTokenCode, value, callData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoSwapMetadata) {
            CryptoSwapMetadata cryptoSwapMetadata = (CryptoSwapMetadata) obj;
            return Intrinsics.areEqual(this.quoteId, cryptoSwapMetadata.quoteId) && Intrinsics.areEqual(this.transactionParams, cryptoSwapMetadata.transactionParams) && this.inputTokenCode == cryptoSwapMetadata.inputTokenCode && this.outputTokenCode == cryptoSwapMetadata.outputTokenCode && Intrinsics.areEqual(this.contractAddress, cryptoSwapMetadata.contractAddress) && this.swapMethod == cryptoSwapMetadata.swapMethod && Intrinsics.areEqual(this.amountIn, cryptoSwapMetadata.amountIn) && Intrinsics.areEqual(this.amountOut, cryptoSwapMetadata.amountOut) && Intrinsics.areEqual(this.amountBound, cryptoSwapMetadata.amountBound) && Intrinsics.areEqual(this.path, cryptoSwapMetadata.path) && Intrinsics.areEqual(this.executionPrice, cryptoSwapMetadata.executionPrice) && this.feeTokenCode == cryptoSwapMetadata.feeTokenCode && Intrinsics.areEqual(this.value, cryptoSwapMetadata.value) && Intrinsics.areEqual(this.callData, cryptoSwapMetadata.callData);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((this.quoteId.hashCode() * 31) + this.transactionParams.hashCode()) * 31) + this.inputTokenCode.hashCode()) * 31) + this.outputTokenCode.hashCode()) * 31;
        String str = this.contractAddress;
        return ((((((((((((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.swapMethod.hashCode()) * 31) + this.amountIn.hashCode()) * 31) + this.amountOut.hashCode()) * 31) + this.amountBound.hashCode()) * 31) + this.path.hashCode()) * 31) + this.executionPrice.hashCode()) * 31) + this.feeTokenCode.hashCode()) * 31) + this.value.hashCode()) * 31) + this.callData.hashCode();
    }

    public String toString() {
        return "CryptoSwapMetadata(quoteId=" + this.quoteId + ", transactionParams=" + this.transactionParams + ", inputTokenCode=" + this.inputTokenCode + ", outputTokenCode=" + this.outputTokenCode + ", contractAddress=" + this.contractAddress + ", swapMethod=" + this.swapMethod + ", amountIn=" + this.amountIn + ", amountOut=" + this.amountOut + ", amountBound=" + this.amountBound + ", path=" + this.path + ", executionPrice=" + this.executionPrice + ", feeTokenCode=" + this.feeTokenCode + ", value=" + this.value + ", callData=" + this.callData + ')';
    }

    public CryptoSwapMetadata(String quoteId, TransactionParams.Ether transactionParams, TokenCode inputTokenCode, TokenCode outputTokenCode, String str, SwapMethod swapMethod, BigDecimal amountIn, BigDecimal amountOut, BigInteger amountBound, List<String> path, BigDecimal executionPrice, TokenCode feeTokenCode, BigInteger value, String callData) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(transactionParams, "transactionParams");
        Intrinsics.checkNotNullParameter(inputTokenCode, "inputTokenCode");
        Intrinsics.checkNotNullParameter(outputTokenCode, "outputTokenCode");
        Intrinsics.checkNotNullParameter(swapMethod, "swapMethod");
        Intrinsics.checkNotNullParameter(amountIn, "amountIn");
        Intrinsics.checkNotNullParameter(amountOut, "amountOut");
        Intrinsics.checkNotNullParameter(amountBound, "amountBound");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(executionPrice, "executionPrice");
        Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(callData, "callData");
        this.quoteId = quoteId;
        this.transactionParams = transactionParams;
        this.inputTokenCode = inputTokenCode;
        this.outputTokenCode = outputTokenCode;
        this.contractAddress = str;
        this.swapMethod = swapMethod;
        this.amountIn = amountIn;
        this.amountOut = amountOut;
        this.amountBound = amountBound;
        this.path = path;
        this.executionPrice = executionPrice;
        this.feeTokenCode = feeTokenCode;
        this.value = value;
        this.callData = callData;
        TokenInfo.Companion companion = TokenInfo.Companion;
        this.inputTokenInfo = companion.map(inputTokenCode);
        this.outputTokenInfo = companion.map(outputTokenCode);
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final TransactionParams.Ether getTransactionParams() {
        return this.transactionParams;
    }

    public final TokenCode getInputTokenCode() {
        return this.inputTokenCode;
    }

    public final TokenCode getOutputTokenCode() {
        return this.outputTokenCode;
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

    public final TokenCode getFeeTokenCode() {
        return this.feeTokenCode;
    }

    public final BigInteger getValue() {
        return this.value;
    }

    public final String getCallData() {
        return this.callData;
    }

    public final TokenInfo getInputTokenInfo() {
        return this.inputTokenInfo;
    }

    public final TokenInfo getOutputTokenInfo() {
        return this.outputTokenInfo;
    }
}
