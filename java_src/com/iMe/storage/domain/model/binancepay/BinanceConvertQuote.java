package com.iMe.storage.domain.model.binancepay;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceConvertQuote.kt */
/* loaded from: classes3.dex */
public final class BinanceConvertQuote {
    private final double inputAmount;
    private final String inputToken;
    private final String inputTokenShortName;
    private final double outputAmount;
    private final String outputToken;
    private final String outputTokenShortName;
    private final String quoteId;

    public final String component1() {
        return this.quoteId;
    }

    public final double component2() {
        return this.inputAmount;
    }

    public final String component3() {
        return this.inputToken;
    }

    public final double component4() {
        return this.outputAmount;
    }

    public final String component5() {
        return this.outputToken;
    }

    public final String component6() {
        return this.inputTokenShortName;
    }

    public final String component7() {
        return this.outputTokenShortName;
    }

    public final BinanceConvertQuote copy(String quoteId, double d, String inputToken, double d2, String outputToken, String inputTokenShortName, String outputTokenShortName) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(inputTokenShortName, "inputTokenShortName");
        Intrinsics.checkNotNullParameter(outputTokenShortName, "outputTokenShortName");
        return new BinanceConvertQuote(quoteId, d, inputToken, d2, outputToken, inputTokenShortName, outputTokenShortName);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceConvertQuote) {
            BinanceConvertQuote binanceConvertQuote = (BinanceConvertQuote) obj;
            return Intrinsics.areEqual(this.quoteId, binanceConvertQuote.quoteId) && Double.compare(this.inputAmount, binanceConvertQuote.inputAmount) == 0 && Intrinsics.areEqual(this.inputToken, binanceConvertQuote.inputToken) && Double.compare(this.outputAmount, binanceConvertQuote.outputAmount) == 0 && Intrinsics.areEqual(this.outputToken, binanceConvertQuote.outputToken) && Intrinsics.areEqual(this.inputTokenShortName, binanceConvertQuote.inputTokenShortName) && Intrinsics.areEqual(this.outputTokenShortName, binanceConvertQuote.outputTokenShortName);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.quoteId.hashCode() * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.inputAmount)) * 31) + this.inputToken.hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.outputAmount)) * 31) + this.outputToken.hashCode()) * 31) + this.inputTokenShortName.hashCode()) * 31) + this.outputTokenShortName.hashCode();
    }

    public String toString() {
        return "BinanceConvertQuote(quoteId=" + this.quoteId + ", inputAmount=" + this.inputAmount + ", inputToken=" + this.inputToken + ", outputAmount=" + this.outputAmount + ", outputToken=" + this.outputToken + ", inputTokenShortName=" + this.inputTokenShortName + ", outputTokenShortName=" + this.outputTokenShortName + ')';
    }

    public BinanceConvertQuote(String quoteId, double d, String inputToken, double d2, String outputToken, String inputTokenShortName, String outputTokenShortName) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(inputTokenShortName, "inputTokenShortName");
        Intrinsics.checkNotNullParameter(outputTokenShortName, "outputTokenShortName");
        this.quoteId = quoteId;
        this.inputAmount = d;
        this.inputToken = inputToken;
        this.outputAmount = d2;
        this.outputToken = outputToken;
        this.inputTokenShortName = inputTokenShortName;
        this.outputTokenShortName = outputTokenShortName;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final double getInputAmount() {
        return this.inputAmount;
    }

    public final String getInputToken() {
        return this.inputToken;
    }

    public final double getOutputAmount() {
        return this.outputAmount;
    }

    public final String getOutputToken() {
        return this.outputToken;
    }

    public final String getInputTokenShortName() {
        return this.inputTokenShortName;
    }

    public final String getOutputTokenShortName() {
        return this.outputTokenShortName;
    }
}
