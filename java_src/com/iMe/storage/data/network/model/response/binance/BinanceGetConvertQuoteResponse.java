package com.iMe.storage.data.network.model.response.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceGetConvertQuoteResponse.kt */
/* loaded from: classes3.dex */
public final class BinanceGetConvertQuoteResponse {
    private final String inputAmount;
    private final String inputAssetCode;
    private final String inputAssetShortName;
    private final String outputAmount;
    private final String outputAssetCode;
    private final String outputAssetShortName;
    private final String quoteId;

    public static /* synthetic */ BinanceGetConvertQuoteResponse copy$default(BinanceGetConvertQuoteResponse binanceGetConvertQuoteResponse, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceGetConvertQuoteResponse.quoteId;
        }
        if ((i & 2) != 0) {
            str2 = binanceGetConvertQuoteResponse.inputAssetCode;
        }
        String str8 = str2;
        if ((i & 4) != 0) {
            str3 = binanceGetConvertQuoteResponse.outputAssetCode;
        }
        String str9 = str3;
        if ((i & 8) != 0) {
            str4 = binanceGetConvertQuoteResponse.inputAmount;
        }
        String str10 = str4;
        if ((i & 16) != 0) {
            str5 = binanceGetConvertQuoteResponse.outputAmount;
        }
        String str11 = str5;
        if ((i & 32) != 0) {
            str6 = binanceGetConvertQuoteResponse.inputAssetShortName;
        }
        String str12 = str6;
        if ((i & 64) != 0) {
            str7 = binanceGetConvertQuoteResponse.outputAssetShortName;
        }
        return binanceGetConvertQuoteResponse.copy(str, str8, str9, str10, str11, str12, str7);
    }

    public final String component1() {
        return this.quoteId;
    }

    public final String component2() {
        return this.inputAssetCode;
    }

    public final String component3() {
        return this.outputAssetCode;
    }

    public final String component4() {
        return this.inputAmount;
    }

    public final String component5() {
        return this.outputAmount;
    }

    public final String component6() {
        return this.inputAssetShortName;
    }

    public final String component7() {
        return this.outputAssetShortName;
    }

    public final BinanceGetConvertQuoteResponse copy(String quoteId, String inputAssetCode, String outputAssetCode, String inputAmount, String outputAmount, String inputAssetShortName, String outputAssetShortName) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(inputAssetCode, "inputAssetCode");
        Intrinsics.checkNotNullParameter(outputAssetCode, "outputAssetCode");
        Intrinsics.checkNotNullParameter(inputAmount, "inputAmount");
        Intrinsics.checkNotNullParameter(outputAmount, "outputAmount");
        Intrinsics.checkNotNullParameter(inputAssetShortName, "inputAssetShortName");
        Intrinsics.checkNotNullParameter(outputAssetShortName, "outputAssetShortName");
        return new BinanceGetConvertQuoteResponse(quoteId, inputAssetCode, outputAssetCode, inputAmount, outputAmount, inputAssetShortName, outputAssetShortName);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceGetConvertQuoteResponse) {
            BinanceGetConvertQuoteResponse binanceGetConvertQuoteResponse = (BinanceGetConvertQuoteResponse) obj;
            return Intrinsics.areEqual(this.quoteId, binanceGetConvertQuoteResponse.quoteId) && Intrinsics.areEqual(this.inputAssetCode, binanceGetConvertQuoteResponse.inputAssetCode) && Intrinsics.areEqual(this.outputAssetCode, binanceGetConvertQuoteResponse.outputAssetCode) && Intrinsics.areEqual(this.inputAmount, binanceGetConvertQuoteResponse.inputAmount) && Intrinsics.areEqual(this.outputAmount, binanceGetConvertQuoteResponse.outputAmount) && Intrinsics.areEqual(this.inputAssetShortName, binanceGetConvertQuoteResponse.inputAssetShortName) && Intrinsics.areEqual(this.outputAssetShortName, binanceGetConvertQuoteResponse.outputAssetShortName);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.quoteId.hashCode() * 31) + this.inputAssetCode.hashCode()) * 31) + this.outputAssetCode.hashCode()) * 31) + this.inputAmount.hashCode()) * 31) + this.outputAmount.hashCode()) * 31) + this.inputAssetShortName.hashCode()) * 31) + this.outputAssetShortName.hashCode();
    }

    public String toString() {
        return "BinanceGetConvertQuoteResponse(quoteId=" + this.quoteId + ", inputAssetCode=" + this.inputAssetCode + ", outputAssetCode=" + this.outputAssetCode + ", inputAmount=" + this.inputAmount + ", outputAmount=" + this.outputAmount + ", inputAssetShortName=" + this.inputAssetShortName + ", outputAssetShortName=" + this.outputAssetShortName + ')';
    }

    public BinanceGetConvertQuoteResponse(String quoteId, String inputAssetCode, String outputAssetCode, String inputAmount, String outputAmount, String inputAssetShortName, String outputAssetShortName) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(inputAssetCode, "inputAssetCode");
        Intrinsics.checkNotNullParameter(outputAssetCode, "outputAssetCode");
        Intrinsics.checkNotNullParameter(inputAmount, "inputAmount");
        Intrinsics.checkNotNullParameter(outputAmount, "outputAmount");
        Intrinsics.checkNotNullParameter(inputAssetShortName, "inputAssetShortName");
        Intrinsics.checkNotNullParameter(outputAssetShortName, "outputAssetShortName");
        this.quoteId = quoteId;
        this.inputAssetCode = inputAssetCode;
        this.outputAssetCode = outputAssetCode;
        this.inputAmount = inputAmount;
        this.outputAmount = outputAmount;
        this.inputAssetShortName = inputAssetShortName;
        this.outputAssetShortName = outputAssetShortName;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final String getInputAssetCode() {
        return this.inputAssetCode;
    }

    public final String getOutputAssetCode() {
        return this.outputAssetCode;
    }

    public final String getInputAmount() {
        return this.inputAmount;
    }

    public final String getOutputAmount() {
        return this.outputAmount;
    }

    public final String getInputAssetShortName() {
        return this.inputAssetShortName;
    }

    public final String getOutputAssetShortName() {
        return this.outputAssetShortName;
    }
}
