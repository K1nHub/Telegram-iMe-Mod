package com.iMe.storage.data.network.model.request.crypto.swap;

import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetQuoteToSwapRequest.kt */
/* loaded from: classes4.dex */
public final class GetQuoteToSwapRequest {
    private final String amount;
    private final String defiProtocol;
    private final TokenRequest inputToken;
    private final TokenRequest outputToken;
    private final Float slippageTolerance;
    private final int tradeType;

    public static /* synthetic */ GetQuoteToSwapRequest copy$default(GetQuoteToSwapRequest getQuoteToSwapRequest, String str, TokenRequest tokenRequest, TokenRequest tokenRequest2, String str2, int i, Float f, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = getQuoteToSwapRequest.defiProtocol;
        }
        if ((i2 & 2) != 0) {
            tokenRequest = getQuoteToSwapRequest.inputToken;
        }
        TokenRequest tokenRequest3 = tokenRequest;
        if ((i2 & 4) != 0) {
            tokenRequest2 = getQuoteToSwapRequest.outputToken;
        }
        TokenRequest tokenRequest4 = tokenRequest2;
        if ((i2 & 8) != 0) {
            str2 = getQuoteToSwapRequest.amount;
        }
        String str3 = str2;
        if ((i2 & 16) != 0) {
            i = getQuoteToSwapRequest.tradeType;
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            f = getQuoteToSwapRequest.slippageTolerance;
        }
        return getQuoteToSwapRequest.copy(str, tokenRequest3, tokenRequest4, str3, i3, f);
    }

    public final String component1() {
        return this.defiProtocol;
    }

    public final TokenRequest component2() {
        return this.inputToken;
    }

    public final TokenRequest component3() {
        return this.outputToken;
    }

    public final String component4() {
        return this.amount;
    }

    public final int component5() {
        return this.tradeType;
    }

    public final Float component6() {
        return this.slippageTolerance;
    }

    public final GetQuoteToSwapRequest copy(String defiProtocol, TokenRequest inputToken, TokenRequest outputToken, String amount, int i, Float f) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new GetQuoteToSwapRequest(defiProtocol, inputToken, outputToken, amount, i, f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetQuoteToSwapRequest) {
            GetQuoteToSwapRequest getQuoteToSwapRequest = (GetQuoteToSwapRequest) obj;
            return Intrinsics.areEqual(this.defiProtocol, getQuoteToSwapRequest.defiProtocol) && Intrinsics.areEqual(this.inputToken, getQuoteToSwapRequest.inputToken) && Intrinsics.areEqual(this.outputToken, getQuoteToSwapRequest.outputToken) && Intrinsics.areEqual(this.amount, getQuoteToSwapRequest.amount) && this.tradeType == getQuoteToSwapRequest.tradeType && Intrinsics.areEqual(this.slippageTolerance, getQuoteToSwapRequest.slippageTolerance);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((this.defiProtocol.hashCode() * 31) + this.inputToken.hashCode()) * 31) + this.outputToken.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.tradeType) * 31;
        Float f = this.slippageTolerance;
        return hashCode + (f == null ? 0 : f.hashCode());
    }

    public String toString() {
        return "GetQuoteToSwapRequest(defiProtocol=" + this.defiProtocol + ", inputToken=" + this.inputToken + ", outputToken=" + this.outputToken + ", amount=" + this.amount + ", tradeType=" + this.tradeType + ", slippageTolerance=" + this.slippageTolerance + ')';
    }

    public GetQuoteToSwapRequest(String defiProtocol, TokenRequest inputToken, TokenRequest outputToken, String amount, int i, Float f) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.defiProtocol = defiProtocol;
        this.inputToken = inputToken;
        this.outputToken = outputToken;
        this.amount = amount;
        this.tradeType = i;
        this.slippageTolerance = f;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final TokenRequest getInputToken() {
        return this.inputToken;
    }

    public final TokenRequest getOutputToken() {
        return this.outputToken;
    }

    public final String getAmount() {
        return this.amount;
    }

    public final int getTradeType() {
        return this.tradeType;
    }

    public final Float getSlippageTolerance() {
        return this.slippageTolerance;
    }
}
