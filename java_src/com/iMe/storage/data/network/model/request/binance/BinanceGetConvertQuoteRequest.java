package com.iMe.storage.data.network.model.request.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetConvertQuoteRequest.kt */
/* loaded from: classes4.dex */
public final class BinanceGetConvertQuoteRequest {
    private final String amount;
    private final String inputAssetCode;
    private final String outputAssetCode;
    private final int tradeType;

    public static /* synthetic */ BinanceGetConvertQuoteRequest copy$default(BinanceGetConvertQuoteRequest binanceGetConvertQuoteRequest, String str, String str2, int i, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = binanceGetConvertQuoteRequest.inputAssetCode;
        }
        if ((i2 & 2) != 0) {
            str2 = binanceGetConvertQuoteRequest.outputAssetCode;
        }
        if ((i2 & 4) != 0) {
            i = binanceGetConvertQuoteRequest.tradeType;
        }
        if ((i2 & 8) != 0) {
            str3 = binanceGetConvertQuoteRequest.amount;
        }
        return binanceGetConvertQuoteRequest.copy(str, str2, i, str3);
    }

    public final String component1() {
        return this.inputAssetCode;
    }

    public final String component2() {
        return this.outputAssetCode;
    }

    public final int component3() {
        return this.tradeType;
    }

    public final String component4() {
        return this.amount;
    }

    public final BinanceGetConvertQuoteRequest copy(String inputAssetCode, String outputAssetCode, int i, String amount) {
        Intrinsics.checkNotNullParameter(inputAssetCode, "inputAssetCode");
        Intrinsics.checkNotNullParameter(outputAssetCode, "outputAssetCode");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new BinanceGetConvertQuoteRequest(inputAssetCode, outputAssetCode, i, amount);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceGetConvertQuoteRequest) {
            BinanceGetConvertQuoteRequest binanceGetConvertQuoteRequest = (BinanceGetConvertQuoteRequest) obj;
            return Intrinsics.areEqual(this.inputAssetCode, binanceGetConvertQuoteRequest.inputAssetCode) && Intrinsics.areEqual(this.outputAssetCode, binanceGetConvertQuoteRequest.outputAssetCode) && this.tradeType == binanceGetConvertQuoteRequest.tradeType && Intrinsics.areEqual(this.amount, binanceGetConvertQuoteRequest.amount);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.inputAssetCode.hashCode() * 31) + this.outputAssetCode.hashCode()) * 31) + this.tradeType) * 31) + this.amount.hashCode();
    }

    public String toString() {
        return "BinanceGetConvertQuoteRequest(inputAssetCode=" + this.inputAssetCode + ", outputAssetCode=" + this.outputAssetCode + ", tradeType=" + this.tradeType + ", amount=" + this.amount + ')';
    }

    public BinanceGetConvertQuoteRequest(String inputAssetCode, String outputAssetCode, int i, String amount) {
        Intrinsics.checkNotNullParameter(inputAssetCode, "inputAssetCode");
        Intrinsics.checkNotNullParameter(outputAssetCode, "outputAssetCode");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.inputAssetCode = inputAssetCode;
        this.outputAssetCode = outputAssetCode;
        this.tradeType = i;
        this.amount = amount;
    }

    public final String getInputAssetCode() {
        return this.inputAssetCode;
    }

    public final String getOutputAssetCode() {
        return this.outputAssetCode;
    }

    public final int getTradeType() {
        return this.tradeType;
    }

    public final String getAmount() {
        return this.amount;
    }
}
