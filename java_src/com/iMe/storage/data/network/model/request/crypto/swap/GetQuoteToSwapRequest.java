package com.iMe.storage.data.network.model.request.crypto.swap;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetQuoteToSwapRequest.kt */
/* loaded from: classes3.dex */
public final class GetQuoteToSwapRequest {
    private final String amount;
    private final String defiProtocol;
    private final String inputCryptoTokenCode;
    private final String networkType;
    private final String outputCryptoTokenCode;
    private final String outputNetworkType;
    private final float slippageTolerance;
    private final int tradeType;

    public final String component1() {
        return this.inputCryptoTokenCode;
    }

    public final String component2() {
        return this.outputCryptoTokenCode;
    }

    public final String component3() {
        return this.amount;
    }

    public final int component4() {
        return this.tradeType;
    }

    public final float component5() {
        return this.slippageTolerance;
    }

    public final String component6() {
        return this.defiProtocol;
    }

    public final String component7() {
        return this.networkType;
    }

    public final String component8() {
        return this.outputNetworkType;
    }

    public final GetQuoteToSwapRequest copy(String inputCryptoTokenCode, String outputCryptoTokenCode, String amount, int i, float f, String defiProtocol, String networkType, String str) {
        Intrinsics.checkNotNullParameter(inputCryptoTokenCode, "inputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(outputCryptoTokenCode, "outputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetQuoteToSwapRequest(inputCryptoTokenCode, outputCryptoTokenCode, amount, i, f, defiProtocol, networkType, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetQuoteToSwapRequest) {
            GetQuoteToSwapRequest getQuoteToSwapRequest = (GetQuoteToSwapRequest) obj;
            return Intrinsics.areEqual(this.inputCryptoTokenCode, getQuoteToSwapRequest.inputCryptoTokenCode) && Intrinsics.areEqual(this.outputCryptoTokenCode, getQuoteToSwapRequest.outputCryptoTokenCode) && Intrinsics.areEqual(this.amount, getQuoteToSwapRequest.amount) && this.tradeType == getQuoteToSwapRequest.tradeType && Float.compare(this.slippageTolerance, getQuoteToSwapRequest.slippageTolerance) == 0 && Intrinsics.areEqual(this.defiProtocol, getQuoteToSwapRequest.defiProtocol) && Intrinsics.areEqual(this.networkType, getQuoteToSwapRequest.networkType) && Intrinsics.areEqual(this.outputNetworkType, getQuoteToSwapRequest.outputNetworkType);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.inputCryptoTokenCode.hashCode() * 31) + this.outputCryptoTokenCode.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.tradeType) * 31) + Float.floatToIntBits(this.slippageTolerance)) * 31) + this.defiProtocol.hashCode()) * 31) + this.networkType.hashCode()) * 31;
        String str = this.outputNetworkType;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "GetQuoteToSwapRequest(inputCryptoTokenCode=" + this.inputCryptoTokenCode + ", outputCryptoTokenCode=" + this.outputCryptoTokenCode + ", amount=" + this.amount + ", tradeType=" + this.tradeType + ", slippageTolerance=" + this.slippageTolerance + ", defiProtocol=" + this.defiProtocol + ", networkType=" + this.networkType + ", outputNetworkType=" + this.outputNetworkType + ')';
    }

    public GetQuoteToSwapRequest(String inputCryptoTokenCode, String outputCryptoTokenCode, String amount, int i, float f, String defiProtocol, String networkType, String str) {
        Intrinsics.checkNotNullParameter(inputCryptoTokenCode, "inputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(outputCryptoTokenCode, "outputCryptoTokenCode");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.inputCryptoTokenCode = inputCryptoTokenCode;
        this.outputCryptoTokenCode = outputCryptoTokenCode;
        this.amount = amount;
        this.tradeType = i;
        this.slippageTolerance = f;
        this.defiProtocol = defiProtocol;
        this.networkType = networkType;
        this.outputNetworkType = str;
    }

    public final String getInputCryptoTokenCode() {
        return this.inputCryptoTokenCode;
    }

    public final String getOutputCryptoTokenCode() {
        return this.outputCryptoTokenCode;
    }

    public final String getAmount() {
        return this.amount;
    }

    public final int getTradeType() {
        return this.tradeType;
    }

    public final float getSlippageTolerance() {
        return this.slippageTolerance;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getOutputNetworkType() {
        return this.outputNetworkType;
    }
}
